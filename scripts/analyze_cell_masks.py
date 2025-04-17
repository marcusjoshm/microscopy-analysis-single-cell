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
import pandas as pd

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
        regions (list): List of regions to include (e.g., R_1, R_2, or custom regions like '50min_Washout_LSG1-Halo')
                       When specified, directories will match if they contain any part of these regions or vice versa
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
    
    # Search for .tif and .tiff files
    for extension in ["tif", "tiff"]:
        pattern = os.path.join(input_dir, "**", f"MASK_CELL*.{extension}")
        logger.info(f"Searching with pattern: {pattern}")
        
        for mask_path in glob.glob(pattern, recursive=True):
            # Get the parent directory (usually contains the condition/region info)
            parent_dir = os.path.dirname(mask_path)
            
            # Extract region and timepoint from the directory name
            dir_name = os.path.basename(parent_dir)
            logger.info(f"Processing directory: {dir_name}")
            
            # Try several patterns to match directories
            region = None
            timepoint = None
            
            # First try the standard R_X_tXX pattern
            standard_match = re.match(r"(R_\d+)_(t\d+)", dir_name)
            if standard_match:
                region = standard_match.group(1)
                timepoint = standard_match.group(2)
                logger.info(f"  Matched standard pattern - region: {region}, timepoint: {timepoint}")
            
            # If that doesn't match, try the custom pattern with region_timepoint
            elif '_' in dir_name:
                # Try to match a pattern like "50min_Washout_t00" or "region_t00"
                custom_match = re.match(r"(.+?)_(t\d+)$", dir_name)
                if custom_match:
                    region = custom_match.group(1)
                    timepoint = custom_match.group(2)
                    logger.info(f"  Matched custom pattern - region: {region}, timepoint: {timepoint}")
            
            # If we still don't have a match, try to extract as much info as possible
            if region is None or timepoint is None:
                # Look for any timepoint pattern
                tp_match = re.search(r"(t\d+)", dir_name)
                if tp_match:
                    timepoint = tp_match.group(1)
                    # Use the rest as the region
                    parts = dir_name.split(timepoint)
                    potential_region = parts[0].strip('_')
                    if potential_region:
                        region = potential_region
                    logger.info(f"  Extracted from parts - region: {region}, timepoint: {timepoint}")
            
            # Skip if we couldn't extract both region and timepoint
            if region is None or timepoint is None:
                logger.info(f"  Could not extract region/timepoint from directory: {dir_name}")
                continue
            
            # Filter by regions if specified - with more flexible matching
            if target_regions:
                region_match = False
                for target_region in target_regions:
                    # Check if the directory region is a subset of a target region
                    if region in target_region or target_region in region:
                        region_match = True
                        logger.info(f"  Region {region} matched with target region {target_region}")
                        break
                
                if not region_match:
                    logger.info(f"  Skipping {dir_name} due to region filter (no match found between {region} and {target_regions})")
                    continue
                
            # Filter by timepoints if specified
            if target_timepoints and timepoint not in target_timepoints:
                logger.info(f"  Skipping {dir_name} due to timepoint filter ({timepoint} not in {target_timepoints})")
                continue
            
            # Add the file to the appropriate directory group
            if parent_dir not in mask_files_by_dir:
                mask_files_by_dir[parent_dir] = []
            mask_files_by_dir[parent_dir].append(mask_path)
            logger.info(f"  Added mask file: {os.path.basename(mask_path)}")
    
    # Log the results
    total_files = sum(len(files) for files in mask_files_by_dir.values())
    logger.info(f"Found {total_files} mask files in {len(mask_files_by_dir)} directories matching filters")
    
    # Log the contents of each matched directory
    for dir_path, file_paths in mask_files_by_dir.items():
        logger.info(f"Directory {os.path.basename(dir_path)} has {len(file_paths)} mask files")
        for i, file_path in enumerate(file_paths[:3]):
            logger.info(f"  Sample file {i+1}: {os.path.basename(file_path)}")
        if len(file_paths) > 3:
            logger.info(f"  ...and {len(file_paths) - 3} more files")
    
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
        
        # Combine all CSV files into a single summary
        if success_count > 1:
            combine_csv_files(args.output)
        
        return 0
    else:
        logger.error("Cell mask analysis failed - no successful directories processed")
        return 1

def combine_csv_files(output_dir):
    """
    Combine all CSV summary files in the output directory into a single consolidated file.
    
    Args:
        output_dir (str): Directory containing individual CSV summary files
    
    Returns:
        str: Path to the combined CSV file, or None if no files were found/combined
    """
    # Find all CSV files in the output directory
    csv_pattern = os.path.join(output_dir, '*_summary.csv')
    csv_files = glob.glob(csv_pattern)
    
    if not csv_files:
        logger.warning(f"No CSV summary files found in {output_dir} to combine")
        return None
    
    logger.info(f"Found {len(csv_files)} CSV summary files to combine")
    
    # Read all CSV files into pandas DataFrames
    all_dfs = []
    for csv_file in csv_files:
        try:
            # Extract condition/region information from filename
            filename = os.path.basename(csv_file)
            base_name = filename.replace('_summary.csv', '')
            
            # Read the CSV file
            df = pd.read_csv(csv_file)
            
            # Add columns to identify the source
            # Parse out experiment details from the filename
            if filename.startswith('masks_'):
                # Example: masks_Dish_9_FUS-P525L_VCPi_+_Washout_+_DMSO_R_1_t00_summary.csv
                parts = base_name.split('_')
                
                # Extract information - assuming a specific format
                # This may need to be adjusted based on actual filename patterns
                region_idx = -2 if parts[-2].startswith('R') else None
                time_idx = -1 if parts[-1].startswith('t') else None
                
                if region_idx:
                    df['Region'] = parts[region_idx]
                if time_idx:
                    df['Timepoint'] = parts[time_idx]
                
                # Extract condition by removing timepoint and region
                condition_parts = parts[1:-2] if region_idx and time_idx else parts[1:]
                df['Condition'] = '_'.join(condition_parts)
            else:
                # Generic handling if the filename doesn't match expected pattern
                df['Source'] = base_name
            
            all_dfs.append(df)
            logger.info(f"Processed {filename} with {len(df)} rows")
            
        except Exception as e:
            logger.warning(f"Error reading CSV file {csv_file}: {e}")
            continue
    
    if not all_dfs:
        logger.warning("No valid data found in CSV files")
        return None
    
    # Combine all DataFrames
    combined_df = pd.concat(all_dfs, ignore_index=True)
    
    # Generate output filename based on common elements
    # Extract what appears to be the experiment identifier (e.g., Dish_9)
    experiment_ids = set()
    for csv_file in csv_files:
        filename = os.path.basename(csv_file)
        if filename.startswith('masks_'):
            parts = filename.split('_')
            if len(parts) > 2:
                experiment_ids.add(f"{parts[1]}_{parts[2]}")
    
    # Create a combined filename
    if experiment_ids:
        combined_name = '_'.join(sorted(experiment_ids))
    else:
        # Fallback if we can't extract experiment IDs
        combined_name = "combined_analysis"
    
    combined_file = os.path.join(output_dir, f"{combined_name}_combined_analysis.csv")
    
    # Save the combined DataFrame
    combined_df.to_csv(combined_file, index=False)
    logger.info(f"Created combined analysis file: {combined_file} with {len(combined_df)} rows")
    
    return combined_file

if __name__ == "__main__":
    sys.exit(main())