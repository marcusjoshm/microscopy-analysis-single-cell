#!/usr/bin/env python3
"""
Stage Classes for Microscopy Single-Cell Analysis Pipeline

Contains the concrete implementations of each pipeline stage.
"""

import subprocess
import os
import re
import sys
from pathlib import Path
from typing import Dict, Any, List, Set, Optional
from ..core.stages import StageBase


class DataSelectionStage(StageBase):
    """
    Data Selection Stage
    
    Handles the selection of conditions, regions, timepoints, and channels for analysis.
    Includes: prepare_input_structure, select_datatype, select_condition, select_timepoints, 
             select_regions, select_segmentation_channel, select_analysis_channels
    """
    
    def __init__(self, config, logger, stage_name="data_selection"):
        super().__init__(config, logger, stage_name)
        self.experiment_metadata = {}
        self.selected_datatype = None
        self.selected_conditions = []
        self.selected_timepoints = []
        self.selected_regions = []
        self.segmentation_channel = None
        self.analysis_channels = []
        
    def validate_inputs(self, **kwargs) -> bool:
        """Validate inputs for data selection stage."""
        input_dir = kwargs.get('input_dir')
        if not input_dir or not Path(input_dir).exists():
            self.logger.error(f"Input directory does not exist: {input_dir}")
            return False
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the data selection stage."""
        try:
            self.logger.info("Starting Data Selection Stage")
            
            # Store input directory for later use
            self.input_dir = kwargs['input_dir']
            
            # Step 1: Prepare input structure
            self.logger.info("Preparing input structure...")
            if not self._prepare_input_structure(kwargs['input_dir']):
                return False
            
            # Step 2: Extract experiment metadata
            self.logger.info("Extracting experiment metadata...")
            if not self._extract_experiment_metadata(kwargs['input_dir']):
                return False
            
            # Step 3: Interactive data selection
            self.logger.info("Starting interactive data selection...")
            if not self._run_interactive_selection():
                return False
            
            # Step 4: Save selections to config
            self.logger.info("Saving data selections...")
            self._save_selections_to_config()
            
            self.logger.info("Data Selection Stage completed successfully")
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Data Selection Stage: {e}")
            return False
    
    def _prepare_input_structure(self, input_dir: str) -> bool:
        """Prepare input directory structure using the prepare_input_structure.sh script."""
        try:
            input_path = Path(input_dir)
            self.logger.info(f"Preparing input directory structure: {input_path}")
            
            # Use the prepare_input_structure.sh script
            script_path = Path("scripts/prepare_input_structure.sh")
            if not script_path.exists():
                self.logger.error(f"prepare_input_structure.sh script not found: {script_path}")
                return False
            
            # Make sure the script is executable
            script_path.chmod(0o755)
            
            # Run the script
            import subprocess
            result = subprocess.run([str(script_path), str(input_path)], 
                                  capture_output=True, text=True)
            
            if result.returncode != 0:
                self.logger.error(f"prepare_input_structure.sh failed: {result.stderr}")
                return False
            
            self.logger.info("Input directory structure prepared successfully")
            self.logger.info(f"Script output: {result.stdout}")
            return True
            
        except Exception as e:
            self.logger.error(f"Error preparing input structure: {e}")
            return False
    
    def _process_timepoint_directory(self, timepoint_dir: Path):
        """Process files in a timepoint directory."""
        self.logger.info(f"Processing files in: {timepoint_dir}")
        region_counter = 1
        
        for tif_file in timepoint_dir.glob("*.tif"):
            if tif_file.is_file():
                filename = tif_file.name
                
                # Check if missing timepoint pattern
                if not self._has_timepoint_pattern(filename):
                    self.logger.warning(f"File missing timepoint pattern: {filename}")
                    new_filename = filename.replace('.tif', '_t00.tif')
                    self.logger.info(f"Adding timepoint pattern: {new_filename}")
                    new_path = timepoint_dir / new_filename
                    tif_file.rename(new_path)
                    tif_file = new_path
                    filename = new_filename
                
                # Check if missing channel pattern
                if not self._has_channel_pattern(filename):
                    self.logger.warning(f"File missing channel pattern: {filename}")
                    new_filename = filename.replace('.tif', '_ch00.tif')
                    self.logger.info(f"Adding channel pattern: {new_filename}")
                    new_path = timepoint_dir / new_filename
                    tif_file.rename(new_path)
                
                # Each file is considered its own region
                self.logger.info(f"File will be treated as Region {region_counter}: {filename}")
                region_counter += 1
    
    def _has_timepoint_pattern(self, filename: str) -> bool:
        """Check if a filename contains a timepoint pattern (tXX)."""
        return bool(re.search(r't[0-9]+', filename))
    
    def _has_channel_pattern(self, filename: str) -> bool:
        """Check if a filename contains a channel pattern (chXX)."""
        return bool(re.search(r'ch[0-9]+', filename))
    
    def _extract_experiment_metadata(self, input_dir: str) -> bool:
        """Extract experiment metadata from the directory structure."""
        try:
            input_path = Path(input_dir)
            metadata = {
                'conditions': [],
                'regions': set(),
                'timepoints': set(),
                'channels': set(),
                'region_to_channels': {},
                'datatype_inferred': 'multi_timepoint'
            }
            
            self.logger.info(f"Scanning input directory: {input_path}")
            if not input_path.exists():
                self.logger.error(f"Input directory does not exist: {input_path}")
                return False
                
            # List all items in the input directory
            input_items = list(input_path.glob("*"))
            self.logger.info(f"Found {len(input_items)} items in input directory")
            
            # Count directories to help with debugging
            input_dirs = [item for item in input_items if item.is_dir() and not item.name.startswith('.')]
            self.logger.info(f"Found {len(input_dirs)} directories in input directory: {[d.name for d in input_dirs]}")
            
            if not input_dirs:
                self.logger.warning("No subdirectories found in input directory. Expected at least one condition directory.")
                return False
            
            # Find all directories in the input directory as potential conditions
            for item in input_dirs:
                condition_name = item.name
                metadata['conditions'].append(condition_name)
                
                # Count TIF files in this condition
                tif_files = list(item.glob("**/*.tif"))
                self.logger.info(f"Found {len(tif_files)} TIF files in condition '{condition_name}'")
                
                if not tif_files:
                    self.logger.warning(f"No TIF files found in condition '{condition_name}'")
                    continue
                
                # Extract metadata from filenames
                for tif_file in tif_files:
                    filename = tif_file.name
                    
                    # Extract timepoint
                    timepoint_match = re.search(r't([0-9]+)', filename)
                    if timepoint_match:
                        timepoint = f"t{timepoint_match.group(1)}"
                        metadata['timepoints'].add(timepoint)
                    
                    # Extract channel
                    channel_match = re.search(r'ch([0-9]+)', filename)
                    if channel_match:
                        channel = f"ch{channel_match.group(1)}"
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
            
            # Convert sets to sorted lists
            metadata['regions'] = sorted(list(metadata['regions']))
            metadata['timepoints'] = sorted(list(metadata['timepoints']))
            metadata['channels'] = sorted(list(metadata['channels']))
            
            # Infer datatype based on timepoints
            if len(metadata['timepoints']) <= 1:
                metadata['datatype_inferred'] = 'single_timepoint'
            else:
                metadata['datatype_inferred'] = 'multi_timepoint'
            
            self.experiment_metadata = metadata
            self.logger.info(f"Extracted metadata: {metadata}")
            return True
            
        except Exception as e:
            self.logger.error(f"Error extracting experiment metadata: {e}")
            return False
    
    def _run_interactive_selection(self) -> bool:
        """Run interactive selection prompts."""
        try:
            # Step 1: Select datatype
            if not self._select_datatype():
                return False
            
            # Step 2: Select conditions
            if not self._select_conditions():
                return False
            
            # Step 3: Select timepoints
            if not self._select_timepoints():
                return False
            
            # Step 4: Select regions
            if not self._select_regions():
                return False
            
            # Step 5: Select segmentation channel
            if not self._select_segmentation_channel():
                return False
            
            # Step 6: Select analysis channels
            if not self._select_analysis_channels():
                return False
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in interactive selection: {e}")
            return False
    
    def _select_datatype(self) -> bool:
        """Interactive datatype selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_datatype")
        print("="*80)
        print("Select the type of data: single_timepoint or multi_timepoint. You can specify the datatype when running the script with the --datatype option.")
        
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
            self.logger.warning(f"Invalid datatype selection '{user_input}'. Using detected default: {inferred_datatype}")
            self.selected_datatype = inferred_datatype
            
        self.logger.info(f"Selected datatype: {self.selected_datatype}")
        return True
    
    def _select_conditions(self) -> bool:
        """Interactive condition selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_condition")
        print("="*80)
        conditions_list = ', '.join(self.experiment_metadata['conditions'])
        print(f"Review available conditions: {conditions_list}. Select the conditions to analyze. You can specify conditions when running the script with the --conditions option.")
        
        available_items = self.experiment_metadata['conditions']
        self.selected_conditions = self._handle_list_selection(available_items, "conditions", self.selected_conditions)
        return True
    
    def _select_timepoints(self) -> bool:
        """Interactive timepoint selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_timepoints")
        print("="*80)
        timepoints_list = ', '.join(self.experiment_metadata.get('timepoints', []))
        print(f"Review available timepoints in the raw data and decide which timepoints to use for analysis. Current experiment has timepoints: {timepoints_list}. Press Enter when you have made your selection. You can specify timepoints when running the script with --timepoints option.")
        
        available_items = self.experiment_metadata['timepoints']
        self.selected_timepoints = self._handle_list_selection(available_items, "timepoints", self.selected_timepoints)
        return True
    
    def _select_regions(self) -> bool:
        """Interactive region selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_regions")
        print("="*80)
        regions_list = ', '.join(self.experiment_metadata.get('regions', []))
        print(f"Review available regions in the raw data and decide which regions to use for analysis. Current experiment has regions: {regions_list}. Press Enter when you have made your selection. You can specify regions when running the script with --regions option.")
        
        # Only show regions that exist in the selected conditions
        if not self.selected_conditions:
            self.logger.warning("No conditions selected. Please select conditions first.")
            return False
        
        # Filter regions based on the selected conditions
        available_regions_by_condition = {}
        for condition in self.selected_conditions:
            # Use the input directory from the stage's context
            input_dir = getattr(self, 'input_dir', None)
            if not input_dir:
                # Fallback to using the experiment metadata regions
                available_items = self.experiment_metadata.get('regions', [])
                self.selected_regions = self._handle_list_selection(available_items, "regions", self.selected_regions)
                return True
            
            condition_dir = Path(input_dir) / condition
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
                self.logger.warning(f"Selected condition '{condition}' directory not found")
                available_regions_by_condition[condition] = []
        
        # Log the regions available in each condition
        for condition, regions in available_regions_by_condition.items():
            self.logger.info(f"Regions available in condition '{condition}': {regions}")
        
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
            self.logger.error("Selected conditions have different available regions:")
            for condition, regions in available_regions_by_condition.items():
                self.logger.error(f"  '{condition}': {regions}")
            self.logger.error("The workflow cannot proceed with inconsistent regions across conditions.")
            print("\nERROR: Selected conditions have different available regions.")
            print("Please select conditions with the same regions or modify your data structure.")
            print("Press Enter to exit...")
            input()
            return False
            
        # All conditions have the same regions, so we can use the first one's regions list
        available_items = available_regions_by_condition.get(self.selected_conditions[0], [])
        self.logger.info(f"Available regions for selected conditions: {available_items}")
        
        if not available_items:
            self.logger.error("No regions found for the selected conditions")
            print("\nERROR: No regions found for the selected conditions.")
            print("Press Enter to exit...")
            input()
            return False
            
        self.selected_regions = self._handle_list_selection(available_items, "regions", self.selected_regions)
        return True
    
    def _select_segmentation_channel(self) -> bool:
        """Interactive segmentation channel selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_segmentation_channel")
        print("="*80)
        channels_list = ', '.join(self.experiment_metadata['channels'])
        print(f"Select the channel to use for cell segmentation. This channel will be used for binning images and interactive segmentation. Available channels: {channels_list}")
        
        available_items = self.experiment_metadata['channels']
        selected_channels = self._handle_list_selection(available_items, "segmentation channel", [])
        if selected_channels:
            self.segmentation_channel = selected_channels[0]  # Take first selection only
        return True
    
    def _select_analysis_channels(self) -> bool:
        """Interactive analysis channel selection."""
        print("\n" + "="*80)
        print("MANUAL STEP REQUIRED: select_analysis_channels")
        print("="*80)
        channels_list = ', '.join(self.experiment_metadata['channels'])
        print(f"Select the channels to analyze. These channels will be used for all downstream analysis steps. Available channels: {channels_list}")
        
        available_items = self.experiment_metadata['channels']
        self.analysis_channels = self._handle_list_selection(available_items, "analysis channel", self.analysis_channels)
        return True
    
    def _handle_list_selection(self, available_items: List[str], item_type: str, target_list: List[str]) -> List[str]:
        """Handle selection of items from a list with interactive CLI."""
        if not available_items:
            self.logger.warning(f"No {item_type}s available for selection")
            return []
            
        print(f"\nAvailable {item_type}ss:")
        for i, item in enumerate(available_items, 1):
            print(f"{i}. {item}")
            
        print(f"\nInput options for {item_type}ss:")
        print(f"- Enter {item_type}ss as space-separated text (e.g., '{available_items[0]} {available_items[-1] if len(available_items) > 1 else available_items[0]}')")
        print(f"- Enter numbers from the list (e.g., '1 {len(available_items)}')")
        print(f"- Type 'all' to select all {item_type}ss")
        
        while True:
            selection = input(f"\nEnter your selection: ").strip()
            
            if selection.lower() == 'all':
                return available_items
                
            # Try to parse as numbers first
            try:
                indices = [int(x) for x in selection.split()]
                if all(1 <= i <= len(available_items) for i in indices):
                    return [available_items[i-1] for i in indices]
            except ValueError:
                pass
                
            # If not numbers, treat as direct item names
            selected_items = [item.strip() for item in selection.split()]
            if all(item in available_items for item in selected_items):
                return selected_items
                
            print(f"Invalid selection. Please try again.")
    
    def _save_selections_to_config(self):
        """Save the selected parameters to the configuration."""
        try:
            # Update the config with selected parameters using the Config.set method
            self.config.set('data_selection.selected_datatype', self.selected_datatype)
            self.config.set('data_selection.selected_conditions', self.selected_conditions)
            self.config.set('data_selection.selected_timepoints', self.selected_timepoints)
            self.config.set('data_selection.selected_regions', self.selected_regions)
            self.config.set('data_selection.segmentation_channel', self.segmentation_channel)
            self.config.set('data_selection.analysis_channels', self.analysis_channels)
            self.config.set('data_selection.experiment_metadata', self.experiment_metadata)
            
            # Save the updated config
            self.config.save()
            
            self.logger.info("Data selections saved to configuration")
            
        except Exception as e:
            self.logger.error(f"Error saving selections to config: {e}")


