#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Extract Individual Cells Script for Single Cell Analysis Workflow

This script uses ROIs to extract individual cells from the original images
and saves them as separate files in the cells directory.
"""

import os
import sys
import argparse
import subprocess
import logging
import tempfile
import time
import re
from pathlib import Path

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    stream=sys.stdout  # Ensure logging goes to stdout for visibility
)
logger = logging.getLogger("CellExtractor")

def create_imagej_macro(roi_file, image_file, output_dir, headless=False, auto_close=False):
    """
    Create an ImageJ macro to extract cells from an image file using ROIs.
    
    Args:
        roi_file: Path to the ROI file
        image_file: Path to the raw image file
        output_dir: Directory to save extracted cell images
        headless: Whether to run in headless mode
        auto_close: Whether to close ImageJ when done
        
    Returns:
        Path to the generated macro file
    """
    # Ensure paths use forward slashes for ImageJ
    roi_file_path = str(roi_file).replace('\\', '/')
    image_file_path = str(image_file).replace('\\', '/')
    output_dir_path = str(output_dir).replace('\\', '/')
    
    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Create a temporary macro file
    macro_file = "macros/temp_extract_cells.ijm"
    os.makedirs(os.path.dirname(macro_file), exist_ok=True)
    
    # Create the macro content
    macro_content = f"""// Cell Extraction Macro
// Extracts individual cells from an image file using ROIs

// Input parameters
roiFile = "{roi_file_path}";
imageFile = "{image_file_path}";
outputDir = "{output_dir_path}";

// Print parameters for debugging
print("ROI file: " + roiFile);
print("Image file: " + imageFile);
print("Output directory: " + outputDir);

// Create output directory if it doesn't exist
File.makeDirectory(outputDir);

// Reset ROI Manager
roiManager("reset");

// Open ROIs
print("Opening ROI file");
roiManager("Open", roiFile);
roi_count = roiManager("count");
print("Found " + roi_count + " ROIs");

if (roi_count == 0) {{
    print("No ROIs found in file: " + roiFile);
    exit("No ROIs found");
}}

// Open the image
print("Opening image file");
open(imageFile);
if (nImages == 0) {{
    print("Failed to open image: " + imageFile);
    exit("Failed to open image");
}}

// Get the title of the open image
regionTitle = getTitle();
print("Image opened: " + regionTitle);

// Set batch mode for faster processing
setBatchMode(true);

// Process each ROI
for (i = 0; i < roi_count; i++) {{
    // Duplicate the region image so the original remains unaltered.
    selectWindow(regionTitle);
    run("Duplicate...", "title=TempRegion duplicate");
    
    // Apply the ROI (from the ROI Manager) to the duplicate.
    roiManager("select", i);
    nslices = nSlices();
    for (s = 1; s <= nslices; s++) {{
        setSlice(s);
        run("Clear Outside");
    }}
    
    // Save the cell
    cell_num = i + 1;
    cell_path = outputDir + "/CELL" + cell_num + ".tif";
    print("Saving cell " + cell_num + " to: " + cell_path);
    saveAs("Tiff", cell_path);
    
    // Close the duplicate
    close();
}}

// Close the original image
selectWindow(regionTitle);
close();

// Clear ROI Manager
roiManager("reset");

// Turn off batch mode
setBatchMode(false);

print("Cell extraction completed for " + roi_count + " cells");

// Auto-close if requested
"""
    
    # Add auto-close command if requested
    if auto_close:
        if headless:
            macro_content += """
// Exit ImageJ
run("Quit");
"""
        else:
            macro_content += """
