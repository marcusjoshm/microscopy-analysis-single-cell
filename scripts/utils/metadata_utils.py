#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Metadata Utilities for Single Cell Analysis Workflow

This module provides centralized metadata management and consistent path
construction for the single cell analysis workflow. It ensures that metadata
collected from user selections at the beginning of the workflow is propagated
consistently to all workflow steps.
"""

import os
import json
import re
from pathlib import Path
import logging
from typing import Dict, List, Optional, Union, Any, Tuple

# Configure logging
logger = logging.getLogger("metadata_utils")

class MetadataManager:
    """
    Central manager for workflow metadata and path construction.
    
    This class handles:
    1. Loading and saving workflow metadata from/to JSON
    2. Consistent path construction for all workflow steps
    3. File naming conventions across the workflow
    """
    
    def __init__(self, base_output_dir: Union[str, Path], state_file: Optional[str] = None):
        """
        Initialize the metadata manager.
        
        Args:
            base_output_dir: Base output directory for the workflow
            state_file: Path to the workflow state file (if None, will look for default)
        """
        self.base_output_dir = Path(base_output_dir)
        
        # Default paths
        self.preprocessed_dir = self.base_output_dir / "preprocessed"
        self.rois_dir = self.base_output_dir / "ROIs"
        self.cells_dir = self.base_output_dir / "cells"
        self.masks_dir = self.base_output_dir / "masks"
        self.combined_masks_dir = self.base_output_dir / "combined_masks"
        self.grouped_cells_dir = self.base_output_dir / "grouped_cells"
        self.grouped_masks_dir = self.base_output_dir / "grouped_masks"
        self.analysis_dir = self.base_output_dir / "analysis"
        
        # Load workflow state from file if provided
        self.metadata = {}
        self.state_file = state_file or self.base_output_dir / "workflow_state.json"
        self._load_workflow_state()
    
    def _load_workflow_state(self) -> None:
        """Load workflow state from JSON file if it exists."""
        if Path(self.state_file).exists():
            try:
                with open(self.state_file, 'r') as f:
                    self.metadata = json.load(f)
                logger.info(f"Loaded workflow state from {self.state_file}")
            except Exception as e:
                logger.error(f"Error loading workflow state: {e}")
                self.metadata = {}
        else:
            logger.warning(f"Workflow state file not found: {self.state_file}")
            self.metadata = {}
    
    def save_workflow_state(self) -> None:
        """Save workflow state to JSON file."""
        try:
            with open(self.state_file, 'w') as f:
                json.dump(self.metadata, f, indent=2)
            logger.info(f"Saved workflow state to {self.state_file}")
        except Exception as e:
            logger.error(f"Error saving workflow state: {e}")
    
    def update_metadata(self, **kwargs) -> None:
        """
        Update workflow metadata with new values.
        
        Args:
            **kwargs: Key-value pairs to update in the metadata
        """
        self.metadata.update(kwargs)
    
    # --- Metadata Access Methods ---
    
    def get_conditions(self) -> List[str]:
        """Get the list of selected conditions."""
        return self.metadata.get('selected_conditions', [])
    
    def get_regions(self) -> List[str]:
        """Get the list of selected regions."""
        return self.metadata.get('selected_regions', [])
    
    def get_timepoints(self) -> List[str]:
        """Get the list of selected timepoints."""
        return self.metadata.get('selected_timepoints', [])
    
    def get_channels(self) -> List[str]:
        """Get the list of selected channels."""
        return self.metadata.get('selected_channels', [])
    
    # --- Path Construction Methods ---
    
    def get_condition_dir(self, base_dir: Union[str, Path], condition: str) -> Path:
        """
        Get the path to a condition directory within a base directory.
        
        Args:
            base_dir: Base directory (e.g., preprocessed_dir, rois_dir)
            condition: Name of the condition
            
        Returns:
            Path to the condition directory
        """
        return Path(base_dir) / condition
    
    def get_region_timepoint_dir(self, base_dir: Union[str, Path], condition: str, 
                                region: str, timepoint: str) -> Path:
        """
        Get the path to a region-timepoint directory.
        
        Args:
            base_dir: Base directory (e.g., cells_dir, masks_dir)
            condition: Name of the condition
            region: Name of the region
            timepoint: Timepoint identifier (e.g., t00)
            
        Returns:
            Path to the region-timepoint directory
        """
        condition_dir = self.get_condition_dir(base_dir, condition)
        region_timepoint = f"{region}_{timepoint}"
        return condition_dir / region_timepoint
    
    def format_roi_filename(self, region: str, timepoint: str, channel: Optional[str] = None) -> str:
        """
        Format a consistent ROI filename.
        
        Args:
            region: Name of the region
            timepoint: Timepoint identifier
            channel: Optional channel identifier
            
        Returns:
            Formatted ROI filename
        """
        if channel:
            return f"ROIs_{region}_{channel}_{timepoint}_rois.zip"
        else:
            return f"ROIs_{region}_{timepoint}_rois.zip"
    
    def format_image_filename(self, region: str, timepoint: str, channel: str) -> str:
        """
        Format a consistent image filename.
        
        Args:
            region: Name of the region
            timepoint: Timepoint identifier
            channel: Channel identifier
            
        Returns:
            Formatted image filename
        """
        return f"{region}_{channel}_{timepoint}.tif"
    
    def format_cell_filename(self, cell_number: int) -> str:
        """
        Format a consistent cell filename.
        
        Args:
            cell_number: Cell number/index
            
        Returns:
            Formatted cell filename
        """
        return f"CELL{cell_number}.tif"
    
    def format_mask_filename(self, cell_number: int) -> str:
        """
        Format a consistent mask filename.
        
        Args:
            cell_number: Cell number/index
            
        Returns:
            Formatted mask filename
        """
        return f"MASK_CELL{cell_number}.tif"
    
    # --- Path Construction and File Lookup Methods ---
    
    def get_roi_path(self, condition: str, region: str, timepoint: str, 
                    channel: Optional[str] = None) -> Path:
        """
        Get the path to a ROI file.
        
        Args:
            condition: Name of the condition
            region: Name of the region
            timepoint: Timepoint identifier
            channel: Optional channel identifier
            
        Returns:
            Path to the ROI file
        """
        condition_dir = self.get_condition_dir(self.rois_dir, condition)
        roi_filename = self.format_roi_filename(region, timepoint, channel)
        return condition_dir / roi_filename
    
    def get_cell_path(self, condition: str, region: str, timepoint: str, 
                     cell_number: int) -> Path:
        """
        Get the path to a cell file.
        
        Args:
            condition: Name of the condition
            region: Name of the region
            timepoint: Timepoint identifier
            cell_number: Cell number/index
            
        Returns:
            Path to the cell file
        """
        region_time_dir = self.get_region_timepoint_dir(self.cells_dir, condition, region, timepoint)
        cell_filename = self.format_cell_filename(cell_number)
        return region_time_dir / cell_filename
    
    def get_mask_path(self, condition: str, region: str, timepoint: str, 
                     cell_number: int) -> Path:
        """
        Get the path to a mask file.
        
        Args:
            condition: Name of the condition
            region: Name of the region
            timepoint: Timepoint identifier
            cell_number: Cell number/index
            
        Returns:
            Path to the mask file
        """
        region_time_dir = self.get_region_timepoint_dir(self.masks_dir, condition, region, timepoint)
        mask_filename = self.format_mask_filename(cell_number)
        return region_time_dir / mask_filename
    
    def find_roi_files(self, condition: Optional[str] = None, 
                      region: Optional[str] = None, 
                      timepoint: Optional[str] = None) -> List[Path]:
        """
        Find ROI files matching the given criteria.
        
        Args:
            condition: Optional condition filter
            region: Optional region filter
            timepoint: Optional timepoint filter
            
        Returns:
            List of paths to matching ROI files
        """
        base_dir = self.rois_dir
        
        if condition:
            base_dir = self.get_condition_dir(base_dir, condition)
        
        pattern = "ROIs_"
        if region:
            pattern += f"{region}_"
        
        if timepoint:
            pattern += f"*{timepoint}*"
        
        pattern += "*_rois.zip"
        
        # Recursive glob to find all matching files
        return list(base_dir.glob(f"**/{pattern}"))
    
    def find_image_files(self, condition: Optional[str] = None,
                        region: Optional[str] = None,
                        timepoint: Optional[str] = None,
                        channel: Optional[str] = None) -> List[Path]:
        """
        Find image files matching the given criteria.
        
        Args:
            condition: Optional condition filter
            region: Optional region filter
            timepoint: Optional timepoint filter
            channel: Optional channel filter
            
        Returns:
            List of paths to matching image files
        """
        base_dir = self.base_output_dir / "raw_data"
        
        if condition:
            base_dir = self.get_condition_dir(base_dir, condition)
        
        pattern = ""
        if region:
            pattern += f"{region}_"
        
        if channel:
            pattern += f"*{channel}*"
        
        if timepoint:
            pattern += f"*{timepoint}*"
        
        pattern += "*.tif"
        
        # Recursive glob to find all matching files
        return list(base_dir.glob(f"**/{pattern}"))
    
    def parse_roi_filename(self, filename: str) -> Dict[str, str]:
        """
        Parse a ROI filename to extract components.
        
        Args:
            filename: ROI filename to parse
            
        Returns:
            Dictionary with extracted components (region, timepoint, channel)
        """
        result = {}
        
        # Log the original filename for debugging
        logger.debug(f"Parsing ROI filename: {filename}")
        
        # Strip ROIs_ prefix if present
        if filename.startswith("ROIs_"):
            clean_name = filename[5:]
        else:
            clean_name = filename
        
        # Strip _rois.zip suffix if present
        if clean_name.endswith("_rois.zip"):
            clean_name = clean_name[:-9]
        elif clean_name.endswith(".zip"):
            clean_name = clean_name[:-4]
        
        logger.debug(f"After stripping prefixes/suffixes: {clean_name}")
        
        # Extract channel if present
        channel_match = re.search(r'_(ch\d+)_', clean_name)
        if channel_match:
            result['channel'] = channel_match.group(1)
            # Remove channel part from the filename for easier parsing of other components
            clean_name = clean_name.replace(f"_{result['channel']}_", "_")
            logger.debug(f"Extracted channel: {result['channel']}")
        
        # Extract timepoint if present (should be at the end after removing channel)
        timepoint_match = re.search(r'_(t\d+)$', clean_name)
        if timepoint_match:
            result['timepoint'] = timepoint_match.group(1)
            # Remove timepoint part from the filename
            clean_name = clean_name[:-(len(result['timepoint'])+1)]
            logger.debug(f"Extracted timepoint: {result['timepoint']}")
        
        # The remaining part is the region
        result['region'] = clean_name
        logger.debug(f"Extracted region: {result['region']}")
        
        return result
    
    def parse_image_filename(self, filename: str) -> Dict[str, str]:
        """
        Parse an image filename to extract components.
        
        Args:
            filename: Image filename to parse
            
        Returns:
            Dictionary with extracted components (region, timepoint, channel)
        """
        result = {}
        
        # Log the original filename for debugging
        logger.debug(f"Parsing image filename: {filename}")
        
        # Strip .tif extension if present
        if filename.endswith(".tif") or filename.endswith(".tiff"):
            clean_name = os.path.splitext(filename)[0]
        else:
            clean_name = filename
        
        logger.debug(f"After stripping extension: {clean_name}")
        
        # Extract channel if present
        channel_match = re.search(r'_(ch\d+)_', clean_name) or re.search(r'_(ch\d+)$', clean_name)
        if channel_match:
            result['channel'] = channel_match.group(1)
            logger.debug(f"Extracted channel: {result['channel']}")
        
        # Extract timepoint if present
        timepoint_match = re.search(r'_(t\d+)_', clean_name) or re.search(r'_(t\d+)$', clean_name)
        if timepoint_match:
            result['timepoint'] = timepoint_match.group(1)
            logger.debug(f"Extracted timepoint: {result['timepoint']}")
        
        # Extract region (this is more complex)
        # Remove channel and timepoint parts
        temp_name = re.sub(r'_(ch\d+|t\d+)_', '_', clean_name)
        temp_name = re.sub(r'_(ch\d+|t\d+)$', '', temp_name)
        
        # Clean up any trailing or duplicate underscores
        region = re.sub(r'_+', '_', temp_name).strip('_')
        result['region'] = region
        logger.debug(f"Extracted region: {result['region']}")
        
        return result


# --- Standalone utility functions ---

def create_directory_structure(base_dir: Union[str, Path], 
                             conditions: List[str] = None,
                             regions: List[str] = None,
                             timepoints: List[str] = None) -> None:
    """
    Create a consistent directory structure for the workflow.
    
    Args:
        base_dir: Base directory for the workflow
        conditions: List of conditions
        regions: List of regions
        timepoints: List of timepoints
    """
    base_dir = Path(base_dir)
    
    # Create main subdirectories
    main_dirs = [
        "preprocessed", "ROIs", "cells", "masks", 
        "combined_masks", "grouped_cells", "grouped_masks", "analysis"
    ]
    
    for dir_name in main_dirs:
        (base_dir / dir_name).mkdir(parents=True, exist_ok=True)
    
    # If conditions are provided, create condition subdirectories
    if conditions:
        for condition in conditions:
            for dir_name in main_dirs:
                (base_dir / dir_name / condition).mkdir(parents=True, exist_ok=True)
    
    # If regions and timepoints are provided, create region_timepoint subdirectories
    if conditions and regions and timepoints:
        for condition in conditions:
            for region in regions:
                for timepoint in timepoints:
                    region_timepoint = f"{region}_{timepoint}"
                    for dir_name in ["cells", "masks"]:
                        (base_dir / dir_name / condition / region_timepoint).mkdir(parents=True, exist_ok=True)


def load_workflow_metadata(base_dir: Union[str, Path]) -> Dict[str, Any]:
    """
    Load workflow metadata from the workflow state file.
    
    Args:
        base_dir: Base directory for the workflow
        
    Returns:
        Dictionary containing workflow metadata
    """
    state_file = Path(base_dir) / "workflow_state.json"
    if state_file.exists():
        try:
            with open(state_file, 'r') as f:
                return json.load(f)
        except Exception as e:
            logger.error(f"Error loading workflow state: {e}")
    
    return {}


def get_image_path_components(image_path: Union[str, Path]) -> Dict[str, str]:
    """
    Extract components from an image path.
    
    Args:
        image_path: Path to an image file
        
    Returns:
        Dictionary with extracted components (condition, region, timepoint, channel)
    """
    image_path = Path(image_path)
    
    result = {
        'filename': image_path.name
    }
    
    # Extract components from filename
    filename = image_path.name
    
    # Get condition from parent directory structure
    parts = image_path.parts
    for i, part in enumerate(parts):
        if part == "raw_data" and i + 1 < len(parts):
            result['condition'] = parts[i + 1]
            break
    
    # Extract region, timepoint, channel from filename
    # Strip .tif extension
    if filename.endswith(".tif") or filename.endswith(".tiff"):
        filename = os.path.splitext(filename)[0]
    
    # Extract channel
    channel_match = re.search(r'_(ch\d+)_', filename) or re.search(r'_(ch\d+)$', filename)
    if channel_match:
        result['channel'] = channel_match.group(1)
    
    # Extract timepoint
    timepoint_match = re.search(r'_(t\d+)_', filename) or re.search(r'_(t\d+)$', filename)
    if timepoint_match:
        result['timepoint'] = timepoint_match.group(1)
    
    # Extract region (this is more complex)
    # Remove channel and timepoint parts
    temp_name = re.sub(r'_(ch\d+|t\d+)_', '_', filename)
    temp_name = re.sub(r'_(ch\d+|t\d+)$', '', temp_name)
    
    # Clean up any trailing or duplicate underscores
    region = re.sub(r'_+', '_', temp_name).strip('_')
    result['region'] = region
    
    return result


def convert_to_new_path_format(old_path: Union[str, Path], 
                              base_dir: Union[str, Path],
                              file_type: str) -> Path:
    """
    Convert an old path to the new standardized format.
    
    Args:
        old_path: Original file path
        base_dir: Base directory for the workflow
        file_type: Type of file ('roi', 'cell', 'mask', 'image')
        
    Returns:
        Path in the new standardized format
    """
    components = get_image_path_components(old_path)
    metadata_mgr = MetadataManager(base_dir)
    
    condition = components.get('condition', 'unknown_condition')
    region = components.get('region', 'unknown_region')
    timepoint = components.get('timepoint', 't00')
    channel = components.get('channel', 'ch00')
    
    if file_type == 'roi':
        return metadata_mgr.get_roi_path(condition, region, timepoint, channel)
    elif file_type == 'cell':
        # Extract cell number from filename
        if 'filename' in components and 'CELL' in components['filename']:
            cell_match = re.search(r'CELL(\d+)', components['filename'])
            if cell_match:
                cell_number = int(cell_match.group(1))
                return metadata_mgr.get_cell_path(condition, region, timepoint, cell_number)
    elif file_type == 'mask':
        # Extract cell number from filename
        if 'filename' in components and 'MASK_CELL' in components['filename']:
            cell_match = re.search(r'MASK_CELL(\d+)', components['filename'])
            if cell_match:
                cell_number = int(cell_match.group(1))
                return metadata_mgr.get_mask_path(condition, region, timepoint, cell_number)
    elif file_type == 'image':
        # Return path to raw image
        raw_data_dir = Path(base_dir) / "raw_data"
        return raw_data_dir / condition / f"{region}_{channel}_{timepoint}.tif"
    
    # Fallback - return the original path
    return Path(old_path)


def find_files_by_metadata(base_dir: Union[str, Path],
                         file_type: str,
                         condition: Optional[str] = None,
                         region: Optional[str] = None,
                         timepoint: Optional[str] = None,
                         channel: Optional[str] = None) -> List[Path]:
    """
    Find files matching the specified metadata criteria.
    
    Args:
        base_dir: Base directory for the workflow
        file_type: Type of file ('roi', 'cell', 'mask', 'image')
        condition: Optional condition filter
        region: Optional region filter
        timepoint: Optional timepoint filter
        channel: Optional channel filter
        
    Returns:
        List of paths to matching files
    """
    metadata_mgr = MetadataManager(base_dir)
    
    if file_type == 'roi':
        return metadata_mgr.find_roi_files(condition, region, timepoint)
    elif file_type == 'image':
        return metadata_mgr.find_image_files(condition, region, timepoint, channel)
    elif file_type in ['cell', 'mask']:
        # Determine the correct base directory
        if file_type == 'cell':
            type_dir = metadata_mgr.cells_dir
        else:  # mask
            type_dir = metadata_mgr.masks_dir
        
        # Start with the condition directory if provided
        if condition:
            base_search_dir = metadata_mgr.get_condition_dir(type_dir, condition)
        else:
            base_search_dir = type_dir
            
        # Build a pattern based on region and timepoint
        dir_pattern = ""
        if region and timepoint:
            dir_pattern = f"{region}_{timepoint}"
        elif region:
            dir_pattern = f"{region}_*"
        elif timepoint:
            dir_pattern = f"*_{timepoint}"
        
        # Find all matching directories
        matching_dirs = list(base_search_dir.glob(f"**/{dir_pattern}"))
        
        # Find all cell/mask files in the matching directories
        all_files = []
        for dir_path in matching_dirs:
            if file_type == 'cell':
                all_files.extend(list(dir_path.glob("CELL*.tif")))
            else:  # mask
                all_files.extend(list(dir_path.glob("MASK_CELL*.tif")))
        
        return all_files
    
    # Fallback - empty list if file type not recognized
    return [] 