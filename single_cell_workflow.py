#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Microscopy Single-Cell Analysis Workflow Orchestrator

This script orchestrates the entire single-cell analysis workflow by combining multiple
scripts and handling transitions between automated and manual steps. It's designed to 
process microscopy data with specific naming conventions (R_X for regions, tXX for 
time points, chXX for channels) and organize analysis results.
"""

import os
import sys
import subprocess
import argparse
import logging
import time
import json
import re
import shutil
import glob
from pathlib import Path
from datetime import datetime

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler("workflow.log"),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("SingleCellWorkflow")

class WorkflowOrchestrator:
    """Main class to orchestrate the single-cell analysis workflow."""
    
    def __init__(self, config_path, input_dir, output_dir, skip_steps=None, timepoints=None, regions=None):
        """
        Initialize the workflow orchestrator.
        
        Args:
            config_path (str): Path to the configuration file.
            input_dir (str): Directory containing input data.
            output_dir (str): Directory for output results.
            skip_steps (list): List of step names to skip (optional).
            timepoints (list): List of timepoints to analyze (e.g., ["t00", "t03"]).
            regions (list): List of regions to analyze (e.g., ["R_1", "R_2", "R_3"]).
        """
        self.config_path = config_path
        self.input_dir = Path(input_dir).resolve()
        self.output_dir = Path(output_dir).resolve()
        self.skip_steps = skip_steps or []
        self.timepoints = timepoints or []
        self.regions = regions or []
        
        # Load configuration
        self.config = self._load_config()
        
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
            'experiment_metadata': self.experiment_metadata
        }
        
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
            'channels': set()
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
        
        return metadata
    
    def setup_analysis_directories(self):
        """
        Set up the directory structure for analysis, following the pattern from analysis_setup.sh.
        This creates the necessary directories for the analysis workflow.
        
        Returns:
            bool: True if successful, False otherwise
        """
        logger.info("Setting up analysis directory structure")
        
        try:
            # Define the main directories to create
            main_dirs = ['analysis', 'cells', 'combined_masks', 'grouped_cells', 
                         'grouped_masks', 'masks', 'raw_data', 'ROIs', 'scripts']
            
            # Create the main directories
            for dir_name in main_dirs:
                os.makedirs(self.output_dir / dir_name, exist_ok=True)
            
            # Move all experimental directories to raw_data
            # First, identify all experimental condition directories
            for condition_dir in self.input_dir.glob("Dish_*"):
                if condition_dir.is_dir():
                    # Create destination directory in raw_data
                    dest_dir = self.output_dir / "raw_data" / condition_dir.name
                    os.makedirs(dest_dir, exist_ok=True)
                    
                    # Copy contents instead of moving, to preserve original data
                    for item in condition_dir.glob("**/*"):
                        if item.is_file():
                            # Construct relative path from condition directory
                            rel_path = item.relative_to(condition_dir)
                            # Create target directory
                            target_dir = dest_dir / rel_path.parent
                            os.makedirs(target_dir, exist_ok=True)
                            # Copy file
                            shutil.copy2(item, target_dir / item.name)
            
            # For each condition directory in raw_data, create corresponding subdirectories
            for condition_dir in (self.output_dir / "raw_data").glob("*"):
                if condition_dir.is_dir():
                    dir_name = condition_dir.name
                    for base_dir in ['cells', 'combined_masks', 'grouped_cells', 
                                     'grouped_masks', 'masks', 'ROIs']:
                        os.makedirs(self.output_dir / base_dir / dir_name, exist_ok=True)
            
            # Create additional subdirectories for regions and timepoints
            extra_subdirs = []
            # Generate subdirectory names based on regions and timepoints from metadata
            # Format: R_X_tXX where X is region number and tXX is timepoint (t00, t03, etc.)
            for region in self.experiment_metadata['regions']:
                for time_suffix in ['t00', 't03']:  # Hardcoded time labels
                    extra_subdirs.append(f"{region}_{time_suffix}")
            
            # Create these subdirectories
            for base_dir in ['cells', 'grouped_cells', 'grouped_masks', 'masks']:
                for condition_subdir in (self.output_dir / base_dir).glob("*"):
                    if condition_subdir.is_dir():
                        for extra_subdir in extra_subdirs:
                            os.makedirs(condition_subdir / extra_subdir, exist_ok=True)
            
            logger.info("Directory setup complete")
            return True
            
        except Exception as e:
            logger.error(f"Error setting up directory structure: {e}")
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
            process = subprocess.run(
                cmd, 
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )
            logger.info(f"Bash script completed successfully: {script_path}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"Bash script failed: {e}")
            logger.error(f"STDOUT: {e.stdout}")
            logger.error(f"STDERR: {e.stderr}")
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
        cmd = [sys.executable, script_path]
        if args:
            cmd.extend(args)
            
        logger.info(f"Running Python script: {script_path}")
        try:
            process = subprocess.run(
                cmd, 
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )
            logger.info(f"Python script completed successfully: {script_path}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"Python script failed: {e}")
            logger.error(f"STDOUT: {e.stdout}")
            logger.error(f"STDERR: {e.stderr}")
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
            process = subprocess.run(
                cmd,
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                shell=True  # ImageJ might need shell=True
            )
            logger.info(f"ImageJ macro completed successfully: {macro_path}")
            logger.info(f"ImageJ output: {process.stdout}")
            return True
        except subprocess.CalledProcessError as e:
            logger.error(f"ImageJ macro failed: {e}")
            logger.error(f"STDOUT: {e.stdout}")
            logger.error(f"STDERR: {e.stderr}")
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
        instructions = instructions.replace('{timepoints_list}', ', '.join(self.experiment_metadata['timepoints']))
        instructions = instructions.replace('{regions_list}', ', '.join(self.experiment_metadata['regions']))
        
        print("\n" + "="*80)
        print(f"MANUAL STEP REQUIRED: {step_name}")
        print("="*80)
        print(instructions)
        
        # Handle special manual steps that require input
        if step_name == "select_timepoints" and not self.timepoints:
            available_timepoints = self.experiment_metadata['timepoints']
            print("\nAvailable timepoints:")
            for i, tp in enumerate(available_timepoints, 1):
                print(f"{i}. {tp}")
                
            print("\nInput options:")
            print("- Enter timepoints as space-separated text (e.g., 't00 t03')")
            print("- Enter numbers from the list (e.g., '1 3' for first and third timepoints)")
            print("- Type 'all' to select all timepoints")
            
            user_input = input("\nEnter your selection: ").strip().lower()
            
            if user_input == 'all':
                self.timepoints = available_timepoints
            elif user_input:
                # Check if input contains only numbers
                inputs = user_input.split()
                try:
                    # Try to parse as indices (1-based)
                    indices = [int(x) for x in inputs]
                    # Convert to actual timepoints if valid indices
                    if all(1 <= idx <= len(available_timepoints) for idx in indices):
                        self.timepoints = [available_timepoints[idx-1] for idx in indices]
                    else:
                        # If some indices are invalid, treat as direct input
                        self.timepoints = inputs
                except ValueError:
                    # Not numbers, treat as direct timepoint names
                    self.timepoints = inputs
                    
            logger.info(f"Selected timepoints: {self.timepoints}")
            
        elif step_name == "select_regions" and not self.regions:
            available_regions = self.experiment_metadata['regions']
            print("\nAvailable regions:")
            for i, region in enumerate(available_regions, 1):
                print(f"{i}. {region}")
                
            print("\nInput options:")
            print("- Enter regions as space-separated text (e.g., 'R_1 R_3')")
            print("- Enter numbers from the list (e.g., '1 3' for first and third regions)")
            print("- Type 'all' to select all regions")
            
            user_input = input("\nEnter your selection: ").strip().lower()
            
            if user_input == 'all':
                self.regions = available_regions
            elif user_input:
                # Check if input contains only numbers
                inputs = user_input.split()
                try:
                    # Try to parse as indices (1-based)
                    indices = [int(x) for x in inputs]
                    # Convert to actual regions if valid indices
                    if all(1 <= idx <= len(available_regions) for idx in indices):
                        self.regions = [available_regions[idx-1] for idx in indices]
                    else:
                        # If some indices are invalid, treat as direct input
                        self.regions = inputs
                except ValueError:
                    # Not numbers, treat as direct region names
                    self.regions = inputs
                    
            logger.info(f"Selected regions: {self.regions}")
            
        else:
            print("\nPress Enter when you have completed this step...")
            input()
        
        return True
    
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
        
        for i, step in enumerate(steps):
            step_name = step.get('name', f"Step {i+1}")
            step_type = step.get('type')
            script_path = step.get('path')
            args = step.get('args', [])
            
            # Skip this step if it's in the skip list
            if step_name in self.skip_steps:
                logger.info(f"Skipping step {i+1}/{total_steps}: {step_name}")
                self.workflow_state['steps_skipped'].append(step_name)
                self._save_state()
                continue
            
            # Replace placeholders in args
            if isinstance(args, list):
                processed_args = []
                for arg in args:
                    # Base replacements
                    arg = arg.replace('{input_dir}', str(self.input_dir)) \
                             .replace('{output_dir}', str(self.output_dir)) \
                             .replace('{imagej_path}', self.config.get('imagej_path', 'ImageJ'))
                    
                    # Replace region and timepoint placeholders if specific ones are selected
                    if '{regions}' in arg and self.regions:
                        # Always use space separator for analyze_cell_masks.py
                        if 'analyze_cell_masks.py' in script_path:
                            arg = arg.replace('{regions}', ' '.join(self.regions))
                        else:
                            separator = ',' if step_type in ['python', 'imagej_macro'] else ' '
                            arg = arg.replace('{regions}', separator.join(self.regions))
                    
                    if '{timepoints}' in arg and self.timepoints:
                        # Always use space separator for analyze_cell_masks.py
                        if 'analyze_cell_masks.py' in script_path:
                            arg = arg.replace('{timepoints}', ' '.join(self.timepoints))
                        else:
                            separator = ',' if step_type in ['python', 'imagej_macro'] else ' '
                            arg = arg.replace('{timepoints}', separator.join(self.timepoints))
                        
                    processed_args.append(arg)
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
    parser.add_argument('--timepoints', '-t', nargs='+', default=[],
                        help='Specific timepoints to analyze (e.g., t00 t03)')
    parser.add_argument('--regions', '-r', nargs='+', default=[],
                        help='Specific regions to analyze (e.g., R_1 R_2 R_3)')
    parser.add_argument('--setup-only', action='store_true',
                        help='Only set up directory structure, do not run the workflow')
    
    args = parser.parse_args()
    
    # Create the workflow orchestrator
    orchestrator = WorkflowOrchestrator(
        config_path=args.config,
        input_dir=args.input,
        output_dir=args.output,
        skip_steps=args.skip,
        timepoints=args.timepoints,
        regions=args.regions
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
    main()