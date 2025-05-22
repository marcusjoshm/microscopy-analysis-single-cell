#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Create Cell Masks Script for Single Cell Analysis Workflow

This script generates an ImageJ macro to create individual cell masks by applying ROIs
to the combined mask images. It processes ROIs from the ROIs directory and combined
masks from the combined_masks directory, saving individual cell masks to the masks directory.
"""

import os
import sys
import argparse
import subprocess
import logging
import re
from pathlib import Path
import time

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("CellMaskCreator")

def find_matching_mask_for_roi(roi_file, mask_dir):
    """
    Find the corresponding mask file for a ROI file.
    
    Args:
        roi_file (Path): Path to the ROI file
        mask_dir (Path): Directory containing mask files
    
    Returns:
        Path: Path to the matching mask file, or None if not found
    """
    # Extract metadata from ROI filename
    roi_path = Path(roi_file)
    roi_filename = roi_path.name
    
    # Get the condition from the parent directory
    condition = roi_path.parent.name
    condition_mask_dir = Path(mask_dir) / condition
    
    if not condition_mask_dir.exists():
        logger.warning(f"Condition directory not found in mask dir: {condition_mask_dir}")
        return None
    
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
    
    # Extract components using regex
    channel_match = re.search(r'_(ch\d+)_', cleaned_name)
    timepoint_match = re.search(r'_(t\d+)(?:_|$)', cleaned_name)
    
    # Default to empty strings if not found
    channel = channel_match.group(1) if channel_match else ""
    timepoint = timepoint_match.group(1) if timepoint_match else ""
    
    # The region is the remaining part of the name
    region = cleaned_name
    if channel:
        region = region.replace(f"_{channel}", "")
    if timepoint:
        region = region.replace(f"_{timepoint}", "")
    
    # Clean up any trailing underscores
    region = region.rstrip("_")
    
    logger.info(f"Extracted components - Region: {region}, Timepoint: {timepoint}")
    
    # Look for mask files in the condition directory
    # First try the exact match
    mask_pattern = f"MASK_{region}_{timepoint}.tif"
    logger.info(f"Looking for mask file matching pattern: {mask_pattern}")
    
    mask_files = list(condition_mask_dir.glob(mask_pattern))
    if mask_files:
        logger.info(f"Found matching mask file: {mask_files[0]}")
        return mask_files[0]
    
    # Try with .tiff extension
    mask_pattern = f"MASK_{region}_{timepoint}.tiff"
    mask_files = list(condition_mask_dir.glob(mask_pattern))
    if mask_files:
        logger.info(f"Found matching mask file: {mask_files[0]}")
        return mask_files[0]
    
    # Try just finding any mask file for this region/timepoint
    mask_files = list(condition_mask_dir.glob(f"MASK_{region}*.tif"))
    if mask_files:
        logger.info(f"Found matching mask file: {mask_files[0]}")
        return mask_files[0]
    
    # Try even more flexible search
    mask_files = list(condition_mask_dir.glob("MASK_*.tif"))
    if mask_files:
        logger.info(f"Found potential mask file: {mask_files[0]}")
        return mask_files[0]
    
    logger.warning(f"No matching mask file found for ROI: {roi_file}")
    return None

def create_output_dir_for_roi(roi_file, output_base_dir):
    """
    Create an appropriate output directory structure for cell masks.
    
    Args:
        roi_file (Path): Path to the ROI file
        output_base_dir (Path): Base directory for outputs
        
    Returns:
        Path: Path to the output directory for cell masks
    """
    # Extract metadata from ROI filename
    roi_path = Path(roi_file)
    roi_filename = roi_path.name
    
    # Get the condition from the parent directory
    condition = roi_path.parent.name
    
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
    
    # Extract components using regex
    channel_match = re.search(r'_(ch\d+)_', cleaned_name)
    timepoint_match = re.search(r'_(t\d+)(?:_|$)', cleaned_name)
    
    # Default to empty strings if not found
    channel = channel_match.group(1) if channel_match else ""
    timepoint = timepoint_match.group(1) if timepoint_match else ""
    
    # The region is the remaining part of the name
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

def create_macro_file(roi_file, mask_file, output_dir, auto_close=False):
    """
    Create an ImageJ macro file for creating individual cell masks.
    
    Args:
        roi_file (str): Path to the ROI file
        mask_file (str): Path to the mask file
        output_dir (str): Output directory for individual cell masks
        auto_close (bool): Whether to add a line to close ImageJ when the macro completes
        
    Returns:
        str: Path to the created macro file
    """
    # Ensure paths use forward slashes for ImageJ
    roi_file_path = str(roi_file).replace('\\', '/')
    mask_file_path = str(mask_file).replace('\\', '/')
    output_dir_path = str(output_dir).replace('\\', '/')
    
    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Create a macro file
    macro_file = Path("macros/create_cell_masks.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Generate the macro content
    macro_content = f"""// Cell Mask Creation Macro
// Creates individual cell masks by applying ROIs to a combined mask image

// Input parameters
roiFile = "{roi_file_path}";
maskFile = "{mask_file_path}";
outputDir = "{output_dir_path}";

// Print parameters for debugging
print("ROI file: " + roiFile);
print("Mask file: " + maskFile);
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

