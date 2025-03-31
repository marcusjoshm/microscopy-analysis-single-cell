#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Bin microscopy images for cell segmentation.

This script recursively searches for t00_ch01.tif and t03_ch01.tif files in the specified
input directory, performs 4x4 binning and contrast enhancement, and saves the processed 
images to the output directory.
"""

import os
import argparse
import glob
from pathlib import Path
import re
import logging
import numpy as np
from skimage import io, exposure
from skimage.transform import downscale_local_mean
import tifffile
import sys

# Set up logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s', stream=sys.stdout)
logger = logging.getLogger(__name__)

def bin_image(image, bin_factor=4):
    """
    Bin an image by the specified factor using local mean.
    
    Args:
        image (numpy.ndarray): Input image
        bin_factor (int): Binning factor
        
    Returns:
        numpy.ndarray: Binned image
    """
    return downscale_local_mean(image, (bin_factor, bin_factor))


# Contrast enhancement function removed as requested


def process_images(input_dir, output_dir, bin_factor=4,
                   target_conditions=None, target_regions=None, 
                   target_timepoints=None, target_channels=None):
    """
    Process images in input directory and save to output directory, filtering by selections.
    
    Args:
        input_dir (str): Input directory path
        output_dir (str): Output directory path
        bin_factor (int): Binning factor
        target_conditions (list): List of conditions to process
        target_regions (list): List of regions to process
        target_timepoints (list): List of timepoints to process
        target_channels (list): List of channels to process
    """
    input_path = Path(input_dir)
    output_path = Path(output_dir)
    
    logger.info(f"Starting image binning process.")
    logger.info(f"Input directory: {input_path}")
    logger.info(f"Output directory: {output_path}")
    logger.info(f"Bin factor: {bin_factor}")
    logger.info(f"Target Conditions: {target_conditions}")
    logger.info(f"Target Regions: {target_regions}")
    logger.info(f"Target Timepoints: {target_timepoints}")
    logger.info(f"Target Channels: {target_channels}")
    
    # Create output directory if it doesn't exist
    output_path.mkdir(parents=True, exist_ok=True)
    
    # Find all .tif files recursively
    all_files = list(input_path.glob("**/*.tif"))
    logger.info(f"Found {len(all_files)} total .tif files in {input_path}.")

    # Convert selection lists to sets for efficient lookup, if they exist
    selected_conditions = set(target_conditions) if target_conditions else None
    selected_regions = set(target_regions) if target_regions else None
    selected_timepoints = set(target_timepoints) if target_timepoints else None
    selected_channels = set(target_channels) if target_channels else None
    logger.info(f"Filter sets created - Conditions: {selected_conditions}, Regions: {selected_regions}, Timepoints: {selected_timepoints}, Channels: {selected_channels}")

    processed_count = 0
    
    for file_path in all_files:
        # Convert to Path object for easier manipulation
        file_path = Path(file_path)
        logger.debug(f"Checking file: {file_path}")
        
        # --- Filter based on selections ---
        try:
            # Extract condition by looking for a parent directory starting with 'Dish_'
            current_condition = None
            # Go up the directory tree from the file's parent
            for parent in file_path.parents:
                if parent.name.startswith('Dish_'):
                    current_condition = parent.name
                    break # Found the condition directory
                # Stop searching if we go above the input directory base
                if parent == input_path:
                    break 
                
            if not current_condition:
                logger.warning(f"Could not find condition directory (starting with 'Dish_') for {file_path}. Skipping.")
                continue
                
            if selected_conditions and current_condition not in selected_conditions:
                logger.debug(f"Skipping {file_path} (condition mismatch: {current_condition} not in {selected_conditions})")
                continue
                
            # Extract region, timepoint, channel from filename
            filename = file_path.name
            region_match = re.search(r'(R_\d+)', filename)
            timepoint_match = re.search(r'(t\d+)', filename)
            channel_match = re.search(r'(ch\d+)', filename)
            
            current_region = region_match.group(1) if region_match else None
            current_timepoint = timepoint_match.group(1) if timepoint_match else None
            current_channel = channel_match.group(1) if channel_match else None
            logger.debug(f"  Extracted metadata - Condition: {current_condition}, Region: {current_region}, Timepoint: {current_timepoint}, Channel: {current_channel}")

            # Apply filters
            if selected_regions and current_region not in selected_regions:
                logger.debug(f"Skipping {file_path} (region mismatch: {current_region} not in {selected_regions})")
                continue
            if selected_timepoints and current_timepoint not in selected_timepoints:
                logger.debug(f"Skipping {file_path} (timepoint mismatch: {current_timepoint} not in {selected_timepoints})")
                continue
            if selected_channels and current_channel not in selected_channels:
                logger.debug(f"Skipping {file_path} (channel mismatch: {current_channel} not in {selected_channels})")
                continue
                
        except Exception as e:
            logger.warning(f"Could not parse metadata or apply filters for {file_path}. Skipping. Error: {e}")
            continue
        # --- End Filter ---
        
        logger.info(f"Processing {file_path}...")
        
        # Determine relative path to maintain directory structure
        try:
            # Find the condition directory path again to build the relative path
            condition_dir_path = None
            for parent in file_path.parents:
                if parent.name == current_condition: # Use the already extracted condition name
                    condition_dir_path = parent
                    break
            
            if not condition_dir_path:
                # This shouldn't happen if the filtering logic above worked, but as a safeguard:
                logger.error(f"Could not re-find condition directory for {file_path}. Cannot determine output path.")
                continue

            # Relative path should preserve structure *below* the condition directory
            rel_path_from_condition = file_path.relative_to(condition_dir_path)
            # Output path: output_base / condition_name / relative_path_from_condition
            output_file = output_path / current_condition / rel_path_from_condition.parent / f"bin4x4_{file_path.name}"

            # Create output directory for the specific condition/structure if it doesn't exist
            output_file.parent.mkdir(parents=True, exist_ok=True)

            # Read the image
            image = io.imread(file_path)
            
            # Bin the image
            binned_image = bin_image(image, bin_factor=bin_factor)
            
            # Save the processed image (contrast enhancement removed)
            tifffile.imwrite(output_file, binned_image.astype(image.dtype))
            
            logger.info(f"Saved binned image to {output_file}")
            processed_count += 1

        except Exception as e:
            logger.error(f"Error processing or saving file {file_path}: {e}", exc_info=True)
    
    logger.info("Image binning completed.")
    logger.info(f"Processed {processed_count} files matching the criteria.")


def main():
    parser = argparse.ArgumentParser(description="Bin microscopy images for cell segmentation")
    parser.add_argument("--input", "-i", required=True, help="Input directory containing raw image data")
    parser.add_argument("--output", "-o", required=True, help="Output directory for binned images")
    parser.add_argument("--conditions", nargs='+', help="List of conditions to process (e.g., Dish_1 Dish_2)")
    parser.add_argument("--regions", nargs='+', help="List of regions to process (e.g., R_1 R_2)")
    parser.add_argument("--timepoints", nargs='+', help="List of timepoints to process (e.g., t00 t03)")
    parser.add_argument("--channels", nargs='+', help="List of channels to process (e.g., ch00 ch01)")
    parser.add_argument("--bin-factor", "-b", type=int, default=4, help="Binning factor (default: 4)")
    parser.add_argument("--verbose", "-v", action="store_true", help="Enable verbose debug logging")
    # Percentile parameter removed as contrast enhancement is no longer needed
    
    args = parser.parse_args()
    
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG) # Set root logger to DEBUG if verbose
        logger.setLevel(logging.DEBUG) # Also set specific logger
        logger.info("Verbose logging enabled.")

    process_images(args.input, args.output, args.bin_factor, 
                   args.conditions, args.regions, args.timepoints, args.channels)


if __name__ == "__main__":
    main()