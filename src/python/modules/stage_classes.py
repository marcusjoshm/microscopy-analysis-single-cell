"""
Stage Classes for Microscopy Single-Cell Analysis Pipeline

Implements specific pipeline stages for microscopy analysis.
"""

import os
import subprocess
import time
from pathlib import Path
from typing import Dict, Any, List, Optional
import logging

from ..core.stages import StageBase, FileProcessingStage
from ..core.config import Config
from ..core.logger import PipelineLogger


class PreprocessingStage(StageBase):
    """
    Preprocessing stage for microscopy data.
    
    Handles data organization, file preparation, and initial setup.
    """
    
    def __init__(self, config: Config, logger: PipelineLogger, stage_name: str):
        """Initialize preprocessing stage."""
        super().__init__(config, logger, stage_name)
    
    def validate_inputs(self, **kwargs) -> bool:
        """Validate preprocessing inputs."""
        input_dir = kwargs.get('input_dir')
        if not input_dir or not Path(input_dir).exists():
            self.logger.error(f"Input directory does not exist: {input_dir}")
            return False
        
        # Check for required files
        input_path = Path(input_dir)
        tiff_files = list(input_path.glob("*.tif")) + list(input_path.glob("*.tiff"))
        if not tiff_files:
            self.logger.error(f"No TIFF files found in input directory: {input_dir}")
            return False
        
        self.logger.info(f"Found {len(tiff_files)} TIFF files for preprocessing")
        return True
    
    def run(self, **kwargs) -> bool:
        """Execute preprocessing stage."""
        try:
            input_dir = kwargs['input_dir']
            output_dir = kwargs['output_dir']
            directories = kwargs['directories']
            
            self.logger.info("Starting preprocessing stage")
            
            # Create preprocessing directories
            preprocessed_dir = directories['preprocessed']
            preprocessed_dir.mkdir(parents=True, exist_ok=True)
            
            # Run preprocessing scripts
            success = self._run_preprocessing_scripts(input_dir, preprocessed_dir, **kwargs)
            
            if success:
                self.logger.info("Preprocessing completed successfully")
            else:
                self.logger.error("Preprocessing failed")
            
            return success
            
        except Exception as e:
            self.logger.error(f"Error in preprocessing stage: {e}")
            return False
    
    def _run_preprocessing_scripts(self, input_dir: str, output_dir: str, **kwargs) -> bool:
        """Run preprocessing scripts."""
        try:
            # Run bin_images.py script
            script_path = Path("scripts/bin_images.py")
            if script_path.exists():
                self.logger.info("Running image binning script")
                result = subprocess.run([
                    "python", str(script_path),
                    "--input", input_dir,
                    "--output", str(output_dir)
                ], capture_output=True, text=True)
                
                if result.returncode != 0:
                    self.logger.error(f"Image binning failed: {result.stderr}")
                    return False
                
                self.logger.info("Image binning completed")
            else:
                self.logger.warning("Image binning script not found, skipping")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error running preprocessing scripts: {e}")
            return False


class SegmentationStage(StageBase):
    """
    Cell segmentation stage using Cellpose.
    
    Handles cell segmentation and ROI creation.
    """
    
    def __init__(self, config: Config, logger: PipelineLogger, stage_name: str):
        """Initialize segmentation stage."""
        super().__init__(config, logger, stage_name)
    
    def validate_inputs(self, **kwargs) -> bool:
        """Validate segmentation inputs."""
        directories = kwargs.get('directories', {})
        preprocessed_dir = directories.get('preprocessed')
        
        if not preprocessed_dir or not Path(preprocessed_dir).exists():
            self.logger.error("Preprocessed directory not found")
            return False
        
        # Check for preprocessed files
        preprocessed_path = Path(preprocessed_dir)
        bin_files = list(preprocessed_path.rglob("bin*.tif"))
        if not bin_files:
            self.logger.error("No binned image files found for segmentation")
            return False
        
        self.logger.info(f"Found {len(bin_files)} files for segmentation")
        return True
    
    def run(self, **kwargs) -> bool:
        """Execute segmentation stage."""
        try:
            directories = kwargs['directories']
            segmentation_channel = kwargs.get('segmentation_channel')
            
            self.logger.info("Starting cell segmentation stage")
            
            # Create segmentation directories
            segmented_dir = directories['segmented']
            segmented_dir.mkdir(parents=True, exist_ok=True)
            
            # Run segmentation scripts
            success = self._run_segmentation_scripts(directories, segmentation_channel, **kwargs)
            
            if success:
                self.logger.info("Cell segmentation completed successfully")
            else:
                self.logger.error("Cell segmentation failed")
            
            return success
            
        except Exception as e:
            self.logger.error(f"Error in segmentation stage: {e}")
            return False
    
    def _run_segmentation_scripts(self, directories: Dict[str, Path], 
                                 segmentation_channel: Optional[str], **kwargs) -> bool:
        """Run segmentation scripts."""
        try:
            preprocessed_dir = directories['preprocessed']
            segmented_dir = directories['segmented']
            
            # Run create_cell_masks.py script
            script_path = Path("scripts/create_cell_masks.py")
            if script_path.exists():
                self.logger.info("Running cell mask creation script")
                
                cmd = [
                    "python", str(script_path),
                    "--input", str(preprocessed_dir),
                    "--output", str(segmented_dir)
                ]
                
                if segmentation_channel:
                    cmd.extend(["--channel", segmentation_channel])
                
                result = subprocess.run(cmd, capture_output=True, text=True)
                
                if result.returncode != 0:
                    self.logger.error(f"Cell mask creation failed: {result.stderr}")
                    return False
                
                self.logger.info("Cell mask creation completed")
            else:
                self.logger.warning("Cell mask creation script not found, skipping")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error running segmentation scripts: {e}")
            return False


