#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Microscopy Single-Cell Analysis Workflow Orchestrator

This script orchestrates the entire single-cell analysis workflow by combining multiple
scripts and handling transitions between automated and manual steps. It's designed to 
process microscopy data with specific naming conventions (R_X for regions, tXX for 
time points, chXX for channels) and organize analysis results.
"""

import logging
import json
import subprocess
import sys
import time
import os
import shutil
import re
from pathlib import Path
from datetime import datetime
from typing import List, Optional, Set, Dict, Any
import argparse

# Configure logging
logger = logging.getLogger('SingleCellWorkflow')

class WorkflowOrchestrator:
    """Main class to orchestrate the single-cell analysis workflow."""
    
    def __init__(self, config_path, input_dir, output_dir, skip_steps=None, 
                 datatype: Optional[str] = None, 
                 conditions: Optional[List[str]] = None, 
                 channels: Optional[List[str]] = None, 
                 timepoints=None, regions=None, setup_only=False,
                 start_from: Optional[str] = None, bins: int = 5):
        """
        Initialize the workflow orchestrator.
        
        Args:
            config_path (str): Path to the configuration file.
            input_dir (str): Directory containing input data.
            output_dir (str): Directory for output results.
            skip_steps (list): List of step names to skip (optional).
            datatype (str): Specific data type to analyze (optional).
            conditions (list): List of specific conditions to analyze (optional).
            channels (list): List of specific channels to analyze (optional).
            timepoints (list): List of timepoints to analyze (e.g., ["t00", "t03"]).
            regions (list): List of regions to analyze (e.g., ["R_1", "R_2", "R_3"]).
            setup_only (bool): Flag to indicate if only directory setup should be performed.
            start_from (str): Step name to start the workflow from (optional).
            bins (int): Number of bins for grouping cells (default: 5).
        """
        self.config_path = config_path
        self.input_dir = Path(input_dir).resolve()
        self.output_dir = Path(output_dir).resolve()
        self.skip_steps = skip_steps or []
        self.selected_datatype = datatype
        self.selected_conditions = conditions or []
        self.selected_channels = channels if channels is not None else []
        self.timepoints = timepoints or []
        self.regions = regions or []
        self.setup_only = setup_only
        self.start_from = start_from
        self.bins = bins
        
        # --- BEGIN DEBUG LOG ---
        logger.debug(f"__init__: self.selected_conditions = {self.selected_conditions}")
        logger.debug(f"__init__: self.regions = {self.regions}")
        # --- END DEBUG LOG ---
        
        # Load configuration
        self.config = self._load_config()
        self.imagej_path = self.config.get('imagej_path', 'ImageJ') # Get ImageJ path
        
        # Extract experiment metadata from directory structure
        self.experiment_metadata = self._extract_experiment_metadata()
        
        # Create output directory if it doesn't exist
        os.makedirs(self.output_dir, exist_ok=True)
        
        # Store workflow state
        self.workflow_state = {
            'start_time': datetime.now().isoformat(),
            'steps_completed': [],
            'steps_skipped': [],
            'current_step': None,
            'experiment_metadata': self.experiment_metadata,
            'selected_datatype': self.selected_datatype,
            'selected_conditions': self.selected_conditions,
            'selected_channels': self.selected_channels,
            'selected_timepoints': self.timepoints,
            'selected_regions': self.regions,
            'bins': self.bins
        }
        
        # Load or initialize state
        self.state_file = self.output_dir / '.workflow_state.json'
        
    def _extract_experiment_metadata(self):
        """
        Extract experiment metadata from the directory structure.
        This analyzes the microscopy data folders to identify conditions, regions, timepoints, etc.
        
        Returns:
            dict: Dictionary containing experiment metadata
        """
        metadata = {
            'conditions': [],
            'regions': set(),
            'timepoints': set(),
            'channels': set(),
            'region_to_channels': {},  # Map from region name to set of available channels
            'datatype_inferred': 'multi_timepoint'
        }
        
        logger.info(f"Scanning input directory: {self.input_dir}")
        if not self.input_dir.exists():
            logger.error(f"Input directory does not exist: {self.input_dir}")
            return metadata
            
        # List all items in the input directory
        input_items = list(self.input_dir.glob("*"))
        logger.info(f"Found {len(input_items)} items in input directory")
        
        # Count directories to help with debugging
        input_dirs = [item for item in input_items if item.is_dir() and not item.name.startswith('.')]
        logger.info(f"Found {len(input_dirs)} directories in input directory: {[d.name for d in input_dirs]}")
        
        if not input_dirs:
            logger.warning("No subdirectories found in input directory. Expected at least one condition directory.")
            return metadata
        
        # Find all directories in the input directory as potential conditions
        for item in input_dirs:
            condition_name = item.name
            metadata['conditions'].append(condition_name)
            
            # Count TIF files in this condition
            tif_files = list(item.glob("**/*.tif"))
            logger.info(f"Found {len(tif_files)} TIF files in condition '{condition_name}'")
            
            if not tif_files:
                logger.warning(f"No TIF files found in condition directory: {condition_name}")
                continue
                
            # Log some example filenames to help with debugging
            if tif_files:
                examples = [f.name for f in tif_files[:3]]
                logger.info(f"Example filenames: {examples}")
            
            # Process files within each condition to extract regions/timepoints/channels
            for tif_file in tif_files:
                # Extract region and channel from filename
                # Expected format: [RegionName]_Merged_t00_ch00.tif
                filename = tif_file.name
                
                # Extract timepoint
                timepoint_match = re.search(r'(t\d+)', filename)
                if timepoint_match:
                    metadata['timepoints'].add(timepoint_match.group(1))
                
                # Extract channel
                channel_match = re.search(r'(ch\d+)', filename)
                if channel_match:
                    channel = channel_match.group(1)
                    metadata['channels'].add(channel)
                
                # Extract region by looking at what's not a channel or timepoint
                # Remove channel and timepoint parts from filename
                temp_name = re.sub(r'(ch\d+|t\d+)', '', filename)
                # Remove file extension
                temp_name = os.path.splitext(temp_name)[0]
                # Remove any trailing or duplicate underscores from the result and clean it up
                region_name = re.sub(r'_+', '_', temp_name).strip('_')
                if region_name:  # Only add if not empty
                    metadata['regions'].add(region_name)
                    
                    # Add channel to this region's available channels
                    if channel_match:
                        if region_name not in metadata['region_to_channels']:
                            metadata['region_to_channels'][region_name] = set()
                        metadata['region_to_channels'][region_name].add(channel)
        
        # Convert sets to sorted lists for consistent ordering
        metadata['regions'] = sorted(list(metadata['regions']))
        metadata['timepoints'] = sorted(list(metadata['timepoints']))
        metadata['channels'] = sorted(list(metadata['channels']))
        metadata['conditions'] = sorted(metadata['conditions'])
        
        # Convert the region_to_channels sets to sorted lists
        for region in metadata['region_to_channels']:
            metadata['region_to_channels'][region] = sorted(list(metadata['region_to_channels'][region]))
        
        # Infer datatype based on number of timepoints found
        if len(metadata['timepoints']) <= 1:
            metadata['datatype_inferred'] = 'single_timepoint'
        
        # Log the extracted metadata for debugging
        logger.info(f"Extracted metadata:")
        logger.info(f"  Conditions: {metadata['conditions']}")
        logger.info(f"  Regions: {metadata['regions']}")
        logger.info(f"  Timepoints: {metadata['timepoints']}")
        logger.info(f"  Channels: {metadata['channels']}")
        
        return metadata
    
    def setup_base_directories(self):
        """
        Set up just the base directory structure without creating condition-specific subdirectories.
        This creates only the first level of directories needed for the workflow.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up base directory structure")
        
        try:
            # Define the main directories to create (relative to output_dir)
            main_dirs = ['analysis', 'cells', 'combined_masks', 'grouped_cells', 
                        'grouped_masks', 'masks', 'raw_data', 'ROIs', 'macros']
            
            # Create the main directories
            for dir_name in main_dirs:
                (self.output_dir / dir_name).mkdir(parents=True, exist_ok=True)
                
            logger.info("Base directory setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Error setting up base directory structure: {e}", exc_info=True)
            return False
    
    def setup_condition_directories(self):
        """
        Set up directories specific to selected conditions after condition selection step.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up condition-specific directories")
        
        try:
            # Get selected conditions
            conditions_to_process = self.selected_conditions
            
            if not conditions_to_process:
                logger.warning("No conditions selected, skipping condition directory setup")
                return True
                
            logger.info(f"Creating condition directories for: {conditions_to_process}")
            
            # Create condition-level subdirectories in analysis folders
            base_dirs_with_condition_subdir = ['cells', 'combined_masks', 'grouped_cells', 
                                              'grouped_masks', 'masks', 'ROIs']
            
            for base_dir_name in base_dirs_with_condition_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    (base_path / condition_name).mkdir(parents=True, exist_ok=True)
            
            # Create raw_data condition directories and copy files
            input_conditions_found = {item.name for item in self.input_dir.glob("*") if item.is_dir() and not item.name.startswith('.')}
            
            for condition_name in conditions_to_process:
                if condition_name in input_conditions_found:
                    source_cond_dir = self.input_dir / condition_name
                    dest_cond_dir = self.output_dir / "raw_data" / condition_name
                    
                    # Just create the directory but don't copy files yet - that happens after all selections
                else:
                    logger.warning(f"Selected condition '{condition_name}' not found in input directory {self.input_dir}, skipping.")
            
            logger.info("Condition directory setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Error setting up condition directories: {e}", exc_info=True)
            return False
    
    def setup_timepoint_directories(self):
        """
        Set up directories specific to selected timepoints after timepoint selection step.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up timepoint-specific directories")
        
        try:
            # Get selected conditions and timepoints
            conditions_to_process = self.selected_conditions
            timepoints_to_process = self.timepoints
            
            if not conditions_to_process:
                logger.warning("No conditions selected, skipping timepoint directory setup")
                return True
                
            if not timepoints_to_process:
                logger.warning("No timepoints selected, skipping timepoint directory setup")
                return True
                
            logger.info(f"Creating timepoint directories for timepoints: {timepoints_to_process}")
            
            # Create region-timepoint directories structure (even before region selection)
            # We'll create all region-timepoint combinations since we know timepoints now
            base_dirs_with_time_subdir = ['cells', 'grouped_cells', 'grouped_masks', 'masks']
            
            for base_dir_name in base_dirs_with_time_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    condition_path = base_path / condition_name
                    # Create placeholder directories with timepoints
                    # Region selection will fill in the correct region names later
                    for timepoint in timepoints_to_process:
                        # Create a placeholder directory for all timepoints
                        # The actual region_timepoint directories will be created after region selection
                        (condition_path / f"timepoint_{timepoint}").mkdir(parents=True, exist_ok=True)
            
            logger.info("Timepoint directory setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Error setting up timepoint directories: {e}", exc_info=True)
            return False
    
    def setup_analysis_directories(self):
        """
        Set up the final directory structure for analysis based on selected conditions, regions, and timepoints.
        This creates the final region_timepoint directories and copies selected files.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up final analysis directory structure based on selections")
        
        try:
            # Determine target items based on selections or defaults from metadata
            conditions_to_process = self.selected_conditions or self.experiment_metadata.get('conditions', [])
            regions_to_process = self.regions or self.experiment_metadata.get('regions', [])
            timepoints_to_process = self.timepoints or self.experiment_metadata.get('timepoints', [])
            channels_to_process = self.selected_channels or self.experiment_metadata.get('channels', [])

            logger.info(f"Creating directories for Conditions: {conditions_to_process}")
            logger.info(f"Creating directories for Regions: {regions_to_process}")
            logger.info(f"Creating directories for Timepoints: {timepoints_to_process}")
            logger.info(f"Selected Channels: {channels_to_process}")
            
            # Clean up any placeholder timepoint directories
            base_dirs_with_time_subdir = ['cells', 'grouped_cells', 'grouped_masks', 'masks']
            for base_dir_name in base_dirs_with_time_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    condition_path = base_path / condition_name
                    # Remove placeholder timepoint directories
                    for placeholder_dir in condition_path.glob("timepoint_*"):
                        if placeholder_dir.is_dir():
                            try:
                                placeholder_dir.rmdir()  # This will only succeed if empty
                            except:
                                pass  # If not empty, just leave it
            
            # Skip creating region-timepoint subdirectories
            # We're removing this part because the actual directories used by the scripts
            # are created automatically with more specific naming conventions
            # This fixes the issue of having duplicate directories like:
            # - 120min_washout_t00 (created here but never used)
            # - 120min_washout_Merged_ch00_t00_t00 (created by ImageJ and actually used)
            
            # Instead, just ensure the base condition directories exist
            base_dirs_with_region_time_subdir = ['cells', 'grouped_cells', 'grouped_masks', 'masks']
            for base_dir_name in base_dirs_with_region_time_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    condition_path = base_path / condition_name
                    condition_path.mkdir(parents=True, exist_ok=True)
                    
            logger.info("Base condition directories created - specific region directories will be created by the processing scripts")
            
            # --- Copy selected raw data files ---
            logger.info("Copying selected raw data files...")
            input_conditions_found = {item.name for item in self.input_dir.glob("*") if item.is_dir() and not item.name.startswith('.')}
            
            for condition_name in conditions_to_process:
                if condition_name in input_conditions_found:
                    source_cond_dir = self.input_dir / condition_name
                    dest_cond_dir = self.output_dir / "raw_data" / condition_name
                    
                    # Copy only files matching selected regions, timepoints, channels
                    for item in source_cond_dir.glob("**/*"):
                        if item.is_file() and item.suffix.lower() == '.tif':
                            filename = item.name
                            
                            # Check if file matches our selected criteria
                            region_match = any(region in filename for region in regions_to_process)
                            timepoint_match = any(timepoint in filename for timepoint in timepoints_to_process)
                            channel_match = any(channel in filename for channel in channels_to_process) if channels_to_process else True
                            
                            if region_match and timepoint_match and channel_match:
                                rel_path = item.relative_to(source_cond_dir)
                                target_file = dest_cond_dir / rel_path
                                target_file.parent.mkdir(parents=True, exist_ok=True)
                                shutil.copy2(item, target_file)
                                logger.debug(f"Copied file: {item} to {target_file}")
                else:
                     logger.warning(f"Selected condition '{condition_name}' not found in input directory {self.input_dir}, skipping copy.")
            logger.info("Raw data copying complete.")
            
            logger.info("Directory setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Error setting up directory structure: {e}", exc_info=True) # Add traceback
            return False
    
    def _load_config(self):
        """Load the workflow configuration from JSON file."""
        try:
            with open(self.config_path, 'r') as f:
                config = json.load(f)
            return config
        except Exception as e:
            logger.error(f"Failed to load configuration file: {e}")
            sys.exit(1)
    
    def _save_state(self):
        """Save the current workflow state to a JSON file."""
        state_file = self.output_dir / "workflow_state.json"
        try:
            with open(state_file, 'w') as f:
                json.dump(self.workflow_state, f, indent=2)
        except Exception as e:
            logger.error(f"Failed to save workflow state: {e}")
    
    def run_bash_script(self, script_path, args=None):
        """
        Run a bash script with the specified arguments.
        
        Args:
            script_path (str): Path to the bash script.
            args (list): List of arguments to pass to the script.
        
        Returns:
            bool: True if successful, False otherwise.
        """
        cmd = ['/bin/bash', script_path]
        if args:
            cmd.extend(args)
            
        logger.info(f"Running bash script: {script_path}")
        try:
            # Run without capturing stdout/stderr
            process = subprocess.run(
                cmd,
                check=True,
                text=True,
                encoding='utf-8'
            )
            logger.info(f"Bash script completed successfully: {script_path}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"Bash script {script_path} failed with exit code {e.returncode}")
            return False
    
    def run_python_script(self, script_path, args=None):
        """
        Run a Python script with the specified arguments.
        
        Args:
            script_path (str): Path to the Python script.
            args (list): List of arguments to pass to the script.
        
        Returns:
            tuple: (bool, dict) - (success, result_data)
            where result_data may contain additional information like 'needs_more_bins'
        """
        args = args or []
        command = [sys.executable, script_path] + args
        
        logger.info(f"Running Python script: {script_path} with args: {args}") # Log arguments for clarity
        
        try:
            # Run without capturing stdout/stderr
            process = subprocess.run(
                command,
                check=False,  # Don't raise exception so we can handle special exit codes
                text=True,
                encoding='utf-8'
            )
            
            # Check for special exit codes
            if process.returncode == 5:  # Special exit code for "need more bins"
                logger.info(f"Python script {script_path} indicated need for more bins with exit code 5")
                return True, {'needs_more_bins': True}
            
            # Handle normal exit codes
            if process.returncode == 0:
                logger.info(f"Python script completed successfully: {script_path}")
                return True, {}
            else:
                logger.error(f"Python script {script_path} failed with exit code {process.returncode}")
                return False, {}
        except Exception as e:
            logger.error(f"Error executing Python script {script_path}: {e}")
            return False, {}
    
    def run_imagej_macro(self, macro_path, args=None):
        """
        Run an ImageJ macro with the specified arguments.
        
        Args:
            macro_path (str): Path to the ImageJ macro.
            args (str): Arguments to pass to the macro.
        
        Returns:
            bool: True if successful, False otherwise.
        """
        # Get ImageJ path from config
        imagej_path = self.config.get('imagej_path', 'ImageJ')
        
        # Construct absolute path to macro
        abs_macro_path = Path(macro_path)
        if not abs_macro_path.is_absolute():
            abs_macro_path = Path.cwd() / macro_path
        
        # Build command
        cmd = [imagej_path, '--headless', '--console', '--run', str(abs_macro_path)]
        if args:
            cmd.append(f'"{args}"')
        
        # Log the exact command
        logger.info(f"Running ImageJ command: {' '.join(cmd)}")
        
        try:
            # Run without capturing stdout/stderr
            process = subprocess.run(
                cmd,
                check=True,
                text=True,
                encoding='utf-8'
            )
            logger.info(f"ImageJ macro completed successfully: {macro_path}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"ImageJ macro {macro_path} failed with exit code {e.returncode}")
            return False
    
    def launch_gui_application(self, app_path, instructions):
        """
        Launch a GUI application and prompt the user for manual interaction.
        
        Args:
            app_path (str): Path to the GUI application.
            instructions (str): Instructions for the user.
        
        Returns:
            bool: True when the user confirms completion.
        """
        logger.info(f"Launching GUI application: {app_path}")
        
        # Start the GUI application in a new process
        try:
            process = subprocess.Popen([app_path])
            
            # Display instructions to the user
            print("\n" + "="*80)
            print(f"MANUAL STEP REQUIRED: {app_path}")
            print("="*80)
            print(instructions)
            print("\nPress Enter when you have completed this step...")
            input()
            
            # Try to terminate the process (if it's still running)
            try:
                process.terminate()
                time.sleep(1)
                if process.poll() is None:  # If process hasn't terminated
                    process.kill()
            except:
                pass
                
            return True
            
        except Exception as e:
            logger.error(f"Error launching GUI application: {e}")
            return False
    
    def prompt_manual_step(self, step_name, instructions):
        """
        Prompt the user to perform a manual step.
        
        Args:
            step_name (str): Name of the manual step.
            instructions (str): Instructions for the user.
        
        Returns:
            bool: True when the user confirms completion.
        """
        logger.info(f"Manual step required: {step_name}")
        
        # Replace placeholders in instructions
        instructions = instructions.replace('{input_dir}', str(self.input_dir)) \
                               .replace('{output_dir}', str(self.output_dir)) \
                               .replace('{imagej_path}', self.config.get('imagej_path', 'ImageJ'))
        
        # Replace timepoints and regions lists
        instructions = instructions.replace('{conditions_list}', ', '.join(self.experiment_metadata['conditions']))
        instructions = instructions.replace('{channels_list}', ', '.join(self.experiment_metadata['channels']))
        instructions = instructions.replace('{timepoints_list}', ', '.join(self.experiment_metadata.get('timepoints', [])))
        instructions = instructions.replace('{regions_list}', ', '.join(self.experiment_metadata.get('regions', [])))
        
        print("\n" + "="*80)
        print(f"MANUAL STEP REQUIRED: {step_name}")
        print("="*80)
        print(instructions)
        
        # Handle special manual steps that require input
        if step_name == "select_datatype" and not self.selected_datatype:
            available_datatypes = ["single_timepoint", "multi_timepoint"]
            inferred_datatype = self.experiment_metadata.get('datatype_inferred', 'multi_timepoint')
            print(f"\nDetected datatype based on found timepoints: {inferred_datatype}")
            print("Select data type:")
            for i, dt in enumerate(available_datatypes, 1):
                print(f"{i}. {dt}")
            
            user_input = input("Enter selection (number or name, press Enter for detected default): ").strip().lower()
            
            if not user_input:
                self.selected_datatype = inferred_datatype
            elif user_input.isdigit() and 1 <= int(user_input) <= len(available_datatypes):
                self.selected_datatype = available_datatypes[int(user_input) - 1]
            elif user_input in available_datatypes:
                self.selected_datatype = user_input
            else:
                logger.warning(f"Invalid datatype selection '{user_input}'. Using detected default: {inferred_datatype}")
                self.selected_datatype = inferred_datatype
                
            logger.info(f"Selected datatype: {self.selected_datatype}")
            self.workflow_state['selected_datatype'] = self.selected_datatype
        
        elif step_name == "select_condition" and not self.selected_conditions:
            available_items = self.experiment_metadata['conditions']
            item_type = "conditions"
            self._handle_list_selection(available_items, item_type, self.selected_conditions)
            self.workflow_state['selected_conditions'] = self.selected_conditions
            
        elif step_name == "select_timepoints" and not self.timepoints:
            available_items = self.experiment_metadata['timepoints']
            item_type = "timepoints"
            self._handle_list_selection(available_items, item_type, self.timepoints)
            self.workflow_state['selected_timepoints'] = self.timepoints
            
        elif step_name == "select_regions" and not self.regions:
            # Only show regions that exist in the selected conditions
            if not self.selected_conditions:
                logger.warning("No conditions selected. Please select conditions first.")
                return False
                
            # Filter regions based on the selected conditions
            # Get all tif files for selected conditions
            available_regions_by_condition = {}
            for condition in self.selected_conditions:
                condition_dir = self.input_dir / condition
                if condition_dir.exists():
                    # Find all TIF files in this condition
                    tif_files = list(condition_dir.glob("**/*.tif"))
                    # Extract regions from filenames
                    regions_in_condition = set()
                    for tif_file in tif_files:
                        filename = tif_file.name
                        # Extract region by looking at what's not a channel or timepoint
                        # Remove channel and timepoint parts from filename
                        temp_name = re.sub(r'(ch\d+|t\d+)', '', filename)
                        # Remove file extension
                        temp_name = os.path.splitext(temp_name)[0]
                        # Remove any trailing or duplicate underscores from the result and clean it up
                        region_name = re.sub(r'_+', '_', temp_name).strip('_')
                        if region_name:  # Only add if not empty
                            regions_in_condition.add(region_name)
                    available_regions_by_condition[condition] = sorted(list(regions_in_condition))
                else:
                    logger.warning(f"Selected condition '{condition}' directory not found")
                    available_regions_by_condition[condition] = []
            
            # Log the regions available in each condition
            for condition, regions in available_regions_by_condition.items():
                logger.info(f"Regions available in condition '{condition}': {regions}")
            
            # Check if all conditions have the same regions
            first_condition = self.selected_conditions[0]
            first_regions = set(available_regions_by_condition.get(first_condition, []))
            same_regions_across_conditions = True
            
            for condition in self.selected_conditions[1:]:
                other_regions = set(available_regions_by_condition.get(condition, []))
                if first_regions != other_regions:
                    same_regions_across_conditions = False
                    break
            
            if not same_regions_across_conditions:
                logger.error("Selected conditions have different available regions:")
                for condition, regions in available_regions_by_condition.items():
                    logger.error(f"  '{condition}': {regions}")
                logger.error("The workflow cannot proceed with inconsistent regions across conditions.")
                print("\nERROR: Selected conditions have different available regions.")
                print("Please select conditions with the same regions or modify your data structure.")
                print("Press Enter to exit...")
                input()
                sys.exit(1)
                
            # All conditions have the same regions, so we can use the first one's regions list
            available_items = available_regions_by_condition.get(self.selected_conditions[0], [])
            logger.info(f"Available regions for selected conditions: {available_items}")
            
            if not available_items:
                logger.error("No regions found for the selected conditions")
                print("\nERROR: No regions found for the selected conditions.")
                print("Press Enter to exit...")
                input()
                sys.exit(1)
                
            item_type = "regions"
            self._handle_list_selection(available_items, item_type, self.regions)
            self.workflow_state['selected_regions'] = self.regions
            
        elif step_name == "select_channels" and not self.selected_channels:
            # Filter channels based on selected regions
            available_channels = set()
            
            # If regions are selected, only show channels available across those regions
            if self.regions:
                # Initialize with channels from the first region
                region_to_channels = self.experiment_metadata.get('region_to_channels', {})
                for region in self.regions:
                    if region in region_to_channels:
                        region_channels = set(region_to_channels[region])
                        if region == self.regions[0]:  # First region
                            available_channels = region_channels
                        else:
                            # For subsequent regions, get the union of channels
                            available_channels = available_channels.union(region_channels)
                
                available_items = sorted(list(available_channels))
                if not available_items:
                    # Fallback to all channels if no region-specific channels found
                    available_items = self.experiment_metadata['channels']
            else:
                # If no regions selected, show all available channels
                available_items = self.experiment_metadata['channels']
            
            item_type = "channels"
            self._handle_list_selection(available_items, item_type, self.selected_channels)
            self.workflow_state['selected_channels'] = self.selected_channels
            
        else:
            print("\nPress Enter when you have completed this step...")
            input()
        
        return True
    
    def _handle_list_selection(self, available_items: List[str], item_type: str, target_list: List[str]):
        """Helper function to handle selection from a list of items."""
        if not available_items:
            logger.warning(f"No available {item_type} found in metadata.")
            print(f"\nNo available {item_type} found. Skipping selection.")
            return
        
        print(f"\nAvailable {item_type}:")
        for i, item in enumerate(available_items, 1):
            print(f"{i}. {item}")
        
        print(f"\nInput options for {item_type}:")
        print(f"- Enter {item_type} as space-separated text (e.g., '{available_items[0]} {available_items[-1]}')")
        print(f"- Enter numbers from the list (e.g., '1 {len(available_items)}')")
        print(f"- Type 'all' to select all {item_type}")
        
        user_input = input("\nEnter your selection: ").strip()
        
        if user_input.lower() == 'all':
            target_list.extend(available_items)
        elif user_input:
            inputs = user_input.split()
            try:
                # Try to parse as indices (1-based)
                indices = [int(x) for x in inputs]
                if all(1 <= idx <= len(available_items) for idx in indices):
                    selected_items = [available_items[idx-1] for idx in indices]
                    target_list.extend(selected_items)
                else:
                    # If some indices are invalid, treat as direct input but check validity
                    valid_inputs = [inp for inp in inputs if inp in available_items]
                    invalid_inputs = [inp for inp in inputs if inp not in available_items]
                    if invalid_inputs:
                        logger.warning(f"Ignoring invalid {item_type}: {', '.join(invalid_inputs)}")
                    if valid_inputs:
                        target_list.extend(valid_inputs)
                    else:
                        logger.warning(f"No valid {item_type} selected from input: '{user_input}'")
            except ValueError:
                # Not numbers, treat as direct item names, check validity
                valid_inputs = [inp for inp in inputs if inp in available_items]
                invalid_inputs = [inp for inp in inputs if inp not in available_items]
                if invalid_inputs:
                    logger.warning(f"Ignoring invalid {item_type}: {', '.join(invalid_inputs)}")
                if valid_inputs:
                    target_list.extend(valid_inputs)
                else:
                    logger.warning(f"No valid {item_type} selected from input: '{user_input}'")
            
        if not target_list:
            logger.warning(f"No {item_type} were selected. Proceeding without specific {item_type} filter.")
            print(f"\nWarning: No {item_type} selected.")
        
        # Remove duplicates and sort
        target_list[:] = sorted(list(set(target_list)))
        logger.info(f"Selected {item_type}: {target_list}")
    
    def run_workflow(self):
        """
        Run the entire workflow according to the configuration.
        
        Returns:
            bool: True if the workflow completed successfully, False otherwise.
        """
        steps = self.config.get('steps', [])
        total_steps = len(steps)
        
        logger.info(f"Starting workflow with {total_steps} steps")
        logger.info(f"Input directory: {self.input_dir}")
        logger.info(f"Output directory: {self.output_dir}")
        
        # First, set up the base directories
        logger.info("Setting up base directory structure first")
        if not self.setup_base_directories():
            logger.error("Failed to set up base directory structure")
            return False
        
        # Create a mapping of step names to indices for later reference
        step_name_to_index = {step.get('name'): i for i, step in enumerate(steps)}
        
        # Check if we have a prepare_input_structure step that needs to run BEFORE selections
        prepare_input_step_index = None
        for i, step in enumerate(steps):
            if step.get('name') == 'prepare_input_structure' or 'prepare_input' in step.get('name', '').lower():
                prepare_input_step_index = i
                break
        
        # Run the prepare_input_structure step first if it exists
        if prepare_input_step_index is not None:
            prepare_step = steps[prepare_input_step_index]
            step_name = prepare_step.get('name')
            step_type = prepare_step.get('type')
            script_path = prepare_step.get('path')
            args = prepare_step.get('args', [])
            
            # Skip if it's in the skip list
            if step_name not in self.skip_steps:
                logger.info(f"Running input preparation step first: {step_name}")
                
                # Process the args if needed
                if isinstance(args, list):
                    processed_args = []
                    for arg in args:
                        processed_arg = arg.replace('{input_dir}', str(self.input_dir)) \
                                          .replace('{output_dir}', str(self.output_dir))
                        processed_args.append(processed_arg)
                    args = processed_args
                elif isinstance(args, str):
                    args = args.replace('{input_dir}', str(self.input_dir)) \
                               .replace('{output_dir}', str(self.output_dir))
                
                success = False
                if step_type == 'bash':
                    success = self.run_bash_script(script_path, args)
                
                if not success:
                    logger.error(f"Input preparation step failed: {step_name}")
                    return False
                
                # Mark step as completed
                self.workflow_state['steps_completed'].append(step_name)
                self._save_state()
            else:
                logger.info(f"Skipping input preparation step: {step_name}")
                self.workflow_state['steps_skipped'].append(step_name)
                self._save_state()
            
            # After running the prepare_input step, refresh the metadata
            logger.info("Refreshing experiment metadata after input preparation")
            self.experiment_metadata = self._extract_experiment_metadata()
        
        # Now validate that the input directory contains data with the expected structure
        if not any(self.experiment_metadata.get('conditions', [])):
            logger.error("No conditions found in the input directory. Make sure the input directory contains valid data.")
            print("\n============================================================")
            print("ERROR: No conditions detected in input directory.")
            print(f"Input directory: {self.input_dir}")
            print("Check that the directory contains subdirectories for each condition.")
            print("Each condition should contain TIF files with naming format like: [RegionName]_Merged_t00_ch00.tif")
            print("============================================================\n")
            return False
        
        # Process steps in the required order
        # First process the selection steps in the correct sequence
        selection_steps = ["select_datatype", "select_condition", "select_timepoints", "select_regions", "select_channels"]
        current_step_index = 0
        
        while current_step_index < len(selection_steps):
            step_name = selection_steps[current_step_index]
            
            if step_name in step_name_to_index:
                i = step_name_to_index[step_name]
                step = steps[i]
                
                # Skip this step if it's in the skip list
                if step_name in self.skip_steps:
                    logger.info(f"Skipping step {i+1}/{total_steps}: {step_name}")
                    self.workflow_state['steps_skipped'].append(step_name)
                    self._save_state()
                    current_step_index += 1
                    continue
                
                # Update workflow state
                self.workflow_state['current_step'] = {
                    'name': step_name,
                    'index': i+1,
                    'total': total_steps
                }
                self._save_state()
                
                logger.info(f"Running step {i+1}/{total_steps}: {step_name}")
                
                # Process the selection step
                instructions = step.get('instructions', 'Complete this manual step.')
                success = self.prompt_manual_step(step_name, instructions)
                
                if not success:
                    logger.error(f"Step {i+1}/{total_steps} failed: {step_name}")
                    return False
                
                # Verify that essential selections have been made after the appropriate steps
                if step_name == "select_condition" and not self.selected_conditions:
                    logger.error("No conditions were selected. At least one condition must be selected to continue.")
                    print("\n============================================================")
                    print("ERROR: No conditions were selected. Workflow cannot continue.")
                    print("Please run again and select at least one condition.")
                    print("============================================================\n")
                    return False
                
                # Mark step as completed
                self.workflow_state['steps_completed'].append(step_name)
                self._save_state()
                
                # After certain selection steps, set up corresponding directories
                if step_name == "select_condition":
                    logger.info("Setting up condition directories after condition selection")
                    if not self.setup_condition_directories():
                        logger.error("Failed to set up condition directories")
                        return False
                
                elif step_name == "select_timepoints":
                    logger.info("Setting up timepoint directories after timepoint selection")
                    if not self.setup_timepoint_directories():
                        logger.error("Failed to set up timepoint directories")
                        return False
            
            current_step_index += 1
        
        # After all selections are made, now set up the final directory structure and copy files
        logger.info("Setting up final analysis directories based on all selections")
        if not self.setup_analysis_directories():
            logger.error("Failed to set up analysis directories")
            return False
        
        # Log selected items
        if self.selected_datatype:
            logger.info(f"Selected data type: {self.selected_datatype}")
        if self.selected_conditions:
            logger.info(f"Selected conditions: {', '.join(self.selected_conditions)}")
        if self.selected_channels:
            logger.info(f"Selected channels: {', '.join(self.selected_channels)}")
        if self.regions:
            logger.info(f"Selected regions: {', '.join(self.regions)}")
        if self.timepoints:
            logger.info(f"Selected timepoints: {', '.join(self.timepoints)}")
        logger.info(f"Number of bins for grouping cells: {self.bins}")
        
        # Log experiment metadata
        logger.info(f"Experiment metadata:")
        logger.info(f"  Conditions: {', '.join(self.experiment_metadata['conditions'])}")
        logger.info(f"  All available regions: {', '.join(self.experiment_metadata['regions'])}")
        logger.info(f"  All available timepoints: {', '.join(self.experiment_metadata['timepoints'])}")
        logger.info(f"  All available channels: {', '.join(self.experiment_metadata['channels'])}")
        logger.info(f"  Inferred data type: {self.experiment_metadata['datatype_inferred']}")
        
        # Determine the start index if --start-from is provided
        start_index = 0
        if self.start_from:
            found_start = False
            for idx, step_cfg in enumerate(steps):
                if step_cfg.get('name') == self.start_from:
                    start_index = idx
                    found_start = True
                    logger.info(f"Starting workflow from step {start_index + 1}: {self.start_from}")
                    break
            if not found_start:
                logger.error(f"Start step '{self.start_from}' not found in workflow configuration.")
                return False
            
        # Now process the remaining non-selection steps
        i = start_index
        while i < len(steps):
            step = steps[i]
            step_name = step.get('name')
            step_type = step.get('type')
            
            # Skip if it's a selection step (already processed above)
            if step_name in selection_steps:
                i += 1
                continue
            
            # Skip this step if it's in the skip list
            if step_name in self.skip_steps:
                logger.info(f"Skipping step {i+1}/{total_steps}: {step_name}")
                self.workflow_state['steps_skipped'].append(step_name)
                self._save_state()
                i += 1
                continue
            
            script_path = step.get('path')
            args = step.get('args', [])
            
            # Update arguments for group_cells step to use the specified bins
            if step_name == "group_cells" and isinstance(args, list):
                # Find the index of the "--bins" argument
                try:
                    bins_index = args.index("--bins")
                    # Replace the value after "--bins" with the user-specified value
                    if bins_index + 1 < len(args):
                        args[bins_index + 1] = str(self.bins)
                except ValueError:
                    # If "--bins" is not found, append it and its value
                    args.extend(["--bins", str(self.bins)])
            
            # Replace placeholders in args
            if isinstance(args, list):
                processed_args = []
                idx = 0
                while idx < len(args):
                    arg = args[idx]
                    # Base replacements
                    arg = arg.replace('{input_dir}', str(self.input_dir)) \
                             .replace('{output_dir}', str(self.output_dir)) \
                             .replace('{imagej_path}', self.config.get('imagej_path', 'ImageJ'))

                    # Handle list placeholders - extend args instead of joining into one string
                    if arg == '--conditions' and '{conditions}' in args[idx+1] and self.selected_conditions:
                        processed_args.append(arg) # Add the flag ('--conditions')
                        processed_args.extend(self.selected_conditions) # Add each selected condition as a separate arg
                        idx += 2 # Skip the flag and the placeholder
                        continue
                    elif arg == '--channels' and '{channels}' in args[idx+1] and self.selected_channels:
                        processed_args.append(arg)
                        processed_args.extend(self.selected_channels)
                        idx += 2
                        continue
                    elif arg == '--regions' and '{regions}' in args[idx+1] and self.regions:
                        processed_args.append(arg)
                        processed_args.extend(self.regions)
                        idx += 2
                        continue
                    elif arg == '--timepoints' and '{timepoints}' in args[idx+1] and self.timepoints:
                        processed_args.append(arg)
                        processed_args.extend(self.timepoints)
                        idx += 2
                        continue
                    
                    # If placeholder exists but no selection, remove the flag and placeholder
                    if arg == '--conditions' and '{conditions}' in args[idx+1]:
                         idx += 2
                         continue
                    elif arg == '--channels' and '{channels}' in args[idx+1]:
                         idx += 2
                         continue
                    elif arg == '--regions' and '{regions}' in args[idx+1]:
                         idx += 2
                         continue
                    elif arg == '--timepoints' and '{timepoints}' in args[idx+1]:
                         idx += 2
                         continue
                     
                    # Handle non-list replacements or flags without list values (like --verbose)
                    # Replace placeholders if they exist even without specific selections (might become empty string)
                    arg = arg.replace('{conditions}', '') # Should not happen if logic above works
                    arg = arg.replace('{channels}', '')
                    arg = arg.replace('{regions}', '')
                    arg = arg.replace('{timepoints}', '')
                    processed_args.append(arg)
                    idx += 1
                
                args = processed_args
            elif isinstance(args, str):
                args = args.replace('{input_dir}', str(self.input_dir)) \
                           .replace('{output_dir}', str(self.output_dir)) \
                           .replace('{imagej_path}', self.config.get('imagej_path', 'ImageJ'))
                
                # Replace region and timepoint placeholders if specific ones are selected
                if '{regions}' in args and self.regions:
                    args = args.replace('{regions}', ','.join(self.regions))
                
                if '{timepoints}' in args and self.timepoints:
                    args = args.replace('{timepoints}', ','.join(self.timepoints))
            
            # Update workflow state
            self.workflow_state['current_step'] = {
                'name': step_name,
                'index': i+1,
                'total': total_steps
            }
            self._save_state()
            
            logger.info(f"Running step {i+1}/{total_steps}: {step_name}")
            
            success = False
            result_data = {}
            
            if step_type == 'bash':
                success = self.run_bash_script(script_path, args)
            elif step_type == 'python':
                success, result_data = self.run_python_script(script_path, args)
            elif step_type == 'imagej_macro':
                success = self.run_imagej_macro(script_path, args)
            elif step_type == 'gui_application':
                instructions = step.get('instructions', 'Complete the necessary tasks in the GUI application.')
                success = self.launch_gui_application(script_path, instructions)
            elif step_type == 'manual':
                instructions = step.get('instructions', 'Complete this manual step.')
                success = self.prompt_manual_step(step_name, instructions)
            elif step_type == 'function':
                # This is a new step type that calls a method within the orchestrator
                function_name = step.get('function')
                if hasattr(self, function_name) and callable(getattr(self, function_name)):
                    try:
                        function_args = step.get('function_args', {})
                        # Replace placeholders in function args
                        for key, value in function_args.items():
                            if isinstance(value, str):
                                function_args[key] = value.replace('{input_dir}', str(self.input_dir)) \
                                                         .replace('{output_dir}', str(self.output_dir)) \
                                                         .replace('{imagej_path}', self.config.get('imagej_path', 'ImageJ'))
                        
                        # Call the function
                        result = getattr(self, function_name)(**function_args)
                        success = result if isinstance(result, bool) else True
                    except Exception as e:
                        logger.error(f"Error executing function {function_name}: {e}")
                        success = False
                else:
                    logger.error(f"Function {function_name} not found in orchestrator")
                    success = False
            else:
                logger.error(f"Unknown step type: {step_type}")
                success = False
            
            if not success:
                logger.error(f"Step {i+1}/{total_steps} failed: {step_name}")
                return False
            
            # Check if we need to handle the "more bins" request from threshold_grouped_cells
            if step_name == "threshold_grouped_cells" and result_data.get('needs_more_bins', False):
                logger.info("User requested more bins for better cell grouping")
                
                # Increment the bin count
                self.bins += 1
                logger.info(f"Increasing bin count to {self.bins}")
                
                # Update the workflow state
                self.workflow_state['bins'] = self.bins
                self._save_state()
                
                # Prepare to restart from the group_cells step
                if "group_cells" in step_name_to_index:
                    group_cells_index = step_name_to_index["group_cells"]
                    logger.info(f"Restarting workflow from 'group_cells' step (step {group_cells_index+1})")
                    
                    # Reset all completions after group_cells
                    for j in range(group_cells_index, i+1):
                        step_to_reset = steps[j].get('name')
                        if step_to_reset in self.workflow_state['steps_completed']:
                            self.workflow_state['steps_completed'].remove(step_to_reset)
                    
                    # Jump back to group_cells step
                    i = group_cells_index
                    continue
            
            # Mark step as completed
            self.workflow_state['steps_completed'].append(step_name)
            self._save_state()
            
            # Proceed to next step
            i += 1
        
        # Workflow completed successfully
        self.workflow_state['end_time'] = datetime.now().isoformat()
        self._save_state()
        logger.info("Workflow completed successfully")
        return True


def main():
    """Main entry point for the script."""
    parser = argparse.ArgumentParser(description='Microscopy Single-Cell Analysis Workflow Orchestrator')
    
    parser.add_argument('--config', '-c', required=True,
                        help='Path to workflow configuration file (JSON)')
    parser.add_argument('--input', '-i', required=True,
                        help='Input directory containing microscopy data to analyze')
    parser.add_argument('--output', '-o', required=True,
                        help='Output directory for results')
    parser.add_argument('--skip', '-s', nargs='+', default=[],
                        help='Steps to skip (by name)')
    parser.add_argument('--datatype', type=str, choices=['single_timepoint', 'multi_timepoint'],
                        help='Specify the data type (overrides manual selection)')
    parser.add_argument('--conditions', nargs='+', default=[],
                        help='Specific conditions to analyze (e.g., Dish_1 Dish_2)')
    parser.add_argument('--channels', nargs='+', default=[],
                        help='Specific channels to analyze (e.g., ch00 ch01)')
    parser.add_argument('--timepoints', '-t', nargs='+', default=[],
                        help='Specific timepoints to analyze (e.g., t00 t03)')
    parser.add_argument('--regions', '-r', nargs='+', default=[],
                        help='Specific regions to analyze (e.g., R_1 R_2 R_3)')
    parser.add_argument('--bins', type=int, default=5,
                        help='Number of bins for grouping cells (default: 5)')
    parser.add_argument('--setup-only', action='store_true',
                        help='Only set up directory structure, do not run the workflow')
    parser.add_argument('--start-from', type=str,
                        help='Start the workflow from this step (by name)')
    parser.add_argument('--verbose', action='store_true',
                        help='Enable verbose logging')
    parser.add_argument('--debug', action='store_true',
                        help='Enable debug logging (even more detailed)')
    
    args = parser.parse_args()
    
    # Configure logging based on verbosity level
    log_level = logging.INFO
    if args.verbose:
        log_level = logging.INFO  # We were already at INFO level for verbose
    if args.debug:
        log_level = logging.DEBUG
    
    logging.basicConfig(
        level=log_level,
        format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
    )
    
    # Create and run the workflow orchestrator
    orchestrator = WorkflowOrchestrator(
        config_path=args.config,
        input_dir=args.input,
        output_dir=args.output,
        skip_steps=args.skip,
        datatype=args.datatype,
        conditions=args.conditions,
        channels=args.channels,
        timepoints=args.timepoints,
        regions=args.regions,
        setup_only=args.setup_only,
        start_from=args.start_from,
        bins=args.bins
    )
    
    # If only setting up directories, create just the base directories
    if args.setup_only:
        if orchestrator.setup_base_directories():
            logger.info("Base directory setup complete, stopping as --setup-only was specified")
            return 0
        else:
            logger.error("Failed to set up base directories")
            return 1
    
    # Run the workflow (which now handles directory creation in the proper sequence)
    if orchestrator.run_workflow():
        logger.info("Workflow completed successfully")
        return 0
    else:
        logger.error("Workflow failed")
        return 1


if __name__ == "__main__":
    sys.exit(main())