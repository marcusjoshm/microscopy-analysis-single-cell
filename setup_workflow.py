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
from pathlib import Path
from typing import Dict, List, Optional
from datetime import datetime
from config_manager import ConfigManager

# Import our path detection module
from path_detection import PathDetector, detect_and_validate_paths

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
        self.config_template_path = self.workspace_dir / "config_new.template.json"
        self.config_path = self.workspace_dir / "config.json"
        self.detector = PathDetector()
        
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
        
        # Load workflow steps from workflow_config.json
        workflow_config_path = self.workspace_dir / "workflow_config.json"
        if workflow_config_path.exists():
            try:
                with open(workflow_config_path, 'r') as f:
                    workflow_config = json.load(f)
                # Copy the entire workflow config structure
                config = workflow_config.copy()
                logger.info("Using workflow steps from workflow_config.json")
            except Exception as e:
                logger.error(f"Failed to load workflow steps: {e}")
        else:
            logger.warning("workflow_config.json not found - workflow steps will not be included")
        
        # Detect software paths automatically
        logger.info("Detecting software installations...")
        detected_paths, validation_results = detect_and_validate_paths()
        
        # Update config with detected paths
        if 'imagej_path' in detected_paths:
            config['imagej_path'] = detected_paths['imagej_path']
        if 'cellpose_env' in detected_paths:
            config['cellpose_env'] = detected_paths['cellpose_env']
        
        # Interactive setup for missing software
        missing_software = [sw for sw, valid in validation_results.items() if not valid]
        
        if missing_software:
            logger.warning(f"Some required software was not found automatically: {missing_software}")
            print("\n" + "="*60)
            print("MISSING SOFTWARE DETECTED")
            print("="*60)
            
            for software in missing_software:
                self._handle_missing_software(software, config, detected_paths[software])
        
        # Save configuration
        try:
            with open(self.config_path, 'w') as f:
                json.dump(config, f, indent=2)
            logger.info(f"Configuration saved to {self.config_path}")
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
            print("Install with: pip install cellpose")
            print("Or: conda install -c conda-forge cellpose")
        
        # Ask user if they want to provide a manual path
        manual_path = input(f"Enter path to {software} (or press Enter to skip): ").strip()
        
        if manual_path:
            # Validate the manual path
            if software == 'imagej_path' and self.detector._validate_imagej_path(manual_path):
                config['software'][software] = manual_path
                logger.info(f"✓ Manually configured {software}: {manual_path}")
            elif software == 'cellpose_env' and self.detector._validate_cellpose_in_env(manual_path):
                config['software'][software] = manual_path
                logger.info(f"✓ Manually configured {software}: {manual_path}")
            else:
                logger.warning(f"✗ Invalid path for {software}: {manual_path}")
        else:
            logger.warning(f"Skipping {software} - workflow may not function properly")
    
    def _customize_system_settings(self, config: Dict):
        """Allow user to customize system settings."""
        print("\n" + "="*60)
        print("SYSTEM SETTINGS")
        print("="*60)
        print("Press Enter to keep default values.")
        
        system_settings = config.get('system', {})
        
        # Max workers
        current_workers = system_settings.get('max_workers', 4)
        workers_input = input(f"Max parallel workers [{current_workers}]: ").strip()
        if workers_input.isdigit():
            system_settings['max_workers'] = int(workers_input)
        
        # Log level
        current_log_level = system_settings.get('log_level', 'INFO')
        log_levels = ['DEBUG', 'INFO', 'WARNING', 'ERROR']
        print(f"Available log levels: {', '.join(log_levels)}")
        log_input = input(f"Log level [{current_log_level}]: ").strip().upper()
        if log_input in log_levels:
            system_settings['log_level'] = log_input
        
        # Workflow settings
        workflow_settings = config.get('workflow_settings', {})
        
        # Default bins
        current_bins = workflow_settings.get('default_bins', 5)
        bins_input = input(f"Default number of bins for cell grouping [{current_bins}]: ").strip()
        if bins_input.isdigit():
            workflow_settings['default_bins'] = int(bins_input)
        
        # Auto-close ImageJ
        current_auto_close = workflow_settings.get('auto_close_imagej', True)
        auto_close_input = input(f"Auto-close ImageJ after processing [{'y' if current_auto_close else 'n'}]: ").strip().lower()
        if auto_close_input in ['y', 'yes', 'true', '1']:
            workflow_settings['auto_close_imagej'] = True
        elif auto_close_input in ['n', 'no', 'false', '0']:
            workflow_settings['auto_close_imagej'] = False
    
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
        
        # Check required paths
        required_paths = ['imagej_path', 'cellpose_env']
        all_valid = True
        
        for path_name in required_paths:
            path_value = config.get(path_name)
            if not path_value:
                logger.info(f"✗ {path_name}: Not configured")
                all_valid = False
            elif path_name == 'imagej_path' and not self.detector._validate_imagej_path(path_value):
                logger.info(f"✗ {path_name}: Invalid path")
                all_valid = False
            elif path_name == 'cellpose_env' and not self.detector._validate_cellpose_in_env(path_value):
                logger.info(f"✗ {path_name}: Invalid path")
                all_valid = False
            else:
                logger.info(f"✓ {path_name}: Valid")
        
        if not all_valid:
            logger.warning("✗ Configuration has issues")
            return False
        
        logger.info("✓ Configuration is valid")
        return True
    
    def run_installation_check(self) -> bool:
        """
        Run a comprehensive installation check.
        
        Returns:
            True if installation is ready, False otherwise
        """
        logger.info("Running installation check...")
        
        print("\n" + "="*60)
        print("MICROSCOPY ANALYSIS WORKFLOW - INSTALLATION CHECK")
        print("="*60)
        
        # Check requirements
        requirements = self.check_requirements()
        
        print(f"\nSOFTWARE REQUIREMENTS:")
        for software, available in requirements.items():
            status = "✓" if available else "✗"
            print(f"{status} {software.replace('_', ' ').title()}")
        
        # Check configuration
        config_valid = False
        if self.config_path.exists():
            config_valid = self.validate_configuration()
        else:
            logger.warning("No configuration file found")
        
        print(f"\nCONFIGURATION:")
        status = "✓" if config_valid else "✗"
        print(f"{status} Configuration file")
        
        # Check workspace
        workspace_items = ['scripts', 'macros', 'workflow_config.json']
        workspace_valid = all((self.workspace_dir / item).exists() for item in workspace_items)
        
        print(f"\nWORKSPACE:")
        status = "✓" if workspace_valid else "✗"
        print(f"{status} Workflow files")
        
        # Overall status
        all_ready = all(requirements.values()) and config_valid and workspace_valid
        
        print(f"\nOVERALL STATUS:")
        if all_ready:
            print("✓ Installation is ready! You can run the workflow.")
        else:
            print("✗ Installation needs attention. See issues above.")
            print("\nTo fix issues:")
            if not all(requirements.values()):
                print("- Install missing software (see requirements above)")
            if not config_valid:
                print("- Run: python setup_workflow.py --create-config")
            if not workspace_valid:
                print("- Ensure you're in the correct workflow directory")
        
        return all_ready
    
    def create_example_workflow_config(self):
        """Create an example workflow configuration."""
        example_config = {
            "name": "Microscopy Single-Cell Analysis Workflow",
            "version": "2.0.0",
            "description": "Complete workflow for analyzing microscopy data with different conditions and timepoints",
            "steps": [
                {
                    "name": "prepare_input_structure",
                    "type": "bash",
                    "path": "scripts/prepare_input_structure.sh",
                    "args": ["{input_dir}"],
                    "description": "Standardize input directory structure for LASX-exported data"
                },
                # Add other steps as needed...
            ]
        }
        
        example_path = self.workspace_dir / "workflow_config_new_example.json"
        
        try:
            with open(example_path, 'w') as f:
                json.dump(example_config, f, indent=2)
            logger.info(f"Created example workflow config: {example_path}")
        except Exception as e:
            logger.error(f"Failed to create example config: {e}")


