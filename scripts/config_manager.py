#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Configuration Manager for Microscopy Analysis Workflow

This module provides a unified interface for managing workflow configuration,
including automatic path detection, validation, and configuration updates.
"""

import os
import sys
import json
import logging
from pathlib import Path
from typing import Dict, List, Optional, Any
from datetime import datetime

from path_detection import PathDetector

logger = logging.getLogger(__name__)

class ConfigManager:
    """Manages workflow configuration with automatic path detection."""
    
    def __init__(self, config_path: Optional[str] = None, workspace_dir: Optional[str] = None):
        """
        Initialize the configuration manager.
        
        Args:
            config_path: Path to configuration file (default: config_new.json in workspace)
            workspace_dir: Workspace directory (default: current directory)
        """
        self.workspace_dir = Path(workspace_dir) if workspace_dir else Path.cwd()
        
        # Determine config file paths
        if config_path:
            self.config_path = Path(config_path)
        else:
            # Always use new config format
            self.config_path = self.workspace_dir / "config_new.json"
        
        self.config_template_path = self.workspace_dir / "config.template.json"
        self.detector = PathDetector()
        self._config = None
        self._config_loaded = False
    
    def load_config(self, force_reload: bool = False) -> Dict[str, Any]:
        """
        Load the configuration file.
        
        Args:
            force_reload: Force reload even if already loaded
            
        Returns:
            Configuration dictionary
        """
        if self._config_loaded and not force_reload:
            return self._config
        
        if not self.config_path.exists():
            logger.error(f"Configuration file not found: {self.config_path}")
            logger.info("Run 'python setup_workflow.py --create-config' to create configuration")
            raise FileNotFoundError(f"Configuration file not found: {self.config_path}")
        
        try:
            with open(self.config_path, 'r') as f:
                self._config = json.load(f)
            self._config_loaded = True
            logger.debug(f"Loaded configuration from: {self.config_path}")
            return self._config
        except json.JSONDecodeError as e:
            logger.error(f"Invalid JSON in configuration file: {e}")
            raise
        except Exception as e:
            logger.error(f"Failed to load configuration: {e}")
            raise
    
    def save_config(self, config: Optional[Dict[str, Any]] = None) -> bool:
        """
        Save configuration to file.
        
        Args:
            config: Configuration to save (default: current loaded config)
            
        Returns:
            True if successful, False otherwise
        """
        if config is None:
            config = self._config
        
        if config is None:
            logger.error("No configuration to save")
            return False
        
        try:
            # Ensure parent directory exists
            self.config_path.parent.mkdir(parents=True, exist_ok=True)
            
            with open(self.config_path, 'w') as f:
                json.dump(config, f, indent=2)
            
            logger.info(f"Configuration saved to: {self.config_path}")
            self._config = config
            self._config_loaded = True
            return True
        except Exception as e:
            logger.error(f"Failed to save configuration: {e}")
            return False
    
    def get_software_paths(self) -> Dict[str, Optional[str]]:
        """
        Get software paths from configuration.
        
        Returns:
            Dictionary with software paths
        """
        config = self.load_config()
        return config.get('software', {})
    
    def get_imagej_path(self) -> Optional[str]:
        """Get ImageJ/Fiji path from configuration."""
        software_paths = self.get_software_paths()
        return software_paths.get('imagej_path')
    
    def get_cellpose_env(self) -> Optional[str]:
        """Get Cellpose environment path from configuration."""
        # First check if cellpose_venv exists in the workspace
        cellpose_venv = self.workspace_dir / "cellpose_venv" / "bin" / "python3"
        if cellpose_venv.exists():
            return str(cellpose_venv)
        
        # Fall back to configured path
        software_paths = self.get_software_paths()
        return software_paths.get('cellpose_env')
    
    def get_python_path(self) -> str:
        """Get Python path from configuration, fallback to current Python."""
        software_paths = self.get_software_paths()
        return software_paths.get('python_path', sys.executable)
    
    def get_workflow_settings(self) -> Dict[str, Any]:
        """Get workflow settings from configuration."""
        config = self.load_config()
        return config.get('workflow_settings', {})
    
    def get_system_settings(self) -> Dict[str, Any]:
        """Get system settings from configuration."""
        config = self.load_config()
        return config.get('system', {})
    
    def validate_paths(self) -> Dict[str, bool]:
        """
        Validate all configured paths.
        
        Returns:
            Dictionary with validation results
        """
        config = self.load_config()
        return self.detector.validate_config_paths(config)
    
    def update_paths_from_detection(self, save: bool = True) -> Dict[str, Optional[str]]:
        """
        Update software paths using automatic detection.
        
        Args:
            save: Whether to save the updated configuration
            
        Returns:
            Dictionary with detected paths
        """
        logger.info("Updating paths from automatic detection...")
        
        detected_paths = self.detector.detect_all_paths()
        
        # Load current config
        config = self.load_config()
        
        # Update software paths
        if 'software' not in config:
            config['software'] = {}
        
        config['software'].update(detected_paths)
        
        # Update detection metadata
        if 'detection' not in config:
            config['detection'] = {}
        
        config['detection']['last_detection_date'] = datetime.now().isoformat()
        config['detection']['detection_cache'] = detected_paths
        
        # Save if requested
        if save:
            self.save_config(config)
        
        return detected_paths
    
    def is_configured(self) -> bool:
        """Check if the workflow is properly configured."""
        try:
            config = self.load_config()
            validation_results = self.validate_paths()
            
            # Check that required software is configured and valid
            required_software = ['imagej_path', 'cellpose_env']
            for software in required_software:
                if not validation_results.get(software, False):
                    return False
            
            return True
        except:
            return False
    
    def get_detection_info(self) -> Dict[str, Any]:
        """Get information about the last path detection."""
        config = self.load_config()
        detection_info = config.get('detection', {})
        
        return {
            'last_detection_date': detection_info.get('last_detection_date'),
            'auto_detect_enabled': detection_info.get('auto_detect_paths', True),
            'validation_enabled': detection_info.get('validate_paths', True),
            'cached_paths': detection_info.get('detection_cache', {})
        }
    
    def create_from_template(self, force_new: bool = False) -> bool:
        """
        Create configuration from template.
        
        Args:
            force_new: If True, creates a new config file even if one exists
            
        Returns:
            True if successful, False otherwise
        """
        if not self.config_template_path.exists():
            logger.error(f"Template not found: {self.config_template_path}")
            return False
        
        # If force_new is False and config exists, don't overwrite
        if not force_new and self.config_path.exists():
            logger.warning(f"Configuration file already exists: {self.config_path}")
            return False
        
        try:
            with open(self.config_template_path, 'r') as f:
                config = json.load(f)
            
            # Perform automatic path detection
            detected_paths = self.detector.detect_all_paths()
            config['software'].update(detected_paths)
            config['detection']['last_detection_date'] = datetime.now().isoformat()
            config['detection']['detection_cache'] = detected_paths
            
            return self.save_config(config)
        except Exception as e:
            logger.error(f"Failed to create config from template: {e}")
            return False
    
    def migrate_from_legacy_config(self, legacy_config_path: Optional[str] = None) -> bool:
        """
        Migrate from legacy configuration format.
        
        Args:
            legacy_config_path: Path to legacy config (default: config.json)
            
        Returns:
            True if successful, False otherwise
        """
        if legacy_config_path is None:
            legacy_config_path = self.workspace_dir / "config.json"
        
        legacy_path = Path(legacy_config_path)
        
        if not legacy_path.exists():
            logger.error(f"Legacy config not found: {legacy_path}")
            return False
        
        try:
            # Load legacy config
            with open(legacy_path, 'r') as f:
                legacy_config = json.load(f)
            
            # Create new config from template
            if not self.create_from_template():
                return False
            
            # Load the new config we just created
            new_config = self.load_config()
            
            # Migrate relevant settings from legacy config
            if 'paths' in legacy_config:
                legacy_paths = legacy_config['paths']
                if 'imagej_path' in legacy_paths:
                    new_config['software']['imagej_path'] = legacy_paths['imagej_path']
            
            if 'system' in legacy_config:
                new_config['system'].update(legacy_config['system'])
            
            if 'workflow_settings' in legacy_config:
                new_config['workflow_settings'].update(legacy_config['workflow_settings'])
            
            # Save migrated config
            return self.save_config(new_config)
            
        except Exception as e:
            logger.error(f"Failed to migrate legacy config: {e}")
            return False


# Convenience functions for common operations
def get_config_manager(config_path: Optional[str] = None, workspace_dir: Optional[str] = None) -> ConfigManager:
    """
    Get a ConfigManager instance.
    
    Args:
        config_path: Path to configuration file
        workspace_dir: Workspace directory
        
    Returns:
        ConfigManager instance
    """
    return ConfigManager(config_path, workspace_dir)


def get_imagej_path(config_path: Optional[str] = None) -> Optional[str]:
    """
    Convenience function to get ImageJ path.
    
    Args:
        config_path: Path to configuration file
        
    Returns:
        ImageJ path or None if not found
    """
    try:
        manager = get_config_manager(config_path)
        return manager.get_imagej_path()
    except Exception as e:
        logger.error(f"Failed to get ImageJ path: {e}")
        return None


def get_cellpose_env(config_path: Optional[str] = None) -> Optional[str]:
    """
    Convenience function to get Cellpose environment path.
    
    Args:
        config_path: Path to configuration file
        
    Returns:
        Cellpose environment path or None if not found
    """
    try:
        manager = get_config_manager(config_path)
        return manager.get_cellpose_env()
    except Exception as e:
        logger.error(f"Failed to get Cellpose environment: {e}")
        return None


if __name__ == "__main__":
    # Test configuration management
    logging.basicConfig(level=logging.INFO)
    
    print("Testing configuration management...")
    
    manager = ConfigManager()
    
    try:
        config = manager.load_config()
        print("✓ Configuration loaded successfully")
        
        imagej_path = manager.get_imagej_path()
        cellpose_env = manager.get_cellpose_env()
        
        print(f"ImageJ path: {imagej_path}")
        print(f"Cellpose environment: {cellpose_env}")
        
        validation_results = manager.validate_paths()
        print("\nPath validation:")
        for software, is_valid in validation_results.items():
            status = "✓" if is_valid else "✗"
            print(f"{status} {software}")
            
    except FileNotFoundError:
        print("✗ Configuration file not found")
        print("Run 'python setup_workflow.py --create-config' to create configuration")
    except Exception as e:
        print(f"✗ Error: {e}") 