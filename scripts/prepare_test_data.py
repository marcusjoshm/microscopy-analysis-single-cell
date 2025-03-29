#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Prepare Test Data for Workflow Testing

This script creates a test data directory from a previous analysis run,
organizing the data to be used for testing the workflow with manual steps bypassed.
"""

import os
import sys
import argparse
import shutil
import json
import logging
from pathlib import Path

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler("prepare_test_data.log"),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("PrepareTestData")

def copy_directory(source, target):
    """Copy directory contents preserving structure."""
    if not source.exists():
        logger.warning(f"Source directory does not exist: {source}")
        return False
    
    try:
        # Create target directory if it doesn't exist
        os.makedirs(target, exist_ok=True)
        
        # Copy all files in source to target
        for item in source.glob('**/*'):
            if item.is_file():
                # Get relative path
                rel_path = item.relative_to(source)
                # Create destination directory if needed
                dest_dir = target / rel_path.parent
                os.makedirs(dest_dir, exist_ok=True)
                # Copy file
                shutil.copy2(item, dest_dir / item.name)
        
        return True
    except Exception as e:
        logger.error(f"Error copying directory: {e}")
        return False

def prepare_test_data(completed_run_dir, test_data_dir, config_path):
    """
    Prepare test data directory from a completed run.
    
    Args:
        completed_run_dir (str): Path to a directory with a completed workflow run
        test_data_dir (str): Path to create the test data directory
        config_path (str): Path to the workflow configuration file
    
    Returns:
        bool: True if successful, False otherwise
    """
    completed_dir = Path(completed_run_dir).resolve()
    test_dir = Path(test_data_dir).resolve()
    
    # Check if the completed run directory exists and has expected structure
    if not completed_dir.exists() or not completed_dir.is_dir():
        logger.error(f"Completed run directory does not exist: {completed_dir}")
        return False
    
    # Check key directories in the completed run
    required_dirs = ['raw_data', 'preprocessed', 'masks', 'ROIs', 'cells']
    for dir_name in required_dirs:
        if not (completed_dir / dir_name).exists():
            logger.warning(f"Missing expected directory in completed run: {dir_name}")
    
    # Load workflow configuration to identify manual steps
    try:
        with open(config_path, 'r') as f:
            config = json.load(f)
    except Exception as e:
        logger.error(f"Failed to load configuration: {e}")
        return False
    
    # Identify manual and GUI steps from the configuration
    manual_steps = []
    for step in config.get('steps', []):
        if step.get('type') in ['manual', 'gui_application']:
            manual_steps.append(step.get('name'))
    
    logger.info(f"Identified manual/GUI steps: {', '.join(manual_steps)}")
    
    # Create the test data directory
    os.makedirs(test_dir, exist_ok=True)
    
    # Create a mapping of which directories to copy for each manual step
    # This is based on typical workflow structure - adjust as needed
    step_mapping = {
        "select_timepoints": None,  # No data needed
        "select_regions": None,     # No data needed
        "manual_quality_check": {
            "source_dirs": ["preprocessed"],
        },
        "manual_roi_adjustment": {
            "source_dirs": ["ROIs"],
        },
        # Add other manual steps as needed
    }
    
    # Add any manual steps from config that are not in the mapping
    for step in manual_steps:
        if step not in step_mapping:
            logger.warning(f"No mapping defined for manual step: {step}")
            step_mapping[step] = None
    
    # Copy data for each mapped step
    for step, mapping in step_mapping.items():
        if mapping is None:
            continue
        
        for source_dir in mapping.get('source_dirs', []):
            source_path = completed_dir / source_dir
            target_path = test_dir / source_dir
            
            logger.info(f"Copying {source_dir} for step {step}")
            success = copy_directory(source_path, target_path)
            
            if not success:
                logger.warning(f"Failed to copy {source_dir} for step {step}")
    
    # Also copy raw_data as a reference
    logger.info("Copying raw_data for reference")
    copy_directory(completed_dir / "raw_data", test_dir / "raw_data")
    
    # Create metadata file to document the test data
    metadata = {
        "source_directory": str(completed_dir),
        "creation_date": datetime.now().isoformat(),
        "manual_steps": manual_steps,
        "included_directories": [dir_name for dir_name in os.listdir(test_dir) 
                                if os.path.isdir(test_dir / dir_name)]
    }
    
    try:
        with open(test_dir / "test_data_metadata.json", 'w') as f:
            json.dump(metadata, f, indent=2)
    except Exception as e:
        logger.error(f"Failed to write metadata file: {e}")
    
    logger.info(f"Test data preparation complete. Data saved to: {test_dir}")
    return True

def main():
    """Main entry point for the script."""
    parser = argparse.ArgumentParser(description='Prepare Test Data for Workflow Testing')
    
    parser.add_argument('--completed-run', '-c', required=True,
                        help='Path to a directory with a completed workflow run')
    parser.add_argument('--test-data-dir', '-t', required=True,
                        help='Directory to create for the test data')
    parser.add_argument('--config', '-f', required=True,
                        help='Path to workflow configuration file')
    
    args = parser.parse_args()
    
    success = prepare_test_data(
        completed_run_dir=args.completed_run,
        test_data_dir=args.test_data_dir,
        config_path=args.config
    )
    
    if not success:
        logger.error("Test data preparation failed")
        sys.exit(1)
    
    logger.info("Test data preparation completed successfully")

if __name__ == "__main__":
    from datetime import datetime
    main()