// Exit ImageJ
eval("script", "System.exit(0);");
"""
    
    # Write the macro to file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return macro_file

def run_imagej_macro(imagej_path, macro_path, headless=False):
    """
    Run an ImageJ macro.
    
    Args:
        imagej_path: Path to the ImageJ executable
        macro_path: Path to the macro file
        headless: Whether to run in headless mode
        
    Returns:
        True if successful, False otherwise
    """
    # Build the command
    cmd = [imagej_path]
    
    if headless:
        cmd.extend(['-batch', macro_path])
    else:
        cmd.extend(['-macro', macro_path])
    
    logger.info(f"Running ImageJ command: {cmd}")
    
    # Run the command
    try:
        process = subprocess.run(
            cmd,
            check=False,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        
        # Log output
        if process.stdout:
            for line in process.stdout.splitlines():
                logger.info(f"ImageJ output: {line}")
        
        if process.stderr:
            for line in process.stderr.splitlines():
                logger.warning(f"ImageJ error: {line}")
        
        # Check if cells were created even if ImageJ reported an error
        # Sometimes ImageJ returns error codes but still processes the cells
        time.sleep(1)  # Small delay to ensure files are written
        
        return True
    
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}")
        return False

def find_image_for_roi(roi_file, raw_data_dir):
    """
    Find the corresponding image file for a ROI file.
    
    Args:
        roi_file: Path to the ROI file
        raw_data_dir: Directory containing raw data
        
    Returns:
        Path to the corresponding image file, or None if not found
    """
    # Extract metadata from ROI filename
    roi_path = Path(roi_file)
    roi_filename = roi_path.name
    
    # Get the condition from the parent directory
    condition = roi_path.parent.name
    condition_dir = Path(raw_data_dir) / condition
    
    logger.info(f"Looking for image file for ROI: {roi_filename}")
    logger.info(f"Condition: {condition}")
    
    # Parse ROI filename to extract components
    # Example: ROIs_R_1_Merged_ch01_t00_rois.zip
    
    # Remove the ROIs_ prefix and _rois.zip suffix
    cleaned_name = roi_filename
    if cleaned_name.startswith("ROIs_"):
        cleaned_name = cleaned_name[5:]  # Remove "ROIs_"
    
    if cleaned_name.endswith("_rois.zip"):
        cleaned_name = cleaned_name[:-9]  # Remove "_rois.zip"
    elif cleaned_name.endswith(".zip"):
        cleaned_name = cleaned_name[:-4]  # Remove ".zip"
    
    logger.info(f"Cleaned ROI name: {cleaned_name}")
    
    # Extract components using regex
    channel_match = re.search(r'_(ch\d+)_', cleaned_name)
    timepoint_match = re.search(r'_(t\d+)(?:_|$)', cleaned_name)
    
    # Default to empty strings if not found
    channel = channel_match.group(1) if channel_match else ""
    timepoint = timepoint_match.group(1) if timepoint_match else ""
    
    # The region is the remaining part of the name
    # For example, if cleaned_name is "R_1_Merged_ch01_t00", 
    # and we remove "_ch01_t00", we get "R_1_Merged"
    region = cleaned_name
    if channel:
        region = region.replace(f"_{channel}", "")
    if timepoint:
        region = region.replace(f"_{timepoint}", "")
    
    # Clean up any trailing underscores
    region = region.rstrip("_")
    
    logger.info(f"Extracted components - Region: {region}, Channel: {channel}, Timepoint: {timepoint}")
    
    # Use the extracted components to find the image file
    # Look in all subdirectories of the condition directory
    image_pattern = f"{region}_{channel}_{timepoint}.tif"
    logger.info(f"Looking for image file matching pattern: {image_pattern}")
    
    # Use recursive glob to find the file
    possible_files = list(condition_dir.glob(f"**/{image_pattern}"))
    
    if possible_files:
        logger.info(f"Found matching image file: {possible_files[0]}")
        return possible_files[0]
    
    # If not found with the pattern, search more broadly
    logger.warning(f"No exact match found, trying more flexible search")
    
    # Try partial matches based on region, channel, and timepoint
    for subdir in condition_dir.glob("**"):
        if subdir.is_dir():
            logger.debug(f"Searching in subdirectory: {subdir}")
            
            # Look for files matching parts of the pattern
            for file in subdir.glob("*.tif"):
                filename = file.name
                
                # Check if the filename contains all the extracted components
                matches_region = region in filename
                matches_channel = channel in filename if channel else True
                matches_timepoint = timepoint in filename if timepoint else True
                
                if matches_region and matches_channel and matches_timepoint:
                    logger.info(f"Found partial match: {file}")
                    return file
    
    logger.error(f"No matching image file found for ROI: {roi_filename}")
    return None

def create_output_dir_for_roi(roi_file, output_base_dir):
    """
    Create an appropriate output directory structure for extracted cells.
    
    Args:
        roi_file: Path to the ROI file
        output_base_dir: Base directory for outputs
        
    Returns:
        Path to the output directory for cells
    """
    # Extract metadata from ROI filename
    roi_path = Path(roi_file)
    roi_filename = roi_path.name
    
    # Get the condition from the parent directory
    condition = roi_path.parent.name
    
    # Extract components from the ROI filename
    # Example: ROIs_R_1_Merged_ch01_t00_rois.zip
    
    # Remove the ROIs_ prefix and _rois.zip suffix
    cleaned_name = roi_filename
    if cleaned_name.startswith("ROIs_"):
        cleaned_name = cleaned_name[5:]  # Remove "ROIs_"
    
    if cleaned_name.endswith("_rois.zip"):
        cleaned_name = cleaned_name[:-9]  # Remove "_rois.zip"
    elif cleaned_name.endswith(".zip"):
        cleaned_name = cleaned_name[:-4]  # Remove ".zip"
    
    # Extract components using regex
    channel_match = re.search(r'_(ch\d+)_', cleaned_name)
    timepoint_match = re.search(r'_(t\d+)(?:_|$)', cleaned_name)
    
    # Default to empty strings if not found
    channel = channel_match.group(1) if channel_match else ""
    timepoint = timepoint_match.group(1) if timepoint_match else ""
    
    # Remove channel and timepoint parts to get the region
    region = cleaned_name
    if channel:
        region = region.replace(f"_{channel}", "")
    if timepoint:
        region = region.replace(f"_{timepoint}", "")
    
    # Clean up any trailing underscores
    region = region.rstrip("_")
    
    # Create the output directory structure
    # Format: output_base_dir/condition/region_timepoint
    output_dir = Path(output_base_dir) / condition / f"{region}_{timepoint}"
    os.makedirs(output_dir, exist_ok=True)
    
    logger.info(f"Created output directory: {output_dir}")
    return output_dir

def main():
    """Main function to extract individual cells."""
    parser = argparse.ArgumentParser(description='Extract individual cells using ROIs')
    
    parser.add_argument('--roi-dir', '-i', required=True,
                        help='Directory containing ROI files')
    parser.add_argument('--raw-data-dir', '-d', required=True,
                        help='Directory containing original images')
    parser.add_argument('--output-dir', '-o', required=True,
                        help='Directory where individual cells will be saved')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    parser.add_argument('--regions', '-r', nargs='+',
                        help='List of regions to process')
    parser.add_argument('--timepoints', '-t', nargs='+',
                        help='List of timepoints to process')
    parser.add_argument('--conditions', '-c', nargs='+',
                        help='List of conditions to process')
    parser.add_argument('--auto-close', action='store_true',
                        help='Close ImageJ when the macro completes')
    parser.add_argument('--verbose', '-v', action='store_true',
                        help='Enable more verbose logging')
    parser.add_argument('--headless', action='store_true',
                        help='Run ImageJ in headless mode')
    
    args = parser.parse_args()
    
    # Set logging level based on verbose flag
    if args.verbose:
        logger.setLevel(logging.DEBUG)
        logger.debug("Verbose logging enabled")
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Find all ROI files in the ROI directory
    roi_dir = Path(args.roi_dir)
    if not roi_dir.exists():
        logger.error(f"ROI directory does not exist: {roi_dir}")
        return 1
    
    # Find all ROI files in all subdirectories of the ROI directory
    roi_files = []
    
    # Check what's in the ROI directory
    logger.info(f"ROI directory contents:")
    for condition_dir in roi_dir.glob("*"):
        if condition_dir.is_dir() and not condition_dir.name.startswith('.'):
            logger.info(f"  Directory: {condition_dir.name}")
            # Check for ROI files in this condition directory
            condition_roi_files = list(condition_dir.glob("*.zip"))
            logger.info(f"    Found {len(condition_roi_files)} ROI files in {condition_dir.name}")
            
            # Filter ROI files based on regions if specified
            if args.regions:
                filtered_roi_files = []
                for roi_file in condition_roi_files:
                    roi_name = roi_file.name
                    for region in args.regions:
                        if region in roi_name:
                            filtered_roi_files.append(roi_file)
                            break
                condition_roi_files = filtered_roi_files
                
            # Filter ROI files based on timepoints if specified
            if args.timepoints:
                filtered_roi_files = []
                for roi_file in condition_roi_files:
                    roi_name = roi_file.name
                    for timepoint in args.timepoints:
                        if timepoint in roi_name:
                            filtered_roi_files.append(roi_file)
                            break
                condition_roi_files = filtered_roi_files
            
            # Add the filtered ROI files to our list
            roi_files.extend(condition_roi_files)
    
    # Filter by conditions if specified
    if args.conditions:
        filtered_roi_files = []
        for roi_file in roi_files:
            condition = roi_file.parent.name
            if condition in args.conditions:
                filtered_roi_files.append(roi_file)
        roi_files = filtered_roi_files
    
    if not roi_files:
        logger.error(f"No ROI files found in {roi_dir}")
        return 1
    
    logger.info(f"Found {len(roi_files)} ROI files to process")
    
    # Process each ROI file
    successful_extractions = 0
    total_cells_extracted = 0
    
    for roi_file in roi_files:
        logger.info(f"Processing ROI file: {roi_file}")
        
        # Find the corresponding image file
        image_file = find_image_for_roi(roi_file, args.raw_data_dir)
        
        if image_file:
            # Create output directory for this ROI
            cell_output_dir = create_output_dir_for_roi(roi_file, args.output_dir)
            
            # Create and run the ImageJ macro
            macro_file = create_imagej_macro(
                roi_file,
                image_file,
                cell_output_dir,
                headless=args.headless,
                auto_close=args.auto_close
            )
            
            success = run_imagej_macro(
                args.imagej,
                macro_file,
                headless=args.headless
            )
            
            # Check if cells were actually extracted
            cell_files = list(cell_output_dir.glob("CELL*.tif"))
            if cell_files:
                logger.info(f"Successfully extracted {len(cell_files)} cells to {cell_output_dir}")
                successful_extractions += 1
                total_cells_extracted += len(cell_files)
            else:
                logger.warning(f"No cell files were created in {cell_output_dir}")
        else:
            logger.error(f"Could not find matching image file for {roi_file}")
    
    logger.info(f"Cell extraction completed. Successfully processed {successful_extractions} of {len(roi_files)} ROI files.")
    logger.info(f"Total cells extracted: {total_cells_extracted}")
    
    return 0 if successful_extractions > 0 else 1

if __name__ == "__main__":
    sys.exit(main())