def main():
    """Main setup function."""
    parser = argparse.ArgumentParser(description='Setup the microscopy analysis workflow')
    
    parser.add_argument('--check', action='store_true',
                        help='Run installation check only (checks requirements, config, and workspace)')
    parser.add_argument('--create-config', action='store_true',
                        help='Create configuration file')
    parser.add_argument('--validate', action='store_true',
                        help='Validate existing configuration file only')
    parser.add_argument('--force', action='store_true',
                        help='Force overwrite existing configuration')
    parser.add_argument('--workspace', type=str,
                        help='Workflow workspace directory (default: current directory)')
    parser.add_argument('--verbose', action='store_true',
                        help='Enable verbose logging')
    
    args = parser.parse_args()
    
    # Set logging level
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)
    
    # Create setup instance
    setup = WorkflowSetup(args.workspace)
    
    success = True
    
    if args.check:
        success = setup.run_installation_check()
    elif args.create_config:
        success = setup.create_configuration(force=args.force)
        if success:
            success = setup.validate_configuration()
    elif args.validate:
        success = setup.validate_configuration()
    else:
        # Full setup process
        print("Setting up microscopy analysis workflow...")
        
        # Run installation check first
        if not setup.run_installation_check():
            print("\nCreating configuration...")
            success = setup.create_configuration(force=args.force)
            if success:
                print("\nRunning final check...")
                success = setup.run_installation_check()
    
    if success:
        print("\n✓ Setup completed successfully!")
        return 0
    else:
        print("\n✗ Setup completed with issues. Please address the problems above.")
        return 1


if __name__ == "__main__":
    sys.exit(main()) 