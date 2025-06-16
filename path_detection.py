#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Automatic Path Detection for Microscopy Analysis Workflow

This module automatically detects common software installations on macOS
including ImageJ/Fiji and Cellpose environments.
"""

import os
import subprocess
import sys
import json
import logging
from pathlib import Path
from typing import Dict, List, Optional, Tuple
from datetime import datetime

logger = logging.getLogger(__name__)

class PathDetector:
    """Detects and validates software installation paths on macOS."""
    
    def __init__(self):
        self.detection_cache = {}
        
    def detect_imagej_fiji(self) -> Optional[str]:
        """
        Detect ImageJ or Fiji installation on macOS.
        
        Returns:
            Path to ImageJ/Fiji executable or None if not found
        """
        logger.info("Detecting ImageJ/Fiji installation...")
        
        # Common ImageJ/Fiji installation locations on macOS
        potential_paths = [
            # Standard Fiji installations
            "/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx",
            "/Applications/Fiji.app/Contents/MacOS/ImageJ-linux64",
            "/Applications/Fiji.app/ImageJ-macosx",
            
            # Standard ImageJ installations  
            "/Applications/ImageJ.app/Contents/MacOS/JavaApplicationStub",
            "/Applications/ImageJ/ImageJ",
            
            # Homebrew installations
            "/usr/local/bin/ImageJ",
            "/opt/homebrew/bin/ImageJ",
            "/usr/local/Cellar/imagej/*/ImageJ",
            
            # User-specific installations
            os.path.expanduser("~/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx"),
            os.path.expanduser("~/Applications/ImageJ.app/Contents/MacOS/JavaApplicationStub"),
            
            # MacPorts
            "/opt/local/bin/ImageJ"
        ]
        
        # First check cached paths
        for path in potential_paths:
            if "*" in path:
                # Handle glob patterns for version-specific directories
                import glob
                matching_paths = glob.glob(path)
                for match in matching_paths:
                    if self._validate_imagej_path(match):
                        logger.info(f"Found ImageJ/Fiji at: {match}")
                        return match
            else:
                if self._validate_imagej_path(path):
                    logger.info(f"Found ImageJ/Fiji at: {path}")
                    return path
        
        # Try to find via spotlight search
        try:
            # Search for Fiji applications
            result = subprocess.run(
                ["mdfind", "kMDItemDisplayName == 'Fiji'"],
                capture_output=True, text=True, timeout=10
            )
            if result.returncode == 0:
                for app_path in result.stdout.strip().split('\n'):
                    if app_path and app_path.endswith('.app'):
                        # Try common executable paths within the app bundle
                        for exec_subpath in ['Contents/MacOS/ImageJ-macosx', 'ImageJ-macosx']:
                            full_path = os.path.join(app_path, exec_subpath)
                            if self._validate_imagej_path(full_path):
                                logger.info(f"Found Fiji via Spotlight at: {full_path}")
                                return full_path
        except (subprocess.TimeoutExpired, subprocess.SubprocessError) as e:
            logger.debug(f"Spotlight search for Fiji failed: {e}")
        
        # Search for ImageJ applications
        try:
            result = subprocess.run(
                ["mdfind", "kMDItemDisplayName == 'ImageJ'"],
                capture_output=True, text=True, timeout=10
            )
            if result.returncode == 0:
                for app_path in result.stdout.strip().split('\n'):
                    if app_path and app_path.endswith('.app'):
                        for exec_subpath in ['Contents/MacOS/JavaApplicationStub', 'ImageJ']:
                            full_path = os.path.join(app_path, exec_subpath)
                            if self._validate_imagej_path(full_path):
                                logger.info(f"Found ImageJ via Spotlight at: {full_path}")
                                return full_path
        except (subprocess.TimeoutExpired, subprocess.SubprocessError) as e:
            logger.debug(f"Spotlight search for ImageJ failed: {e}")
        
        logger.warning("ImageJ/Fiji not found automatically")
        return None
    
    def _validate_imagej_path(self, path: str) -> bool:
        """
        Validate that a path points to a working ImageJ/Fiji installation.
        
        Args:
            path: Path to ImageJ executable
            
        Returns:
            True if valid, False otherwise
        """
        if not os.path.exists(path):
            return False
            
        if not os.access(path, os.X_OK):
            logger.debug(f"ImageJ path not executable: {path}")
            return False
        
        # Test if we can run ImageJ in headless mode
        try:
            result = subprocess.run(
                [path, "--help"],
                capture_output=True, text=True, timeout=15
            )
            # ImageJ/Fiji should respond to --help or at least run without error for basic validation
            if result.returncode == 0 or "ImageJ" in result.stderr or "Fiji" in result.stderr:
                return True
        except (subprocess.TimeoutExpired, subprocess.SubprocessError, FileNotFoundError) as e:
            logger.debug(f"Failed to validate ImageJ at {path}: {e}")
        
        return False
    
    def detect_cellpose(self) -> Optional[str]:
        """
        Detect Cellpose installation on macOS.
        
        Returns:
            Path to Cellpose Python environment or None if not found
        """
        logger.info("Detecting Cellpose installation...")
        
        # Strategy 0: Check for cellpose_venv in workspace
        workspace_dir = os.getcwd()
        workspace_cellpose_venv = os.path.join(workspace_dir, "cellpose_venv", "bin", "python3")
        logger.info(f"Checking for cellpose_venv at: {workspace_cellpose_venv}")
        
        if os.path.exists(workspace_cellpose_venv):
            logger.info(f"Found cellpose_venv at: {workspace_cellpose_venv}")
            if self._validate_cellpose_in_env(workspace_cellpose_venv):
                logger.info(f"Validated Cellpose in workspace cellpose_venv: {workspace_cellpose_venv}")
                return workspace_cellpose_venv
            else:
                logger.warning(f"Found cellpose_venv but validation failed: {workspace_cellpose_venv}")
        
        # Strategy 1: Check if cellpose is available in current Python environment
        try:
            import cellpose
            python_path = sys.executable
            logger.info(f"Found Cellpose in current Python environment: {python_path}")
            return python_path
        except ImportError:
            pass
        
        # Strategy 2: Check common conda environments
        conda_paths = self._find_conda_environments()
        for env_path in conda_paths:
            if self._validate_cellpose_in_env(env_path):
                logger.info(f"Found Cellpose in conda environment: {env_path}")
                return env_path
        
        # Strategy 3: Check if cellpose command is available in PATH
        try:
            result = subprocess.run(
                ["which", "cellpose"], 
                capture_output=True, text=True
            )
            if result.returncode == 0:
                cellpose_path = result.stdout.strip()
                # Get the Python interpreter from the cellpose script
                python_path = self._get_python_from_cellpose_script(cellpose_path)
                if python_path and self._validate_cellpose_in_env(python_path):
                    logger.info(f"Found Cellpose command at: {cellpose_path} (Python: {python_path})")
                    return python_path
        except subprocess.SubprocessError:
            pass
        
        # Strategy 4: Check common pip installation locations and virtual environments
        common_python_paths = [
            # System Python locations
            "/usr/local/bin/python3",
            "/opt/homebrew/bin/python3",
            "/usr/bin/python3",
            os.path.expanduser("~/.local/bin/python3"),
            
            # Common virtual environment locations
            os.path.expanduser("~/venv/bin/python3"),
            os.path.expanduser("~/.virtualenvs/cellpose/bin/python3"),
            os.path.expanduser("~/.venv/cellpose/bin/python3"),
            
            # Project-specific virtual environments
            os.path.join(os.getcwd(), "cellpose_venv/bin/python3"),
            os.path.join(os.getcwd(), "venv/bin/python3"),
            
            # Homebrew Python locations
            "/opt/homebrew/opt/python@3.11/bin/python3",
            "/opt/homebrew/opt/python@3.10/bin/python3",
            "/opt/homebrew/opt/python@3.9/bin/python3",
            
            # MacPorts Python locations
            "/opt/local/bin/python3",
            "/opt/local/bin/python3.11",
            "/opt/local/bin/python3.10",
            "/opt/local/bin/python3.9"
        ]
        
        for python_path in common_python_paths:
            if self._validate_cellpose_in_env(python_path):
                logger.info(f"Found Cellpose with Python at: {python_path}")
                return python_path
        
        # Strategy 5: Try to find Python environments with cellpose installed
        try:
            # Use pip to find cellpose installations
            result = subprocess.run(
                ["pip", "list", "--format=json"],
                capture_output=True, text=True
            )
            if result.returncode == 0:
                packages = json.loads(result.stdout)
                for package in packages:
                    if package["name"].lower() == "cellpose":
                        # Found cellpose, get the Python path
                        python_path = sys.executable
                        if self._validate_cellpose_in_env(python_path):
                            logger.info(f"Found Cellpose via pip at: {python_path}")
                            return python_path
        except (subprocess.SubprocessError, json.JSONDecodeError):
            pass
        
        logger.warning("Cellpose not found automatically")
        return None
    
    def _find_conda_environments(self) -> List[str]:
        """Find conda environments that might contain Cellpose."""
        conda_envs = []
        
        # Common conda installation locations
        conda_bases = [
            os.path.expanduser("~/anaconda3"),
            os.path.expanduser("~/miniconda3"),
            os.path.expanduser("~/miniforge3"),
            "/usr/local/anaconda3",
            "/usr/local/miniconda3",
            "/opt/anaconda3",
            "/opt/miniconda3"
        ]
        
        for base in conda_bases:
            envs_dir = os.path.join(base, "envs")
            if os.path.exists(envs_dir):
                for env_name in os.listdir(envs_dir):
                    env_path = os.path.join(envs_dir, env_name, "bin", "python")
                    if os.path.exists(env_path):
                        conda_envs.append(env_path)
            
            # Also check the base environment
            base_python = os.path.join(base, "bin", "python")
            if os.path.exists(base_python):
                conda_envs.append(base_python)
        
        return conda_envs
    
    def _validate_cellpose_in_env(self, python_path: str) -> bool:
        """
        Validate that Cellpose is available in a Python environment.
        
        Args:
            python_path: Path to Python executable
            
        Returns:
            True if Cellpose is available, False otherwise
        """
        import subprocess
        import os
        import logging
        logger = logging.getLogger(__name__)

        if not os.path.exists(python_path) or not os.access(python_path, os.X_OK):
            logger.debug(f"Python path does not exist or is not executable: {python_path}")
            return False

        test_script = '''
import sys
try:
    import cellpose
    import torch
    from cellpose import models
    model = models.CellposeModel(gpu=False, model_type='cyto')
    print("Successfully loaded Cellpose model")
    sys.exit(0)
except ImportError as e:
    print(f"Import error: {e}", file=sys.stderr)
    sys.exit(1)
except Exception as e:
    print(f"Error: {e}", file=sys.stderr)
    sys.exit(1)
'''
        try:
            result = subprocess.run(
                [python_path, "-c", test_script],
                capture_output=True,
                text=True,
                timeout=30,
            )
            if result.returncode == 0:
                logger.debug(f"Cellpose validation output: {result.stdout}")
                return True
            else:
                logger.debug(f"Cellpose validation failed: {result.stderr}")
                return False
        except (subprocess.TimeoutExpired, subprocess.SubprocessError) as e:
            logger.debug(f"Failed to validate Cellpose at {python_path}: {e}")
            return False
    
    def _get_python_from_cellpose_script(self, cellpose_path: str) -> Optional[str]:
        """Extract Python path from cellpose script shebang."""
        try:
            with open(cellpose_path, 'r') as f:
                first_line = f.readline().strip()
                if first_line.startswith('#!') and 'python' in first_line:
                    python_path = first_line[2:].strip()
                    if os.path.exists(python_path):
                        return python_path
        except Exception as e:
            logger.debug(f"Failed to extract Python path from {cellpose_path}: {e}")
        return None
    
    def detect_all_paths(self) -> Dict[str, Optional[str]]:
        """
        Detect all required software paths.
        
        Returns:
            Dictionary with detected paths
        """
        logger.info("Starting automatic path detection...")
        
        paths = {
            'imagej_path': self.detect_imagej_fiji(),
            'cellpose_env': self.detect_cellpose(),
            'python_path': sys.executable
        }
        
        # Log detection results
        for software, path in paths.items():
            if path:
                logger.info(f"✓ {software}: {path}")
            else:
                logger.warning(f"✗ {software}: Not found")
        
        return paths
    
    def validate_config_paths(self, config: Dict) -> Dict[str, bool]:
        """
        Validate paths in configuration.
        
        Args:
            config: Configuration dictionary
            
        Returns:
            Dictionary with validation results
        """
        logger.info("Validating configured paths...")
        
        validation_results = {}
        software_config = config.get('software', {})
        
        # Validate ImageJ path
        imagej_path = software_config.get('imagej_path')
        if imagej_path:
            validation_results['imagej_path'] = self._validate_imagej_path(imagej_path)
        else:
            validation_results['imagej_path'] = False
        
        # Validate Cellpose environment
        cellpose_env = software_config.get('cellpose_env')
        if cellpose_env:
            validation_results['cellpose_env'] = self._validate_cellpose_in_env(cellpose_env)
        else:
            validation_results['cellpose_env'] = False
        
        # Validate Python path
        python_path = software_config.get('python_path', sys.executable)
        validation_results['python_path'] = os.path.exists(python_path) and os.access(python_path, os.X_OK)
        
        return validation_results


def detect_and_validate_paths() -> Tuple[Dict[str, Optional[str]], Dict[str, bool]]:
    """
    Convenience function to detect and validate all paths.
    
    Returns:
        Tuple of (detected_paths, validation_results)
    """
    detector = PathDetector()
    detected_paths = detector.detect_all_paths()
    
    # Create a mock config for validation
    config = {'software': detected_paths}
    validation_results = detector.validate_config_paths(config)
    
    return detected_paths, validation_results


if __name__ == "__main__":
    # Test path detection
    logging.basicConfig(level=logging.INFO)
    
    print("Testing automatic path detection...")
    detected_paths, validation_results = detect_and_validate_paths()
    
    print("\nDetection Results:")
    for software, path in detected_paths.items():
        status = "✓" if validation_results.get(software, False) else "✗"
        print(f"{status} {software}: {path or 'Not found'}") 