#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Cell Mask Analysis Script

This script uses ImageJ to analyze mask files, running the Analyze Particles
function and capturing the results directly from stdout to create CSV files.
"""

import os
import sys
import argparse
import logging
import subprocess
from pathlib import Path
import tempfile
import glob
import time
import re
import csv

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("CellAnalysis")

# Map timepoint (t00, t03, etc.) to timepoint label (t00, t03, etc.)
TIME_MAPPING = {
    't00': 't00',  # t00
    't03': 't03',  # t03
    't06': 't06'   # t06
}

# Time translation for imaging log file
TIMEPOINT_TO_MINUTES = {
    't00': '45',  # t00
    't03': '60',  # t03
    't06': '75'   # t06
}

def create_analyze_particles_macro(mask_paths, csv_file):
    """
    Create an ImageJ macro that uses Analyze Particles to process specific mask files
    and saves the summary directly as a CSV file.
    
    Args:
        mask_paths (list): List of paths to mask files to analyze
        csv_file (str): Path to the CSV file to save results
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/analyze_particles_batch.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Start building macro content
    macro_content = f"""// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray({len(mask_paths)});

"""

    # Add each mask file to be processed
    for i, mask_path in enumerate(mask_paths):
        # Extract the base file name without extension
        file_basename = os.path.basename(mask_path).replace(".tif", "").replace(".tiff", "")
        # Get the parent folder name
        parent_folder = os.path.basename(os.path.dirname(mask_path))
        # Combined name for slice identification
        slice_name = f"{parent_folder}_{file_basename}"
        
        macro_content += f"""
// Store slice name at index {i}
sliceNames[{i}] = "{slice_name}";

// Process mask {i+1}: {mask_path}
print("ANALYSIS_START:{mask_path}");
open("{mask_path}");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:{mask_path}");

// Close all open images
while (nImages > 0) {{
    selectImage(nImages);
    close();
}}
"""
    
    # Add final summary saving
    macro_content += f"""
// Update slice names in the Summary table
if (isOpen("Summary")) {{
    for (i=0; i<sliceNames.length; i++) {{
        Table.set("Slice", i, sliceNames[i], "Summary");
    }}
    Table.update("Summary");
    
    // Save the Summary table as CSV
    print("Saving summary to: {csv_file}");
    Table.save("{csv_file}", "Summary");
    close("Summary");
}}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
"""
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created ImageJ macro file: {macro_file}")
    return str(macro_file)