// Open the mask image
print("Opening mask file");
open(maskFile);
if (nImages == 0) {{
    print("Failed to open mask file: " + maskFile);
    exit("Failed to open mask file");
}}

// Get the title of the open image
maskTitle = getTitle();
print("Mask opened: " + maskTitle);

// Set batch mode for faster processing
setBatchMode(true);

// Process each ROI
for (i = 0; i < roi_count; i++) {{
    // Duplicate the mask image so the original remains unaltered
    selectWindow(maskTitle);
    run("Duplicate...", "title=TempMask duplicate");
    
    // Apply the ROI (from the ROI Manager) to the duplicate
    roiManager("select", i);
    nslices = nSlices();
    for (s = 1; s <= nslices; s++) {{
        setSlice(s);
        run("Clear Outside");
    }}
    
    // Save the cell mask
    cell_num = i + 1;
    cell_path = outputDir + "/MASK_CELL" + cell_num + ".tif";
    print("Saving mask " + cell_num + " to: " + cell_path);
    saveAs("Tiff", cell_path);
    
    // Close the duplicate
    close();
}}

// Close the original image
selectWindow(maskTitle);
close();

// Clear ROI Manager
roiManager("reset");

// Turn off batch mode
setBatchMode(false);

print("Cell mask creation completed for " + roi_count + " cells");
"""
    
    # Add auto-close line if requested
    if auto_close:
        macro_content += '\n// Exit ImageJ\neval("script", "System.exit(0);");\n'
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return str(macro_file)

def run_imagej_macro(imagej_path, macro_file, headless=False):
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
        cmd.extend(['-batch', macro_file])
    else:
        cmd.extend(['-macro', macro_file])
    
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

def main():
    """Main function to create individual cell masks."""
    parser = argparse.ArgumentParser(description='Create individual cell masks from ROIs and combined masks')
    
    parser.add_argument('--roi-dir', required=True,
                        help='Directory containing ROI files')
    parser.add_argument('--mask-dir', required=True,
                        help='Directory containing combined mask images')
    parser.add_argument('--output-dir', required=True,
                        help='Output directory for individual cell masks')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    parser.add_argument('--auto-close', action='store_true',
                        help='Close ImageJ when the macro completes')
    parser.add_argument('--verbose', '-v', action='store_true',
                        help='Enable more verbose logging')
    parser.add_argument('--headless', action='store_true',
                        help='Run ImageJ in headless mode')
    
    args = parser.parse_args()
    
    # Set logging level
    if args.verbose:
        logger.setLevel(logging.DEBUG)
    
    # Find all ROI files in the ROI directory
    roi_dir = Path(args.roi_dir)
    mask_dir = Path(args.mask_dir)
    output_dir = Path(args.output_dir)
    
    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Find all ROI files in all subdirectories of the ROI directory
    roi_files = []
    for condition_dir in roi_dir.glob("*"):
        if condition_dir.is_dir() and not condition_dir.name.startswith('.'):
            roi_files.extend(list(condition_dir.glob("*.zip")))
    
    if not roi_files:
        logger.error(f"No ROI files found in {roi_dir}")
        return 1
    
    logger.info(f"Found {len(roi_files)} ROI files")
    
    # Process each ROI file
    successful_masks = 0
    total_masks = 0
    
    for roi_file in roi_files:
        logger.info(f"Processing ROI file: {roi_file}")
        
        # Find the corresponding mask file
        mask_file = find_matching_mask_for_roi(roi_file, mask_dir)
        
        if mask_file:
            # Create output directory for this ROI
            mask_output_dir = create_output_dir_for_roi(roi_file, output_dir)
            
            # Create and run the ImageJ macro
            macro_file = create_macro_file(
                roi_file,
                mask_file,
                mask_output_dir,
                auto_close=args.auto_close
            )
            
            success = run_imagej_macro(
                args.imagej,
                macro_file,
                headless=args.headless
            )
            
            # Check if masks were actually created
            mask_files = list(mask_output_dir.glob("MASK_CELL*.tif"))
            if not mask_files:
                mask_files = list(mask_output_dir.glob("MASK_CELL*.tiff"))
            
            if mask_files:
                logger.info(f"Successfully created {len(mask_files)} cell masks in {mask_output_dir}")
                successful_masks += 1
                total_masks += len(mask_files)
            else:
                logger.warning(f"No cell mask files were created in {mask_output_dir}")
                # Wait a bit longer and check again (for network drives)
                time.sleep(5)
                mask_files = list(mask_output_dir.glob("MASK_CELL*.tif"))
                if not mask_files:
                    mask_files = list(mask_output_dir.glob("MASK_CELL*.tiff"))
                
                if mask_files:
                    logger.info(f"On second check, found {len(mask_files)} cell masks in {mask_output_dir}")
                    successful_masks += 1
                    total_masks += len(mask_files)
        else:
            logger.error(f"Could not find matching mask file for ROI: {roi_file}")
    
    logger.info(f"Cell mask creation completed. Successfully processed {successful_masks} of {len(roi_files)} ROI files.")
    logger.info(f"Total cell masks created: {total_masks}")
    
    if successful_masks > 0:
        return 0
    else:
        return 1

if __name__ == "__main__":
    sys.exit(main())