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

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("CellMaskCreator")

def map_timepoint_to_label(timepoint):
    """
    Map timepoint (t00, t03, etc.) to minute label (45min, 60min, etc.)
    
    Args:
        timepoint (str): Timepoint string (e.g., "t00", "t03")
        
    Returns:
        str: Minute label (e.g., "45min", "60min")
    """
    if timepoint == "t00":
        return "45min"
    elif timepoint == "t03":
        return "60min"
    elif timepoint == "t06":
        return "75min"
    else:
        logger.warning(f"Unknown timepoint: {timepoint}, defaulting to '45min'")
        return "45min"

def create_macro_file(roi_dir, mask_dir, output_dir):
    """
    Create an ImageJ macro file for creating individual cell masks.
    
    Args:
        roi_dir (str): Directory containing ROI zip files
        mask_dir (str): Directory containing combined mask images
        output_dir (str): Output directory for individual cell masks
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/create_cell_masks.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Generate the macro content
    macro_content = f"""// ----- Helper Functions -----
function startsWith(str, prefix) {{
    result = substring(str, 0, lengthOf(prefix));
    if (result == prefix)
        return 1;
    else
        return 0;
}}

function endsWith(str, suffix) {{
    result = substring(str, lengthOf(str) - lengthOf(suffix), lengthOf(str));
    if (result == suffix)
        return 1;
    else
        return 0;
}}

// Enable batch mode for headless operation
setBatchMode(true);

// ----- Set Parent Directories -----
roiParent = "{roi_dir}";
rawDataParent = "{mask_dir}";
outputParent = "{output_dir}";

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
for (d = 0; d < dishes.length; d++) {{
    dishName = dishes[d];
    if (File.isDirectory(roiParent + dishName)) {{
        roiFolder = roiParent + dishName + "/";
        // Ensure the folder path for combined masks has a trailing slash.
        maskFolder = rawDataParent + dishName + "/";
        
        // Get the list of ROI files in this dish folder.
        roiFiles = getFileList(roiFolder);
        for (r = 0; r < roiFiles.length; r++) {{
            fileName = roiFiles[r];
            // Process only files starting with "ROIs_R_"
            if (startsWith(fileName, "ROIs_R_") == 0) continue;
            
            // Derive the base name by removing the "ROIs_" prefix and trailing "_rois.zip"
            baseName = substring(fileName, lengthOf("ROIs_"), indexOf(fileName, "_rois.zip"));
            
            // Extract region from the base name (e.g., R_1, R_2, R_3)
            regionMatch = indexOf(baseName, "R_");
            region = "";
            if (regionMatch >= 0) {{
                underscoreAfterR = indexOf(substring(baseName, regionMatch + 2), "_");
                if (underscoreAfterR >= 0) {{
                    region = substring(baseName, regionMatch, regionMatch + 2 + underscoreAfterR);
                }}
            }}
            if (region == "") {{
                print("Region not found in: " + baseName);
                continue;
            }}
            
            // Extract timepoint from the base name (e.g., t00, t03)
            timepointMatch = indexOf(baseName, "t0");
            timepoint = "";
            if (timepointMatch >= 0) {{
                timepoint = substring(baseName, timepointMatch, timepointMatch + 3);
            }}
            if (timepoint == "") {{
                print("Timepoint not found in: " + baseName);
                continue;
            }}
            
            // Determine time label based on timepoint
            timeLabel = "";
            if (timepoint == "t00") {{
                timeLabel = "45min";
            }} else if (timepoint == "t03") {{
                timeLabel = "60min";
            }} else if (timepoint == "t06") {{
                timeLabel = "75min";
            }} else {{
                print("Unknown timepoint: " + timepoint);
                continue;
            }}
            
            // Build the mask image filename
            maskFileName = "MASK_" + region + "_" + timeLabel + ".tif";
            maskFilePath = maskFolder + maskFileName;
            
            if (!File.exists(maskFilePath)) {{
                print("Mask image not found: " + maskFilePath);
                continue;
            }}
            
            // Load the ROIs silently without using the ROI Manager GUI
            roiFilePath = roiFolder + fileName;
            print("Loading ROI file: " + roiFilePath);
            roiManager("reset");
            roiManager("open", roiFilePath);
            
            // Count ROIs by getting the number from the "count" property
            nRois = roiManager("count");
            print("Processing " + dishName + " " + region + " " + timeLabel + ": Found " + nRois + " ROIs.");
            
            // Open the corresponding combined mask image
            open(maskFilePath);
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Set up the output folder for processed MASK_CELLs.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            if (!File.exists(outputFolder)) {{
                File.makeDirectory(outputFolder);
            }}
            
            // Loop over each ROI in the ROI Manager.
            for (i = 0; i < nRois; i++) {{
                // Duplicate the mask image so the original remains unaltered.
                selectWindow(maskTitle);
                run("Duplicate...", "title=TempMask");
                
                // Apply the ROI (from the ROI Manager) to the duplicate.
                roiManager("select", i);
                nslices = nSlices();
                for (s = 1; s <= nslices; s++) {{
                    setSlice(s);
                    run("Clear Outside");
                    run("Set Scale...", "distance=13.6891 known=1 unit=µm");
                }}
                
                // Build the save path and filename.
                MASK_CELLNum = i + 1;
                savePath = outputFolder + "MASK_CELL" + MASK_CELLNum + ".tiff";
                saveAs("Tiff", savePath);
                print("Saved MASK_CELL: " + savePath);
                
                // Close the duplicate image.
                close();
            }}
            
            // Close the original mask image and reset ROI Manager.
            selectWindow(maskTitle);
            close();
            roiManager("reset");
        }}
    }}
}}

// Exit batch mode
setBatchMode(false);
print("Cell mask creation complete!");
"""
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
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
        # Get the absolute path to the macro file
        macro_file_absolute = os.path.abspath(macro_file)
        
        # Use the -batch flag with a specific argument format to run the macro without showing a dialog
        cmd = [imagej_path, "--ij2", "--console", "--run", macro_file_absolute]
        
        logger.info(f"Running ImageJ command: {cmd}")
        
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
    
    args = parser.parse_args()
    
    # Ensure paths have trailing slashes for the macro
    roi_dir = os.path.join(args.roi_dir, '')
    mask_dir = os.path.join(args.mask_dir, '')
    output_dir = os.path.join(args.output_dir, '')
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file = create_macro_file(roi_dir, mask_dir, output_dir)
    
    # Run the ImageJ macro
    success = run_imagej_macro(args.imagej, macro_file)
    
    if success:
        logger.info("Cell mask creation completed successfully")
        return 0
    else:
        logger.error("Cell mask creation failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())