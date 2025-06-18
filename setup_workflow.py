#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Workflow Setup and Configuration Script

This script sets up the microscopy analysis workflow by:
1. Automatically detecting required software (ImageJ/Fiji, Cellpose)
2. Creating and validating configuration files
3. Performing installation checks
4. Setting up the workspace
"""

import os
import sys
import json
import logging
import argparse
import subprocess
import venv
from pathlib import Path
from typing import Dict, List, Optional
from datetime import datetime

# Import our path detection module
from scripts.path_detection import PathDetector, detect_and_validate_paths

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('WorkflowSetup')

class WorkflowSetup:
    """Handles setup and configuration of the microscopy analysis workflow."""
    
    def __init__(self, workspace_dir: Optional[str] = None):
        """
        Initialize the workflow setup.
        
        Args:
            workspace_dir: Directory where the workflow is located (default: current directory)
        """
        self.workspace_dir = Path(workspace_dir) if workspace_dir else Path.cwd()
        self.config_template_path = self.workspace_dir / "scripts" / "config.template.json"
        self.config_path = self.workspace_dir / "config.json"
        self.detector = PathDetector()
        self.cellpose_venv_path = self.workspace_dir / "cellpose_venv"
        
    def create_virtual_environment(self) -> bool:
        """
        Create and configure the Cellpose virtual environment.
        
        Returns:
            True if successful, False otherwise
        """
        logger.info("Setting up Cellpose virtual environment...")
        
        # Check if virtual environment already exists
        if self.cellpose_venv_path.exists():
            logger.info("Virtual environment already exists")
            return True
        
        try:
            # Create virtual environment
            logger.info("Creating virtual environment...")
            venv.create(self.cellpose_venv_path, with_pip=True)
            
            # Get path to Python interpreter in virtual environment
            if sys.platform == "win32":
                python_path = self.cellpose_venv_path / "Scripts" / "python.exe"
            else:
                python_path = self.cellpose_venv_path / "bin" / "python3"
            
            # Install required packages
            logger.info("Installing required packages...")
            subprocess.run(
                [str(python_path), "-m", "pip", "install", "--upgrade", "pip"],
                check=True
            )
            subprocess.run(
                [str(python_path), "-m", "pip", "install", "numpy", "cellpose"],
                check=True
            )
            
            logger.info("Virtual environment setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Failed to create virtual environment: {e}")
            return False
    
    def check_requirements(self) -> Dict[str, bool]:
        """
        Check if all required software is available.
        
        Returns:
            Dictionary with requirement check results
        """
        logger.info("Checking software requirements...")
        
        requirements = {
            'python': True,  # We're running Python, so this is available
            'imagej_fiji': False,
            'cellpose': False
        }
        
        # Check Python version
        if sys.version_info < (3, 8):
            logger.error(f"Python 3.8+ required, found {sys.version}")
            requirements['python'] = False
        else:
            logger.info(f"✓ Python {sys.version}")
        
        # Create virtual environment if needed
        if not self.cellpose_venv_path.exists():
            if not self.create_virtual_environment():
                logger.error("Failed to create Cellpose virtual environment")
                return requirements
        
        # Detect and validate paths
        detected_paths, validation_results = detect_and_validate_paths()
        
        requirements['imagej_fiji'] = validation_results.get('imagej_path', False)
        requirements['cellpose'] = validation_results.get('cellpose_env', False)
        
        return requirements

    def create_configuration(self, force: bool = False) -> bool:
        """
        Create the workflow configuration file.
        
        Args:
            force: Whether to overwrite existing configuration
            
        Returns:
            True if successful, False otherwise
        """
        logger.info("Creating workflow configuration...")
        
        # Check if config already exists
        if self.config_path.exists() and not force:
            logger.info(f"Configuration already exists at {self.config_path}")
            response = input("Overwrite existing configuration? (y/N): ").strip().lower()
            if response != 'y':
                logger.info("Configuration creation cancelled")
                return False
        
        # Load template
        if not self.config_template_path.exists():
            logger.error(f"Template not found: {self.config_template_path}")
            return False
        
        try:
            with open(self.config_template_path, 'r') as f:
                config = json.load(f)
        except Exception as e:
            logger.error(f"Failed to load template: {e}")
            return False
        
        # Ensure virtual environment exists
        if not self.cellpose_venv_path.exists():
            if not self.create_virtual_environment():
                logger.error("Failed to create Cellpose virtual environment")
                return False
        
        # Get Python interpreter path from virtual environment
        if sys.platform == "win32":
            python_path = self.cellpose_venv_path / "Scripts" / "python.exe"
        else:
            python_path = self.cellpose_venv_path / "bin" / "python3"
        
        # Detect software paths automatically
        logger.info("Detecting software installations...")
        detected_paths, validation_results = detect_and_validate_paths()
        
        # Update config with detected paths
        if 'imagej_path' in detected_paths and detected_paths['imagej_path']:
            config['imagej_path'] = detected_paths['imagej_path']
        if 'cellpose_env' in detected_paths:
            config['cellpose_env'] = str(python_path)
        
        # Interactive setup for missing software
        missing_software = [sw for sw, valid in validation_results.items() if not valid]
        
        if missing_software:
            logger.warning(f"Some required software was not found automatically: {missing_software}")
            print("\n" + "="*60)
            print("MISSING SOFTWARE DETECTED")
            print("="*60)
            
            for software in missing_software:
                self._handle_missing_software(software, config, detected_paths.get(software))
        
        # Save configuration
        try:
            with open(self.config_path, 'w') as f:
                json.dump(config, f, indent=2)
            logger.info(f"Configuration saved to {self.config_path}")
            
            # Print summary
            print("\n" + "="*60)
            print("CONFIGURATION SUMMARY")
            print("="*60)
            print(f"✓ Configuration saved to: {self.config_path}")
            if config.get('imagej_path'):
                print(f"✓ ImageJ/Fiji: {config['imagej_path']}")
            if config.get('cellpose_env'):
                print(f"✓ Cellpose environment: {config['cellpose_env']}")
            
            print(f"✓ Workflow steps: {len(config.get('steps', []))} steps loaded")
            print("\nConfiguration complete! You can now run the workflow.")
            print("Channel selection will be interactive during workflow execution.")
            
            return True
        except Exception as e:
            logger.error(f"Failed to save configuration: {e}")
            return False
    
    def _handle_missing_software(self, software: str, config: Dict, detected_path: Optional[str]):
        """Handle missing software by prompting user for manual path."""
        print(f"\n{software.upper()} NOT FOUND")
        
        if software == 'imagej_path':
            print("ImageJ or Fiji is required for image processing.")
            print("Please install Fiji from: https://fiji.sc/")
            print("Or ImageJ from: https://imagej.nih.gov/ij/download.html")
        elif software == 'cellpose_env':
            print("Cellpose is required for cell segmentation.")
            print("A virtual environment will be created and configured automatically.")
            return
        
        # Ask user if they want to provide a manual path
        manual_path = input(f"Enter path to {software} (or press Enter to skip): ").strip()
        
        if manual_path:
            # Validate the manual path
            if software == 'imagej_path' and self.detector._validate_imagej_path(manual_path):
                config['imagej_path'] = manual_path
                logger.info(f"✓ Manually configured {software}: {manual_path}")
            else:
                logger.warning(f"✗ Invalid path for {software}: {manual_path}")
        else:
            logger.warning(f"Skipping {software} - workflow may not function properly")
    
    def validate_configuration(self) -> bool:
        """
        Validate the current configuration.
        
        Returns:
            True if configuration is valid, False otherwise
        """
        logger.info("Validating configuration...")
        
        if not self.config_path.exists():
            logger.error(f"Configuration file not found: {self.config_path}")
            return False
        
        try:
            with open(self.config_path, 'r') as f:
                config = json.load(f)
        except Exception as e:
            logger.error(f"Failed to load configuration: {e}")
            return False
        
        all_valid = True
        
        # Check required software paths
        required_paths = ['imagej_path', 'cellpose_env']
        
        for path_name in required_paths:
            path = config.get(path_name)
            if not path:
                logger.error(f"Missing required path: {path_name}")
                all_valid = False
                continue
            
            if path_name == 'imagej_path':
                if not self.detector._validate_imagej_path(path):
                    logger.error(f"Invalid ImageJ path: {path}")
                    all_valid = False
                else:
                    logger.info(f"✓ Valid ImageJ path: {path}")
            elif path_name == 'cellpose_env':
                if not self.detector._validate_cellpose_in_env(path):
                    logger.error(f"Invalid Cellpose environment: {path}")
                    all_valid = False
                else:
                    logger.info(f"✓ Valid Cellpose environment: {path}")
        
        # Check workflow steps
        steps = config.get('steps', [])
        if not steps:
            logger.warning("No workflow steps found in configuration")
        else:
            logger.info(f"✓ Found {len(steps)} workflow steps")
        
        return all_valid
    
    def print_configuration_info(self) -> bool:
        """
        Print information about the current configuration.
        
        Returns:
            True if successful, False otherwise
        """
        logger.info("Configuration information...")
        
        if not self.config_path.exists():
            logger.error(f"Configuration file not found: {self.config_path}")
            return False
        
        try:
            with open(self.config_path, 'r') as f:
                config = json.load(f)
        except Exception as e:
            logger.error(f"Failed to load configuration: {e}")
            return False
        
        print("\n" + "="*60)
        print("CURRENT CONFIGURATION")
        print("="*60)
        print(f"Name: {config.get('name', 'Unknown')}")
        print(f"Version: {config.get('version', 'Unknown')}")
        print(f"Description: {config.get('description', 'No description')}")
        
        # Software paths
        print(f"\nSoftware Paths:")
        imagej_path = config.get('imagej_path')
        if imagej_path:
            status = "✓" if self.detector._validate_imagej_path(imagej_path) else "✗"
            print(f"  ImageJ/Fiji: {status} {imagej_path}")
        else:
            print(f"  ImageJ/Fiji: ✗ Not configured")
        
        cellpose_env = config.get('cellpose_env')
        if cellpose_env:
            status = "✓" if self.detector._validate_cellpose_in_env(cellpose_env) else "✗"
            print(f"  Cellpose: {status} {cellpose_env}")
        else:
            print(f"  Cellpose: ✗ Not configured")
        
        # Workflow steps
        steps = config.get('steps', [])
        print(f"\nWorkflow: {len(steps)} steps configured")
        
        if steps:
            print("\nWorkflow Steps:")
            for i, step in enumerate(steps, 1):
                step_type = step.get('type', 'unknown')
                step_name = step.get('name', 'unnamed')
                print(f"  {i:2d}. {step_name} ({step_type})")
        
        return True

def main():
    """Main entry point for the setup script."""
    parser = argparse.ArgumentParser(
        description="Setup and configure the microscopy analysis workflow"
    )
    
    parser.add_argument(
        '--create-config', action='store_true',
        help='Create a new configuration file'
    )
    parser.add_argument(
        '--validate', action='store_true',
        help='Validate the existing configuration'
    )
    parser.add_argument(
        '--info', action='store_true',
        help='Display information about the current configuration'
    )
    parser.add_argument(
        '--force', action='store_true',
        help='Force overwrite of existing configuration'
    )
    parser.add_argument(
        '--workspace', type=str,
        help='Specify workspace directory (default: current directory)'
    )
    
    args = parser.parse_args()
    
    # Create setup instance
    setup = WorkflowSetup(args.workspace)
    
    # If no specific action is requested, show help and check requirements
    if not any([args.create_config, args.validate, args.info]):
        logger.info("Microscopy Analysis Workflow Setup")
        logger.info("=" * 40)
        
        # Check requirements
        requirements = setup.check_requirements()
        
        # Print requirements status
        print("\nRequirements Check:")
        for req, status in requirements.items():
            status_str = "✓" if status else "✗"
            print(f"  {req}: {status_str}")
        
        if all(requirements.values()):
            print("\n✓ All requirements satisfied!")
            print("Run with --create-config to create a configuration file.")
        else:
            print("\n✗ Some requirements are missing.")
            print("Run with --create-config to set up the workflow.")
        
        return 0
    
    # Handle specific actions
    success = True
    
    if args.create_config:
        success = setup.create_configuration(force=args.force)
    
    if args.validate:
        success = setup.validate_configuration() and success
    
    if args.info:
        success = setup.print_configuration_info() and success
    
    return 0 if success else 1

if __name__ == "__main__":
    sys.exit(main()) 