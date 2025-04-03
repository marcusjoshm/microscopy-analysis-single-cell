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
                 start_from: Optional[str] = None):
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
            'selected_regions': self.regions
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
            'datatype_inferred': 'multi_timepoint'
        }
        
        # Find all condition directories (Dish_X_*)
        for item in self.input_dir.glob("Dish_*"):
            if item.is_dir():
                condition_name = item.name
                metadata['conditions'].append(condition_name)
                
                # Process files within each condition to extract regions/timepoints/channels
                tif_files = list(item.glob("**/*.tif"))
                for tif_file in tif_files:
                    # Extract region, timepoint, and channel from filename
                    # Example: R_1_Merged_t00_ch01.tif
                    filename = tif_file.name
                    region_match = re.search(r'(R_\d+)', filename)
                    timepoint_match = re.search(r'(t\d+)', filename)
                    channel_match = re.search(r'(ch\d+)', filename)
                    
                    if region_match:
                        metadata['regions'].add(region_match.group(1))
                    if timepoint_match:
                        metadata['timepoints'].add(timepoint_match.group(1))
                    if channel_match:
                        metadata['channels'].add(channel_match.group(1))
        
        # Convert sets to sorted lists for consistent ordering
        metadata['regions'] = sorted(list(metadata['regions']))
        metadata['timepoints'] = sorted(list(metadata['timepoints']))
        metadata['channels'] = sorted(list(metadata['channels']))
        metadata['conditions'] = sorted(metadata['conditions'])
        
        # Infer datatype based on number of timepoints found
        if len(metadata['timepoints']) <= 1:
            metadata['datatype_inferred'] = 'single_timepoint'
        
        return metadata
    
    def setup_analysis_directories(self):
        """
        Set up the directory structure for analysis based on selected conditions, regions, and timepoints.
        Defaults to using all available items if no specific selections are made via command line.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up analysis directory structure based on selections")
        
        try:
            # Determine target items based on selections or defaults from metadata
            conditions_to_process = self.selected_conditions or self.experiment_metadata.get('conditions', [])
            regions_to_process = self.regions or self.experiment_metadata.get('regions', [])
            timepoints_to_process = self.timepoints or self.experiment_metadata.get('timepoints', [])

            logger.info(f"Creating directories for Conditions: {conditions_to_process}")
            logger.info(f"Creating directories for Regions: {regions_to_process}")
            logger.info(f"Creating directories for Timepoints: {timepoints_to_process}")

            # Define the main directories to create (relative to output_dir)
            main_dirs = ['analysis', 'cells', 'combined_masks', 'grouped_cells', 
                         'grouped_masks', 'masks', 'raw_data', 'ROIs', 'macros'] # Added macros
            
            # Create the main directories
            for dir_name in main_dirs:
                (self.output_dir / dir_name).mkdir(parents=True, exist_ok=True)
            
            # --- Copy raw data (unchanged section) ---
            logger.info("Copying selected raw data...")
            input_conditions_found = {item.name for item in self.input_dir.glob("Dish_*") if item.is_dir()}
            
            for condition_name in conditions_to_process:
                if condition_name in input_conditions_found:
                    source_cond_dir = self.input_dir / condition_name
                    dest_cond_dir = self.output_dir / "raw_data" / condition_name
                    dest_cond_dir.mkdir(parents=True, exist_ok=True) # Ensure condition dir exists in raw_data
                    
                    # Copy files, creating subdirs as needed
                    for item in source_cond_dir.glob("**/*"):
                        if item.is_file():
                            rel_path = item.relative_to(source_cond_dir)
                            target_file = dest_cond_dir / rel_path
                            target_file.parent.mkdir(parents=True, exist_ok=True)
                            shutil.copy2(item, target_file)
                else:
                     logger.warning(f"Selected condition '{condition_name}' not found in input directory {self.input_dir}, skipping copy.")
            logger.info("Raw data copying complete.")
            # --- End of raw data copy section ---

            # Create condition-level subdirectories in analysis folders ONLY for processed conditions
            base_dirs_with_condition_subdir = ['cells', 'combined_masks', 'grouped_cells', 
                                               'grouped_masks', 'masks', 'ROIs']
            for base_dir_name in base_dirs_with_condition_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    (base_path / condition_name).mkdir(parents=True, exist_ok=True)
            
            # Create region-timepoint subdirectories ONLY for processed conditions, regions, and timepoints
            base_dirs_with_region_time_subdir = ['cells', 'grouped_cells', 'grouped_masks', 'masks']
            for base_dir_name in base_dirs_with_region_time_subdir:
                base_path = self.output_dir / base_dir_name
                for condition_name in conditions_to_process:
                    condition_path = base_path / condition_name
                    for region in regions_to_process:
                        for timepoint in timepoints_to_process:
                            subdir_name = f"{region}_{timepoint}"
                            (condition_path / subdir_name).mkdir(parents=True, exist_ok=True)
            
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
            bool: True if successful, False otherwise.
        """
        args = args or []
        command = [sys.executable, script_path] + args
        
        logger.info(f"Running Python script: {script_path} with args: {args}") # Log arguments for clarity
        
        try:
            # Run without capturing stdout/stderr
            process = subprocess.run(
                command,
                check=True,
                text=True,
                encoding='utf-8'
            )
            logger.info(f"Python script completed successfully: {script_path}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"Python script {script_path} failed with exit code {e.returncode}")
            return False
    
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
            
        elif step_name == "select_channels" and not self.selected_channels:
            available_items = self.experiment_metadata['channels']
            item_type = "channels"
            self._handle_list_selection(available_items, item_type, self.selected_channels)
            self.workflow_state['selected_channels'] = self.selected_channels
            
        elif step_name == "select_timepoints" and not self.timepoints:
            available_items = self.experiment_metadata['timepoints']
            item_type = "timepoints"
            self._handle_list_selection(available_items, item_type, self.timepoints)
            self.workflow_state['selected_timepoints'] = self.timepoints
            
        elif step_name == "select_regions" and not self.regions:
            available_items = self.experiment_metadata['regions']
            item_type = "regions"
            self._handle_list_selection(available_items, item_type, self.regions)
            self.workflow_state['selected_regions'] = self.regions
            
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
        
        # Log selected items
        if self.selected_datatype:
            logger.info(f"Selected data type: {self.selected_datatype}")
        if self.selected_conditions:
            logger.info(f"Selected conditions: {', '.join(self.selected_conditions)}")
        if self.selected_channels:
            logger.info(f"Selected channels: {', '.join(self.selected_channels)}")
        # Log selected regions and timepoints if specified
        if self.regions:
            logger.info(f"Selected regions: {', '.join(self.regions)}")
        if self.timepoints:
            logger.info(f"Selected timepoints: {', '.join(self.timepoints)}")
        
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
                return False # Or raise an error

        for i, step in enumerate(steps):
            step_name = step.get('name', f"Step {i+1}")
            step_type = step.get('type')
            script_path = step.get('path')
            args = step.get('args', [])
            
            # Skip steps before the start_index if --start-from was used
            if self.start_from and i < start_index:
                logger.info(f"Skipping step {i+1}/{total_steps}: {step_name} (due to --start-from {self.start_from})")
                # Add to skipped steps, potentially overwrite if also in --skip list
                if step_name not in self.workflow_state['steps_skipped']:
                     self.workflow_state['steps_skipped'].append(step_name)
                self._save_state()
                continue
            
            # Skip this step if it's in the skip list
            if step_name in self.skip_steps:
                logger.info(f"Skipping step {i+1}/{total_steps}: {step_name}")
                self.workflow_state['steps_skipped'].append(step_name)
                self._save_state()
                continue
            
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
            if step_type == 'bash':
                success = self.run_bash_script(script_path, args)
            elif step_type == 'python':
                success = self.run_python_script(script_path, args)
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
            
            # Mark step as completed
            self.workflow_state['steps_completed'].append(step_name)
            self._save_state()
            
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
    parser.add_argument('--setup-only', action='store_true',
                        help='Only set up directory structure, do not run the workflow')
    parser.add_argument('--start-from', type=str, default=None,
                        help='Name of the step to start the workflow from, skipping all previous steps.')
    
    args = parser.parse_args()
    
    # Create the workflow orchestrator
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
        start_from=args.start_from
    )
    
    # Set up directory structure (this replaces your analysis_setup.sh)
    setup_success = orchestrator.setup_analysis_directories()
    if not setup_success:
        logger.error("Directory setup failed")
        sys.exit(1)
    
    # If --setup-only flag is provided, exit after setting up directories
    if args.setup_only:
        logger.info("Directory setup completed. Exiting as requested (--setup-only).")
        sys.exit(0)
    
    # Run the full workflow
    success = orchestrator.run_workflow()
    
    if not success:
        logger.error("Workflow failed")
        sys.exit(1)
    
    logger.info("Workflow completed successfully")


if __name__ == "__main__":
    # Configure logging at the start
    logging.basicConfig(level=logging.INFO, 
                        format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                        handlers=[logging.StreamHandler()]) # Ensure logs go to console
    
    main()