def run_imagej_macro(imagej_path, macro_file):
    """
    Run ImageJ with a given macro.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        # Use the -batch flag to run the macro
        cmd = [imagej_path, "-batch", macro_file]
        
        logger.info(f"Running ImageJ command: {cmd}")
        
        # Run ImageJ in headless mode with the macro
        process = subprocess.Popen(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        
        # Variables for processing output
        results_count = 0
        
        # Monitor and log the output in real-time
        while True:
            output = process.stdout.readline()
            if output == '' and process.poll() is not None:
                break
            if output:
                line = output.strip()
                logger.info(f"ImageJ: {line}")
                
                # Count how many files were analyzed
                if line.startswith("ANALYSIS_END:"):
                    results_count += 1
        
        # Get any remaining output
        stdout, stderr = process.communicate()
        if stdout:
            logger.info(f"ImageJ additional output: {stdout.strip()}")
        if stderr:
            logger.warning(f"ImageJ errors: {stderr.strip()}")
        
        # Check if the command executed successfully
        if process.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {process.returncode}")
            if results_count == 0:
                return False
        
        logger.info(f"Successfully processed {results_count} mask files")
        return results_count > 0
    
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}")
        return False

def find_mask_files(input_dir, max_files=50, regions=None, timepoints=None):
    """
    Find mask files in the input directory and group them by parent directories.
    
    Args:
        input_dir (str): Input directory to search
        max_files (int): Maximum number of files to find
        regions (list): List of regions to include (e.g., R_1, R_2)
        timepoints (list): List of timepoints to include (e.g., t00, t03)
        
    Returns:
        dict: Dictionary mapping directory paths to lists of mask file paths
    """
    # Group mask files by their parent directory
    mask_files_by_dir = {}
    
    # Convert input timepoints to list if needed
    target_timepoints = []
    if timepoints:
        # Handle both string and list inputs
        if isinstance(timepoints, str):
            # Split by whitespace and strip each item
            target_timepoints = [tp.strip() for tp in timepoints.split()]
        elif isinstance(timepoints, list):
            # If it's a list with space-separated items, split each item
            temp_timepoints = []
            for tp in timepoints:
                if isinstance(tp, str) and ' ' in tp:
                    temp_timepoints.extend([t.strip() for t in tp.split()])
                else:
                    temp_timepoints.append(tp)
            target_timepoints = temp_timepoints
    
    # Handle regions input
    target_regions = []
    if regions:
        # Similar handling for regions
        if isinstance(regions, str):
            target_regions = [r.strip() for r in regions.split()]
        elif isinstance(regions, list):
            temp_regions = []
            for r in regions:
                if isinstance(r, str) and ' ' in r:
                    temp_regions.extend([reg.strip() for reg in r.split()])
                else:
                    temp_regions.append(r)
            target_regions = temp_regions
    
    logger.info(f"Looking for mask files in: {input_dir}")
    logger.info(f"Filtering by regions: {target_regions}")
    logger.info(f"Filtering by timepoints: {target_timepoints}")
    
    # Count files for debugging (REMOVED - not used anymore)
    # all_mask_files = [] 
    # matched_directories = []
    
    # Search for .tif and .tiff files
    for extension in ["tif", "tiff"]:
        pattern = os.path.join(input_dir, "**", f"MASK_CELL*.{extension}")
        # REMOVED DEBUG LOG
        # logger.info(f"Searching with pattern: {pattern}")
        
        for mask_path in glob.glob(pattern, recursive=True):
            # Get the parent directory (usually contains the condition/region info)
            parent_dir = os.path.dirname(mask_path)
            
            # Extract region and timepoint from the directory name
            dir_name = os.path.basename(parent_dir)
            # REMOVED DEBUG LOG
            # logger.info(f"Processing directory: {dir_name}")
            
            # Match the new pattern: R_X_tXX
            region_match = re.match(r"(R_\d+)_(t\d+)", dir_name)
            
            if region_match:
                region = region_match.group(1)
                timepoint = region_match.group(2)
                # REMOVED DEBUG LOG
                # logger.info(f"  Matched region: {region}, timepoint: {timepoint}")
                
                # Filter by regions if specified
                if target_regions and region not in target_regions:
                    # REMOVED DEBUG LOG
                    # logger.info(f"  Skipping due to region filter")
                    continue
                    
                # Filter by timepoints if specified
                if target_timepoints and timepoint not in target_timepoints:
                    # REMOVED DEBUG LOG
                    # logger.info(f"  Skipping due to timepoint filter")
                    continue
                
                # REMOVED DEBUG LOG - not needed as we store paths in dict
                # matched_directories.append(parent_dir)
                
                # REMOVED DEBUG LOG
                # logger.info(f"  Adding mask file: {mask_path}")
                
                # Add the file to the appropriate directory group
                if parent_dir not in mask_files_by_dir:
                    mask_files_by_dir[parent_dir] = []
                mask_files_by_dir[parent_dir].append(mask_path)
            # REMOVED DEBUG LOG
            # else:
            #     logger.info(f"  No region/timepoint match for directory: {dir_name}")
    
    # REMOVED DEBUG LOGS
    # logger.info(f"Found {len(all_mask_files)} total mask files in input directory")
    # logger.info(f"Matched {len(matched_directories)} directories")
    
    # Log the results
    total_files = sum(len(files) for files in mask_files_by_dir.values())
    logger.info(f"Found {total_files} mask files in {len(mask_files_by_dir)} directories matching filters")
    
    if total_files == 0:
        logger.error(f"No mask files found in {input_dir} matching filters")
        return {}
    
    return mask_files_by_dir

def generate_csv_filename(directory_path, output_dir):
    """
    Generate a unique CSV filename based on the directory structure.
    
    Args:
        directory_path (str): Directory path containing the mask files
        output_dir (str): Base output directory
        
    Returns:
        str: Path to the CSV file
    """
    # Extract meaningful parts from the directory path
    dir_parts = directory_path.split(os.sep)
    
    # Find condition and region information (usually in the last 1-3 directory levels)
    meaningful_parts = []
    for part in reversed(dir_parts[-3:]):  # Look at the last 3 directory levels
        if part:
            meaningful_parts.append(part)
    
    # Create a filename from the meaningful parts
    if meaningful_parts:
        csv_name = "_".join(reversed(meaningful_parts)) + "_summary.csv"
    else:
        # Fallback to a simple hash of the directory path
        import hashlib
        hash_obj = hashlib.md5(directory_path.encode())
        csv_name = f"dir_{hash_obj.hexdigest()[:8]}_summary.csv"
    
    return os.path.join(output_dir, csv_name)

def process_mask_directory(dir_path, mask_paths, output_dir, imagej_path):
    """
    Process a directory of mask files.
    
    Args:
        dir_path (str): Path to the directory
        mask_paths (list): List of mask file paths to process
        output_dir (str): Output directory for results
        imagej_path (str): Path to the ImageJ executable
        
    Returns:
        bool: True if successful, False otherwise
    """
    # Generate an output CSV filename for the directory
    csv_file = generate_csv_filename(dir_path, output_dir)
    
    # Create a macro for this batch of files
    macro_file = create_analyze_particles_macro(mask_paths, csv_file)
    
    # Run the macro with ImageJ
    success = run_imagej_macro(imagej_path, macro_file)
    
    if success:
        logger.info(f"Successfully analyzed {len(mask_paths)} mask files in {dir_path}")
    else:
        logger.error(f"Failed to analyze mask files in {dir_path}")
    
    return success

def main():
    """Main function to analyze cell masks."""
    parser = argparse.ArgumentParser(description='Analyze cell masks using ImageJ')
    
    parser.add_argument('--input', '-i', required=True,
                        help='Directory containing mask files')
    parser.add_argument('--output', '-o', required=True,
                        help='Directory for output analysis files')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    parser.add_argument('--regions', nargs='+',
                        help='Specific regions to process (e.g., R_1 R_2)')
    parser.add_argument('--timepoints', '-t', nargs='+',
                        help='Specific timepoints to process (e.g., t00 t03)')
    parser.add_argument('--max-files', type=int, default=50,
                        help='Maximum number of files to process per directory')
    
    args = parser.parse_args()
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output, exist_ok=True)
    
    # Find mask files grouped by directory
    mask_files_by_dir = find_mask_files(
        args.input, 
        args.max_files,
        args.regions,
        args.timepoints
    )
    
    if not mask_files_by_dir:
        logger.error(f"No mask files found in {args.input} matching the specified filters.") # Adjusted message
        return 1
    
    # Process each directory
    success_count = 0
    total_dirs = len(mask_files_by_dir)
    
    for dir_path, mask_paths in mask_files_by_dir.items():
        success = process_mask_directory(dir_path, mask_paths, args.output, args.imagej)
        if success:
            success_count += 1
    
    # Report overall results
    if success_count > 0:
        logger.info(f"Cell mask analysis completed successfully: {success_count}/{total_dirs} directories processed")
        return 0
    else:
        logger.error("Cell mask analysis failed - no successful directories processed")
        return 1

if __name__ == "__main__":
    sys.exit(main()) 