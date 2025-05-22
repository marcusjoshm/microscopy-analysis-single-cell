#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Path Utilities for Single Cell Analysis Workflow

This module provides utilities for directory structure creation, path normalization,
and file management to ensure a consistent directory structure across the workflow.
"""

import os
import sys
import shutil
import glob
import re
from pathlib import Path
import logging
from typing import Dict, List, Optional, Union, Any, Tuple

# Import our metadata utilities
try:
    from .metadata_utils import MetadataManager, get_image_path_components
except ImportError:
    # Fallback for when running standalone
    from metadata_utils import MetadataManager, get_image_path_components

# Configure logging
logger = logging.getLogger("path_utils")

def ensure_directory_exists(directory_path: Union[str, Path]) -> Path:
    """
    Ensure a directory exists, creating it if necessary.
    
    Args:
        directory_path: Path to the directory
        
    Returns:
        Path object for the directory
    """
    directory_path = Path(directory_path)
    directory_path.mkdir(parents=True, exist_ok=True)
    return directory_path

def create_workflow_directories(base_output_dir: Union[str, Path]) -> Dict[str, Path]:
    """
    Create the standard directory structure for the workflow.
    
    Args:
        base_output_dir: Base output directory
        
    Returns:
        Dictionary mapping directory names to Path objects
    """
    base_dir = Path(base_output_dir)
    
    # Define standard directories
    directories = {
        "root": base_dir,
        "preprocessed": base_dir / "preprocessed",
        "rois": base_dir / "ROIs",
        "cells": base_dir / "cells",
        "masks": base_dir / "masks",
        "combined_masks": base_dir / "combined_masks",
        "grouped_cells": base_dir / "grouped_cells",
        "grouped_masks": base_dir / "grouped_masks",
        "analysis": base_dir / "analysis",
        "raw_data": base_dir / "raw_data"
    }
    
    # Create each directory
    for name, path in directories.items():
        ensure_directory_exists(path)
        logger.info(f"Created directory: {path}")
    
    return directories

def create_condition_directories(base_output_dir: Union[str, Path], 
                               conditions: List[str]) -> None:
    """
    Create condition-specific directories in all standard workflow directories.
    
    Args:
        base_output_dir: Base output directory
        conditions: List of condition names
    """
    directories = create_workflow_directories(base_output_dir)
    
    # Skip root directory
    del directories["root"]
    
    # Create condition subdirectories
    for condition in conditions:
        for name, dir_path in directories.items():
            condition_dir = dir_path / condition
            ensure_directory_exists(condition_dir)
            logger.debug(f"Created condition directory: {condition_dir}")

def create_region_timepoint_directories(base_output_dir: Union[str, Path],
                                      conditions: List[str],
                                      regions: List[str],
                                      timepoints: List[str]) -> None:
    """
    Create region-timepoint directories for cell and mask outputs.
    
    Args:
        base_output_dir: Base output directory
        conditions: List of condition names
        regions: List of region names
        timepoints: List of timepoint identifiers
    """
    base_dir = Path(base_output_dir)
    
    # Only create region_timepoint dirs for cells and masks
    target_dirs = ["cells", "masks"]
    
    for condition in conditions:
        for dir_name in target_dirs:
            condition_dir = base_dir / dir_name / condition
            ensure_directory_exists(condition_dir)
            
            for region in regions:
                for timepoint in timepoints:
                    region_timepoint = f"{region}_{timepoint}"
                    region_time_dir = condition_dir / region_timepoint
                    ensure_directory_exists(region_time_dir)
                    logger.debug(f"Created region-timepoint directory: {region_time_dir}")

def normalize_roi_path(roi_path: Union[str, Path], 
                     metadata_mgr: MetadataManager) -> Path:
    """
    Normalize a ROI file path to conform to the standard directory structure.
    
    Args:
        roi_path: Original ROI file path
        metadata_mgr: MetadataManager instance
        
    Returns:
        Normalized path for the ROI file
    """
    # Extract components from the path
    components = get_image_path_components(roi_path)
    
    # Get required components with defaults
    condition = components.get('condition', 'unknown_condition')
    region = components.get('region', 'unknown_region')
    timepoint = components.get('timepoint', 't00')
    channel = components.get('channel')
    
    # Generate standard path
    return metadata_mgr.get_roi_path(condition, region, timepoint, channel)

def normalize_cell_path(cell_path: Union[str, Path],
                      metadata_mgr: MetadataManager) -> Path:
    """
    Normalize a cell file path to conform to the standard directory structure.
    
    Args:
        cell_path: Original cell file path
        metadata_mgr: MetadataManager instance
        
    Returns:
        Normalized path for the cell file
    """
    # Extract components from the path
    components = get_image_path_components(cell_path)
    
    # Get required components with defaults
    condition = components.get('condition', 'unknown_condition')
    region = components.get('region', 'unknown_region')
    timepoint = components.get('timepoint', 't00')
    
    # Extract cell number from filename
    cell_number = 1  # Default
    if 'filename' in components:
        match = re.search(r'CELL(\d+)', components['filename'])
        if match:
            cell_number = int(match.group(1))
    
    # Generate standard path
    return metadata_mgr.get_cell_path(condition, region, timepoint, cell_number)

def normalize_mask_path(mask_path: Union[str, Path],
                      metadata_mgr: MetadataManager) -> Path:
    """
    Normalize a mask file path to conform to the standard directory structure.
    
    Args:
        mask_path: Original mask file path
        metadata_mgr: MetadataManager instance
        
    Returns:
        Normalized path for the mask file
    """
    # Extract components from the path
    components = get_image_path_components(mask_path)
    
    # Get required components with defaults
    condition = components.get('condition', 'unknown_condition')
    region = components.get('region', 'unknown_region')
    timepoint = components.get('timepoint', 't00')
    
    # Extract cell number from filename
    cell_number = 1  # Default
    if 'filename' in components:
        match = re.search(r'CELL(\d+)', components['filename'])
        if match:
            cell_number = int(match.group(1))
    
    # Generate standard path
    return metadata_mgr.get_mask_path(condition, region, timepoint, cell_number)

def migrate_file_to_standard_location(file_path: Union[str, Path],
                                    file_type: str,
                                    metadata_mgr: MetadataManager,
                                    copy: bool = True) -> Optional[Path]:
    """
    Migrate a file to its standard location in the workflow directory structure.
    
    Args:
        file_path: Original file path
        file_type: Type of file ('roi', 'cell', 'mask', 'image')
        metadata_mgr: MetadataManager instance
        copy: Whether to copy (True) or move (False) the file
        
    Returns:
        Path to the migrated file, or None if migration failed
    """
    file_path = Path(file_path)
    
    if not file_path.exists():
        logger.error(f"File does not exist: {file_path}")
        return None
    
    # Determine the target path based on file type
    if file_type == 'roi':
        target_path = normalize_roi_path(file_path, metadata_mgr)
    elif file_type == 'cell':
        target_path = normalize_cell_path(file_path, metadata_mgr)
    elif file_type == 'mask':
        target_path = normalize_mask_path(file_path, metadata_mgr)
    else:
        logger.error(f"Unsupported file type: {file_type}")
        return None
    
    # Create parent directory if it doesn't exist
    ensure_directory_exists(target_path.parent)
    
    # Copy or move the file
    try:
        if copy:
            shutil.copy2(file_path, target_path)
            logger.info(f"Copied file to standard location: {target_path}")
        else:
            shutil.move(file_path, target_path)
            logger.info(f"Moved file to standard location: {target_path}")
        return target_path
    except Exception as e:
        logger.error(f"Error migrating file {file_path}: {e}")
        return None

def generate_ijm_path_mappings(output_dir: Union[str, Path]) -> Dict[str, str]:
    """
    Generate variable mappings for ImageJ macro paths.
    
    Args:
        output_dir: Base output directory
        
    Returns:
        Dictionary mapping variable names to directory paths
    """
    output_dir = Path(output_dir)
    
    # Standard directory mappings for ImageJ macros
    mappings = {
        "input_dir": str(output_dir / "preprocessed"),
        "output_dir": str(output_dir / "ROIs"),
        "roiParent": str(output_dir / "ROIs"),
        "rawDataParent": str(output_dir / "raw_data"),
        "outputParent": str(output_dir / "cells"),
        "cellsDir": str(output_dir / "grouped_cells"),
        "outputDir": str(output_dir / "grouped_masks"),
        "maskParent": str(output_dir / "combined_masks"),
        "masksDir": str(output_dir / "masks")
    }
    
    return mappings

def create_path_lookup_file(output_dir: Union[str, Path]) -> Path:
    """
    Create a path lookup file for use by scripts and macros.
    
    Args:
        output_dir: Base output directory
        
    Returns:
        Path to the created lookup file
    """
    output_dir = Path(output_dir)
    mappings = generate_ijm_path_mappings(output_dir)
    
    # Create a JSON file with the mappings
    lookup_file = output_dir / "path_lookup.json"
    
    try:
        import json
        with open(lookup_file, 'w') as f:
            json.dump(mappings, f, indent=2)
        logger.info(f"Created path lookup file: {lookup_file}")
        return lookup_file
    except Exception as e:
        logger.error(f"Error creating path lookup file: {e}")
        return None

def update_ijm_paths(ijm_file: Union[str, Path], 
                    output_dir: Union[str, Path]) -> bool:
    """
    Update paths in an ImageJ macro file to use the standard directory structure.
    
    Args:
        ijm_file: Path to the ImageJ macro file
        output_dir: Base output directory
        
    Returns:
        True if successful, False otherwise
    """
    ijm_file = Path(ijm_file)
    
    if not ijm_file.exists():
        logger.error(f"ImageJ macro file does not exist: {ijm_file}")
        return False
    
    # Generate path mappings
    mappings = generate_ijm_path_mappings(output_dir)
    
    try:
        # Read the file
        with open(ijm_file, 'r') as f:
            content = f.read()
        
        # Create a backup
        backup_file = ijm_file.with_suffix(ijm_file.suffix + '.bak')
        shutil.copy2(ijm_file, backup_file)
        
        # Update paths
        for var_name, path in mappings.items():
            # Look for variable assignments
            pattern = fr'{var_name}\s*=\s*"([^"]*)";'
            replacement = f'{var_name} = "{path}";'
            content = re.sub(pattern, replacement, content)
        
        # Write the updated file
        with open(ijm_file, 'w') as f:
            f.write(content)
        
        logger.info(f"Updated paths in ImageJ macro: {ijm_file}")
        return True
    except Exception as e:
        logger.error(f"Error updating paths in {ijm_file}: {e}")
        return False

def scan_and_update_all_ijm_files(macros_dir: Union[str, Path],
                                output_dir: Union[str, Path]) -> List[Path]:
    """
    Scan a directory for ImageJ macro files and update their paths.
    
    Args:
        macros_dir: Directory containing ImageJ macro files
        output_dir: Base output directory
        
    Returns:
        List of paths to updated macro files
    """
    macros_dir = Path(macros_dir)
    
    if not macros_dir.exists() or not macros_dir.is_dir():
        logger.error(f"Macros directory does not exist: {macros_dir}")
        return []
    
    # Find all .ijm files
    ijm_files = list(macros_dir.glob("*.ijm"))
    
    updated_files = []
    for ijm_file in ijm_files:
        if update_ijm_paths(ijm_file, output_dir):
            updated_files.append(ijm_file)
    
    logger.info(f"Updated paths in {len(updated_files)} ImageJ macro files")
    return updated_files 