class SegmentationStage(StageBase):
    """
    Single-cell Segmentation Stage
    
    Handles image binning and interactive segmentation using Cellpose.
    Includes: bin_images_for_segmentation, interactive_segmentation
    """
    
    def __init__(self, config, logger, stage_name="segmentation"):
        super().__init__(config, logger, stage_name)
        
    def validate_inputs(self, **kwargs) -> bool:
        """Validate inputs for segmentation stage."""
        # Check if required scripts exist
        required_scripts = ["scripts/bin_images.py", "scripts/launch_segmentation_tools.sh"]
        for script in required_scripts:
            if not Path(script).exists():
                self.logger.error(f"Required script not found: {script}")
                return False
        
        # Check if data selection has been completed
        data_selection = self.config.get('data_selection')
        if not data_selection:
            self.logger.error("Data selection has not been completed. Please run data selection first.")
            return False
        
        # Check if required data selection parameters are available
        required_params = ['selected_conditions', 'selected_regions', 'selected_timepoints', 'segmentation_channel']
        missing_params = [param for param in required_params if not data_selection.get(param)]
        if missing_params:
            self.logger.error(f"Missing data selection parameters: {missing_params}")
            return False
        
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the segmentation stage."""
        try:
            self.logger.info("Starting Single-cell Segmentation Stage")
            
            # Get data selection parameters from config
            data_selection = self.config.get('data_selection')
            if not data_selection:
                self.logger.error("No data selection information found in config")
                return False
            
            # Get input and output directories
            input_dir = kwargs.get('input_dir')
            output_dir = kwargs.get('output_dir')
            
            if not input_dir or not output_dir:
                self.logger.error("Input and output directories are required")
                return False
            
            # Step 1: Bin images for segmentation
            self.logger.info("Binning images for segmentation...")
            bin_script = "scripts/bin_images.py"
            bin_args = [
                "--input", input_dir,
                "--output", f"{output_dir}/preprocessed",
                "--verbose"
            ]
            
            # Add data selection parameters
            if data_selection.get('selected_conditions'):
                bin_args.extend(["--conditions"] + data_selection['selected_conditions'])
            if data_selection.get('selected_regions'):
                bin_args.extend(["--regions"] + data_selection['selected_regions'])
            if data_selection.get('selected_timepoints'):
                bin_args.extend(["--timepoints"] + data_selection['selected_timepoints'])
            if data_selection.get('segmentation_channel'):
                bin_args.extend(["--channels", data_selection['segmentation_channel']])
            
            self.logger.info(f"Running bin_images.py with args: {bin_args}")
            result = subprocess.run([bin_script] + bin_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to bin images: {result.stderr}")
                return False
            self.logger.info("Images binned successfully")
            self.logger.info(f"Bin script output: {result.stdout}")
            
            # Step 2: Launch interactive segmentation
            self.logger.info("Launching interactive segmentation tools...")
            seg_script = "scripts/launch_segmentation_tools.sh"
            preprocessed_dir = f"{output_dir}/preprocessed"
            
            # Make sure the script is executable
            seg_script_path = Path(seg_script)
            seg_script_path.chmod(0o755)
            
            result = subprocess.run([seg_script, preprocessed_dir], 
                                  capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to launch segmentation tools: {result.stderr}")
                return False
            self.logger.info("Segmentation tools launched successfully")
            self.logger.info(f"Segmentation script output: {result.stdout}")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Segmentation Stage: {e}")
            return False


class ProcessSingleCellDataStage(StageBase):
    """
    Process Single-cell Data Stage
    
    Handles ROI tracking, resizing, duplication, and cell extraction.
    Includes: roi_tracking, resize_rois, duplicate_rois_for_analysis_channels, extract_cells
    """
    
    def __init__(self, config, logger, stage_name="process_single_cell"):
        super().__init__(config, logger, stage_name)
        
    def validate_inputs(self, **kwargs) -> bool:
        """Validate inputs for process single-cell data stage."""
        required_scripts = [
            "scripts/track_rois.py", "scripts/resize_rois.py", 
            "scripts/duplicate_rois_for_channels.py", "scripts/extract_cells.py"
        ]
        for script in required_scripts:
            if not Path(script).exists():
                self.logger.error(f"Required script not found: {script}")
                return False
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the process single-cell data stage."""
        try:
            self.logger.info("Starting Process Single-cell Data Stage")
            
            # Step 1: ROI tracking (if multiple timepoints)
            if kwargs.get('timepoints') and len(kwargs['timepoints']) > 1:
                self.logger.info("Tracking ROIs across timepoints...")
                track_script = "scripts/track_rois.py"
                track_args = [
                    "--input", f"{kwargs['output_dir']}/preprocessed",
                    "--timepoints"
                ] + kwargs['timepoints'] + ["--recursive"]
                
                result = subprocess.run([track_script] + track_args, capture_output=True, text=True)
                if result.returncode != 0:
                    self.logger.error(f"Failed to track ROIs: {result.stderr}")
                    return False
                self.logger.info("ROI tracking completed successfully")
            
            # Step 2: Resize ROIs
            self.logger.info("Resizing ROIs...")
            resize_script = "scripts/resize_rois.py"
            resize_args = [
                "--input", f"{kwargs['output_dir']}/preprocessed",
                "--output", f"{kwargs['output_dir']}/ROIs",
                "--imagej", self.config.get('imagej_path'),
                "--channel", kwargs.get('segmentation_channel', ''),
                "--macro", "macros/resize_rois.ijm",
                "--auto-close"
            ]
            
            result = subprocess.run([resize_script] + resize_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to resize ROIs: {result.stderr}")
                return False
            self.logger.info("ROIs resized successfully")
            
            # Step 3: Duplicate ROIs for analysis channels
            self.logger.info("Duplicating ROIs for analysis channels...")
            duplicate_script = "scripts/duplicate_rois_for_channels.py"
            duplicate_args = [
                "--roi-dir", f"{kwargs['output_dir']}/ROIs",
                "--channels"
            ] + kwargs.get('analysis_channels', []) + ["--verbose"]
            
            result = subprocess.run([duplicate_script] + duplicate_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to duplicate ROIs: {result.stderr}")
                return False
            self.logger.info("ROIs duplicated successfully")
            
            # Step 4: Extract cells
            self.logger.info("Extracting cells...")
            extract_script = "scripts/extract_cells.py"
            extract_args = [
                "--roi-dir", f"{kwargs['output_dir']}/ROIs",
                "--raw-data-dir", f"{kwargs['output_dir']}/raw_data",
                "--output-dir", f"{kwargs['output_dir']}/cells",
                "--imagej", self.config.get('imagej_path'),
                "--macro", "macros/extract_cells.ijm",
                "--auto-close",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([extract_script] + extract_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to extract cells: {result.stderr}")
                return False
            self.logger.info("Cells extracted successfully")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Process Single-cell Data Stage: {e}")
            return False


class ThresholdGroupedCellsStage(StageBase):
    """
    Threshold Grouped Cells Stage
    
    Handles cell grouping and thresholding of grouped cells.
    Includes: group_cells, threshold_grouped_cells
    """
    
    def __init__(self, config, logger, stage_name="threshold_grouped_cells"):
        super().__init__(config, logger, stage_name)
        
    def validate_inputs(self, **kwargs) -> bool:
        """Validate inputs for threshold grouped cells stage."""
        required_scripts = ["scripts/group_cells.py", "scripts/otsu_threshold_grouped_cells.py"]
        for script in required_scripts:
            if not Path(script).exists():
                self.logger.error(f"Required script not found: {script}")
                return False
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the threshold grouped cells stage."""
        try:
            self.logger.info("Starting Threshold Grouped Cells Stage")
            
            # Step 1: Group cells
            self.logger.info("Grouping cells...")
            group_script = "scripts/group_cells.py"
            group_args = [
                "--cells-dir", f"{kwargs['output_dir']}/cells",
                "--output-dir", f"{kwargs['output_dir']}/grouped_cells",
                "--bins", str(kwargs.get('bins', 5)),
                "--force-clusters",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([group_script] + group_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to group cells: {result.stderr}")
                return False
            self.logger.info("Cells grouped successfully")
            
            # Step 2: Threshold grouped cells
            self.logger.info("Thresholding grouped cells...")
            threshold_script = "scripts/otsu_threshold_grouped_cells.py"
            threshold_args = [
                "--input-dir", f"{kwargs['output_dir']}/grouped_cells",
                "--output-dir", f"{kwargs['output_dir']}/grouped_masks",
                "--imagej", self.config.get('imagej_path'),
                "--macro", "macros/threshold_grouped_cells.ijm",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([threshold_script] + threshold_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to threshold grouped cells: {result.stderr}")
                return False
            self.logger.info("Grouped cells thresholded successfully")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Threshold Grouped Cells Stage: {e}")
            return False


class AnalysisStage(StageBase):
    """
    Analysis Stage
    
    Handles mask combination, cell mask creation, analysis, and metadata inclusion.
    Includes: combine_masks, create_cell_masks, analyze_cell_masks, include_group_metadata
    """
    
    def __init__(self, config, logger, stage_name="analysis"):
        super().__init__(config, logger, stage_name)
        
    def validate_inputs(self, **kwargs) -> bool:
        """Validate inputs for analysis stage."""
        required_scripts = [
            "scripts/combine_masks.py", "scripts/create_cell_masks.py",
            "scripts/analyze_cell_masks.py", "scripts/include_group_metadata.py"
        ]
        for script in required_scripts:
            if not Path(script).exists():
                self.logger.error(f"Required script not found: {script}")
                return False
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the analysis stage."""
        try:
            self.logger.info("Starting Analysis Stage")
            
            # Step 1: Combine masks
            self.logger.info("Combining masks...")
            combine_script = "scripts/combine_masks.py"
            combine_args = [
                "--input-dir", f"{kwargs['output_dir']}/grouped_masks",
                "--output-dir", f"{kwargs['output_dir']}/combined_masks",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([combine_script] + combine_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to combine masks: {result.stderr}")
                return False
            self.logger.info("Masks combined successfully")
            
            # Step 2: Create cell masks
            self.logger.info("Creating cell masks...")
            create_masks_script = "scripts/create_cell_masks.py"
            create_masks_args = [
                "--roi-dir", f"{kwargs['output_dir']}/ROIs",
                "--mask-dir", f"{kwargs['output_dir']}/combined_masks",
                "--output-dir", f"{kwargs['output_dir']}/masks",
                "--imagej", self.config.get('imagej_path'),
                "--macro", "macros/create_cell_masks.ijm",
                "--auto-close",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([create_masks_script] + create_masks_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to create cell masks: {result.stderr}")
                return False
            self.logger.info("Cell masks created successfully")
            
            # Step 3: Analyze cell masks
            self.logger.info("Analyzing cell masks...")
            analyze_script = "scripts/analyze_cell_masks.py"
            analyze_args = [
                "--input", f"{kwargs['output_dir']}/masks",
                "--output", f"{kwargs['output_dir']}/analysis",
                "--imagej", self.config.get('imagej_path'),
                "--macro", "macros/analyze_cell_masks.ijm",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            # Add optional arguments if provided
            if kwargs.get('regions'):
                analyze_args.extend(["--regions"] + kwargs['regions'])
            if kwargs.get('timepoints'):
                analyze_args.extend(["--timepoints"] + kwargs['timepoints'])
            
            result = subprocess.run([analyze_script] + analyze_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to analyze cell masks: {result.stderr}")
                return False
            self.logger.info("Cell masks analyzed successfully")
            
            # Step 4: Include group metadata
            self.logger.info("Including group metadata...")
            metadata_script = "scripts/include_group_metadata.py"
            metadata_args = [
                "--grouped-cells-dir", f"{kwargs['output_dir']}/grouped_cells",
                "--analysis-dir", f"{kwargs['output_dir']}/analysis",
                "--output-dir", kwargs['output_dir'],
                "--overwrite",
                "--replace",
                "--verbose",
                "--channels"
            ] + kwargs.get('analysis_channels', [])
            
            result = subprocess.run([metadata_script] + metadata_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to include group metadata: {result.stderr}")
                return False
            self.logger.info("Group metadata included successfully")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Analysis Stage: {e}")
            return False 