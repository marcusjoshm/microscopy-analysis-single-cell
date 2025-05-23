#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Resize ROIs Script for Single Cell Analysis Workflow

This script takes ROIs from the preprocessed directory, uses ImageJ to resize them 
to match the original images, and saves them to the ROI directory.
"""

import os
import sys
import argparse
import subprocess
import tempfile
import logging
import shutil
from pathlib import Path

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("ROIResizer")

def create_macro_file(input_dir, output_dir, auto_close=False):
    """
    Create an ImageJ macro file for ROI resizing.
    
    Args:
        input_dir (str): Input directory containing binned images and ROIs
        output_dir (str): Output directory for resized ROIs
        auto_close (bool): Whether to add a line to close ImageJ when the macro completes
        
    Returns:
        str: Path to the created macro file
    """
    # Create a temporary macro file
    macro_file = Path("macros/temp_resize_rois.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Generate the macro content
    macro_content = f"""
// Resize ROIs Macro for Single Cell Analysis Workflow
// Input and output directories
input_dir = "{input_dir}";
output_dir = "{output_dir}";

print("Input directory: " + input_dir);
print("Output directory: " + output_dir);

// Process all condition directories in input directory
condition_dirs = getFileList(input_dir);
num_processed = 0;

for (c = 0; c < condition_dirs.length; c++) {{
    condition_name = condition_dirs[c];

    // Skip non-directories and hidden folders
    if (!File.isDirectory(input_dir + "/" + condition_name) || indexOf(condition_name, ".") == 0) {{
        continue;
    }}

    condition_path = input_dir + "/" + condition_name;
    print("Processing condition: " + condition_name);

    // Create corresponding output directory
    output_condition_dir = output_dir + "/" + condition_name;
    if (!File.exists(output_condition_dir)) {{
        File.makeDirectory(output_condition_dir);
    }}

    // Get all subdirectories in the condition directory
    subdirs = getFileList(condition_path);
    
    // Process each subdirectory
    for (s = 0; s < subdirs.length; s++) {{
        subdir = subdirs[s];
        if (!File.isDirectory(condition_path + "/" + subdir) || indexOf(subdir, ".") == 0) {{
            continue;
        }}

        // Full path to the subdirectory
        subdir_path = condition_path + "/" + subdir;
        print("Processing subdirectory: " + subdir_path);

        // Get all ROI zip files in the subdirectory
        subdir_files = getFileList(subdir_path);
        for (i = 0; i < subdir_files.length; i++) {{
            roi_file = subdir_files[i];
            
            // Process only files ending with _rois.zip
            if (!endsWith(roi_file, "_rois.zip")) {{
                continue;
            }}

            // Find corresponding image file
            base_name = substring(roi_file, 0, indexOf(roi_file, "_rois.zip"));
            image_file = base_name + ".tif";
            image_path = subdir_path + "/" + image_file;

            if (!File.exists(image_path)) {{
                print("Image file not found: " + image_path);
                continue;
            }}

            roi_path = subdir_path + "/" + roi_file;
            
            // Create output ROI file name
            // Remove 'bin4x4_' prefix if present
            if (startsWith(base_name, "bin4x4_")) {{
                new_base_name = substring(base_name, lengthOf("bin4x4_"), lengthOf(base_name));
            }} else {{
                new_base_name = base_name;
            }}
            
            new_roi_file = "ROIs_" + new_base_name + "_rois.zip";
            new_roi_path = output_condition_dir + "/" + new_roi_file;

            print("Processing: " + base_name);
            print("  ROI file: " + roi_path);
            print("  Image file: " + image_path);
            print("  Output ROI file: " + new_roi_path);

            // ----- Process the Image and ROIs -----
            print("  Opening image: " + image_path);
            open(image_path);
            image_title = getTitle();
            
            // No transformations needed - Cellpose invocation method fixed the orientation issue
            print("  Image dimensions: " + getWidth() + " x " + getHeight());
            
            print("  Opening ROI file: " + roi_path);
            // Initialize ROI Manager
            roiManager("reset");
            
            // Open ROIs
            roiManager("open", roi_path);

            num_original_rois = roiManager("count");
            print("  Found " + num_original_rois + " ROIs to process");

            for (j = 0; j < num_original_rois; j++) {{
                // Select the input image and ROI
                selectWindow(image_title);
                // Duplicate the image and create a mask
                run("Duplicate...", "title=makeMask");
                selectWindow("makeMask");
                roiManager("Select", j);

                // Create a mask from the ROI
                run("Create Mask");
                
                // Resize the mask to match original image (4x larger since we binned 4x4)
                orig_width = getWidth();
                orig_height = getHeight();
                new_width = orig_width * 4;
                new_height = orig_height * 4;
                run("Size...", "width=" + new_width + " height=" + new_height + " interpolation=None");

                // Create a selection from the resized mask
                run("Create Selection");
                roiManager("Add");

                // Close the duplicate and mask windows
                close(); // Close mask
                close(); // Close duplicate
            }}

            // Remove the original ROIs (they're at the beginning of the list)
            for (j = 0; j < num_original_rois; j++) {{
                roiManager("Select", 0);
                roiManager("Delete");
            }}

            // Save the new ROIs
            print("  Saving " + (roiManager("count")) + " resized ROIs to: " + new_roi_path);
            roiManager("Save", new_roi_path);
            
            // Close the original binned image
            selectWindow(image_title);
            close();
            
            // Reset ROI Manager for next round
            roiManager("reset");
            
            num_processed++;
        }}
    }}
}}

print("Completed processing " + num_processed + " ROI files");
print("Resized ROIs saved to " + output_dir);
    """
    
    # Add auto-close line if requested
    if auto_close:
        macro_content += '\n// Close ImageJ when done\neval("script", "System.exit(0);");\n'
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return str(macro_file)

def run_imagej_macro(imagej_path, macro_file, auto_close=False, *args):
    """
    Run ImageJ with a given macro and arguments.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        auto_close (bool): Whether the macro will automatically close ImageJ
        *args: Additional arguments to pass to the macro
        
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        cmd = [imagej_path, '-macro', macro_file]
        if args:
            cmd.append(','.join(args))
        
        logger.info(f"Running ImageJ command: {cmd}")
        logger.info(f"ImageJ will {'auto-close' if auto_close else 'remain open'} after execution")
        
        result = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False  # Don't raise an exception on non-zero return code
        )
        
        # Log the output
        if result.stdout:
            logger.info(f"ImageJ output: {result.stdout}")
        if result.stderr:
            logger.warning(f"ImageJ errors: {result.stderr}")
        
        # Check if the command executed successfully
        if result.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {result.returncode}")
            return False
        
        return True
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}")
        return False

def main():
    """Main function to resize ROIs."""
    parser = argparse.ArgumentParser(description='Resize ROIs from binned images')
    
    parser.add_argument('--input', '-i', required=True,
                        help='Input directory containing preprocessed images and ROIs')
    parser.add_argument('--output', '-o', required=True,
                        help='Output directory for resized ROIs')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    parser.add_argument('--auto-close', action='store_true',
                        help='Close ImageJ when the macro completes')
    
    args = parser.parse_args()
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file = create_macro_file(args.input, args.output, args.auto_close)
    
    # Run the ImageJ macro
    success = run_imagej_macro(args.imagej, macro_file, args.auto_close)
    
    if success:
        logger.info("ROI resizing completed successfully")
        return 0
    else:
        logger.error("ROI resizing failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())