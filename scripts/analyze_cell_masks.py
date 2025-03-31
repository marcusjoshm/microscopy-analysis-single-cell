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
    
    # Search for .tif and .tiff files
    for extension in ["tif", "tiff"]:
        pattern = os.path.join(input_dir, "**", f"MASK*.{extension}")
        for mask_path in glob.glob(pattern, recursive=True):
            # Get the parent directory (usually contains the condition/region info)
            parent_dir = os.path.dirname(mask_path)
            
            # Filter by regions if specified
            if regions:
                region_match = False
                for region in regions:
                    if region in parent_dir:
                        region_match = True
                        break
                if not region_match:
                    continue
            
            # Filter by timepoints if specified
            if timepoints:
                timepoint_match = False
                for timepoint in timepoints:
                    if timepoint in parent_dir:
                        timepoint_match = True
                        break
                if not timepoint_match:
                    continue
            
            # Add to the appropriate group
            if parent_dir not in mask_files_by_dir:
                mask_files_by_dir[parent_dir] = []
            
            mask_files_by_dir[parent_dir].append(mask_path)
    
    # Log the results
    total_files = sum(len(files) for files in mask_files_by_dir.values())
    logger.info(f"Found {total_files} mask files in {len(mask_files_by_dir)} directories")
    
    # Limit the number of files per directory if needed
    if max_files > 0:
        for dir_path, file_list in mask_files_by_dir.items():
            if len(file_list) > max_files:
                logger.info(f"Limiting directory {dir_path} to {max_files} files for processing")
                mask_files_by_dir[dir_path] = file_list[:max_files]
    
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
    Process all mask files in a directory.
    
    Args:
        dir_path (str): Directory path containing the mask files
        mask_paths (list): List of mask file paths in the directory
        output_dir (str): Output directory for analysis results
        imagej_path (str): Path to the ImageJ executable
        
    Returns:
        bool: True if successful, False otherwise
    """
    # Generate CSV filename based on the directory structure
    csv_file = generate_csv_filename(dir_path, output_dir)
    
    logger.info(f"Processing {len(mask_paths)} files from {dir_path}")
    logger.info(f"Output will be saved to {csv_file}")
    
    # Create the ImageJ macro for this directory
    macro_file = create_analyze_particles_macro(mask_paths, csv_file)
    
    # Run the ImageJ macro
    success = run_imagej_macro(imagej_path, macro_file)
    
    if success and os.path.exists(csv_file):
        logger.info(f"Successfully created: {csv_file}")
        return True
    else:
        logger.error(f"Failed to create: {csv_file}")
        return False

def main():
    """Main function to analyze cell masks with ImageJ."""
    parser = argparse.ArgumentParser(description='Analyze cell masks using ImageJ')
    
    parser.add_argument('--input', '-i', required=True,
                        help='Input directory containing mask files')
    parser.add_argument('--output', '-o', required=True,
                        help='Output directory for analysis results')
    parser.add_argument('--regions', '-r', nargs='+', default=[],
                        help='Specific regions to analyze (e.g., R_1 R_2 R_3)')
    parser.add_argument('--timepoints', '-t', nargs='+', default=[],
                        help='Specific timepoints to analyze (e.g., t00 t03)')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
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
        logger.error(f"No mask files found in {args.input}")
        return 1
    
    # Process each directory
    success_count = 0
    total_dirs = len(mask_files_by_dir)
    
    for dir_path, mask_paths in mask_files_by_dir.items():
        if process_mask_directory(dir_path, mask_paths, args.output, args.imagej):
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