class AnalysisStage(StageBase):
    """
    Analysis stage for segmented cells.
    
    Handles cell analysis, thresholding, and result generation.
    """
    
    def __init__(self, config: Config, logger: PipelineLogger, stage_name: str):
        """Initialize analysis stage."""
        super().__init__(config, logger, stage_name)
    
    def validate_inputs(self, **kwargs) -> bool:
        """Validate analysis inputs."""
        directories = kwargs.get('directories', {})
        segmented_dir = directories.get('segmented')
        
        if not segmented_dir or not Path(segmented_dir).exists():
            self.logger.error("Segmented directory not found")
            return False
        
        # Check for segmentation results
        segmented_path = Path(segmented_dir)
        roi_files = list(segmented_path.rglob("*.zip"))
        if not roi_files:
            self.logger.error("No ROI files found for analysis")
            return False
        
        self.logger.info(f"Found {len(roi_files)} ROI files for analysis")
        return True
    
    def run(self, **kwargs) -> bool:
        """Execute analysis stage."""
        try:
            directories = kwargs['directories']
            analysis_channels = kwargs.get('analysis_channels', [])
            bins = kwargs.get('bins', 5)
            
            self.logger.info("Starting cell analysis stage")
            
            # Create analysis directories
            analyzed_dir = directories['analyzed']
            analyzed_dir.mkdir(parents=True, exist_ok=True)
            
            # Run analysis scripts
            success = self._run_analysis_scripts(directories, analysis_channels, bins, **kwargs)
            
            if success:
                self.logger.info("Cell analysis completed successfully")
            else:
                self.logger.error("Cell analysis failed")
            
            return success
            
        except Exception as e:
            self.logger.error(f"Error in analysis stage: {e}")
            return False
    
    def _run_analysis_scripts(self, directories: Dict[str, Path], 
                             analysis_channels: List[str], bins: int, **kwargs) -> bool:
        """Run analysis scripts."""
        try:
            segmented_dir = directories['segmented']
            analyzed_dir = directories['analyzed']
            
            # Run group_cells.py script
            script_path = Path("scripts/group_cells.py")
            if script_path.exists():
                self.logger.info("Running cell grouping script")
                
                cmd = [
                    "python", str(script_path),
                    "--input", str(segmented_dir),
                    "--output", str(analyzed_dir),
                    "--bins", str(bins)
                ]
                
                if analysis_channels:
                    cmd.extend(["--channels"] + analysis_channels)
                
                result = subprocess.run(cmd, capture_output=True, text=True)
                
                if result.returncode != 0:
                    self.logger.error(f"Cell grouping failed: {result.stderr}")
                    return False
                
                self.logger.info("Cell grouping completed")
            else:
                self.logger.warning("Cell grouping script not found, skipping")
            
            # Run otsu_threshold_grouped_cells.py script
            threshold_script = Path("scripts/otsu_threshold_grouped_cells.py")
            if threshold_script.exists():
                self.logger.info("Running Otsu thresholding script")
                
                cmd = [
                    "python", str(threshold_script),
                    "--input", str(segmented_dir),
                    "--output", str(analyzed_dir)
                ]
                
                result = subprocess.run(cmd, capture_output=True, text=True)
                
                if result.returncode != 0:
                    self.logger.error(f"Otsu thresholding failed: {result.stderr}")
                    return False
                
                self.logger.info("Otsu thresholding completed")
            else:
                self.logger.warning("Otsu thresholding script not found, skipping")
            
            return True
            
        except Exception as e:
            self.logger.error(f"Error running analysis scripts: {e}")
            return False 