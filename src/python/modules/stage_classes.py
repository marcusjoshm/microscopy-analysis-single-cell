#!/usr/bin/env python3
"""
Stage Classes for Microscopy Single-Cell Analysis Pipeline

Contains the concrete implementations of each pipeline stage.
"""

import subprocess
import os
from pathlib import Path
from typing import Dict, Any, List
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
            
            # Step 1: Prepare input structure
            self.logger.info("Preparing input structure...")
            prepare_script = "scripts/prepare_input_structure.sh"
            if Path(prepare_script).exists():
                result = subprocess.run([prepare_script, kwargs['input_dir']], 
                                      capture_output=True, text=True)
                if result.returncode != 0:
                    self.logger.error(f"Failed to prepare input structure: {result.stderr}")
                    return False
                self.logger.info("Input structure prepared successfully")
            else:
                self.logger.warning(f"Prepare input structure script not found: {prepare_script}")
            
            # Step 2-7: Data selection steps (these are typically manual or interactive)
            self.logger.info("Data selection steps completed")
            self.logger.info("Note: Data type, conditions, timepoints, regions, and channels should be selected")
            self.logger.info("Use --datatype, --conditions, --timepoints, --regions, --segmentation-channel, --analysis-channels")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error in Data Selection Stage: {e}")
            return False


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
        return True
    
    def run(self, **kwargs) -> bool:
        """Run the segmentation stage."""
        try:
            self.logger.info("Starting Single-cell Segmentation Stage")
            
            # Step 1: Bin images for segmentation
            self.logger.info("Binning images for segmentation...")
            bin_script = "scripts/bin_images.py"
            bin_args = [
                "--input", f"{kwargs['output_dir']}/raw_data",
                "--output", f"{kwargs['output_dir']}/preprocessed",
                "--verbose"
            ]
            
            # Add optional arguments if provided
            if kwargs.get('conditions'):
                bin_args.extend(["--conditions"] + kwargs['conditions'])
            if kwargs.get('regions'):
                bin_args.extend(["--regions"] + kwargs['regions'])
            if kwargs.get('timepoints'):
                bin_args.extend(["--timepoints"] + kwargs['timepoints'])
            if kwargs.get('segmentation_channel'):
                bin_args.extend(["--channels", kwargs['segmentation_channel']])
            
            result = subprocess.run([bin_script] + bin_args, capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to bin images: {result.stderr}")
                return False
            self.logger.info("Images binned successfully")
            
            # Step 2: Launch interactive segmentation
            self.logger.info("Launching interactive segmentation tools...")
            seg_script = "scripts/launch_segmentation_tools.sh"
            result = subprocess.run([seg_script, f"{kwargs['output_dir']}/preprocessed"], 
                                  capture_output=True, text=True)
            if result.returncode != 0:
                self.logger.error(f"Failed to launch segmentation tools: {result.stderr}")
                return False
            self.logger.info("Segmentation tools launched successfully")
            
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