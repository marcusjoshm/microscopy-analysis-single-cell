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
from pathlib import Path

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("CellExtractor")

def create_macro_file(roi_dir, raw_data_dir, output_dir):
    """
    Create an ImageJ macro file for extracting individual cells.
    
    Args:
        roi_dir (str): Directory containing ROI files
        raw_data_dir (str): Directory containing original images
        output_dir (str): Directory where individual cells will be saved
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/temp_extract_cells.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Build the macro content in parts to avoid formatting issues
    macro_content = """
// ----- Helper Functions -----
function startsWith(str, prefix) {
    result = substring(str, 0, lengthOf(prefix));
    if (result == prefix)
        return 1;
    else
        return 0;
}

function endsWith(str, suffix) {
    result = substring(str, lengthOf(str) - lengthOf(suffix), lengthOf(str));
    if (result == suffix)
        return 1;
    else
        return 0;
}

// ----- Set Parent Directories -----
"""
    
    # Add directory paths (this avoids format string issues)
    macro_content += f'roiParent = "{roi_dir}/";\n'
    macro_content += f'rawDataParent = "{raw_data_dir}/";\n'
    macro_content += f'outputParent = "{output_dir}/";\n\n'
    
    # Continue with the rest of the macro
    macro_content += """
// Ensure trailing slashes for path concatenation
if (!endsWith(roiParent, "/")) roiParent = roiParent + "/";
if (!endsWith(rawDataParent, "/")) rawDataParent = rawDataParent + "/";
if (!endsWith(outputParent, "/")) outputParent = outputParent + "/";

print("ROI directory: " + roiParent);
print("Raw data directory: " + rawDataParent);
print("Output directory: " + outputParent);

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
print("Found " + dishes.length + " entries in ROI parent directory");

for (d = 0; d < dishes.length; d++) {
    dishName = dishes[d];
    print("Checking entry: " + dishName);
    
    // Skip hidden files and non-directories
    if (startsWith(dishName, ".") || !File.isDirectory(roiParent + dishName)) {
        print("Skipping " + dishName + " (not a directory or hidden)");
        continue;
    }
    
    roiFolder = roiParent + dishName;
    // Ensure trailing slash
    if (!endsWith(roiFolder, "/")) roiFolder = roiFolder + "/";
    
    regionFolder = rawDataParent + dishName + "/45-60min_washout/";
    if (!File.exists(regionFolder)) {
        print("Washout directory not found: " + regionFolder);
        regionFolder = rawDataParent + dishName + "/";
        print("Trying parent directory: " + regionFolder);
        
        if (!File.exists(regionFolder)) {
            print("Raw data directory not found: " + regionFolder);
            continue;
        }
    }
    
    // Get the list of ROI files in this dish folder.
    print("Looking for ROI files in: " + roiFolder);
    roiFiles = getFileList(roiFolder);
    print("Found " + roiFiles.length + " files in ROI folder");
    
    // Try different ROI file prefixes
    prefixes = newArray("ROIs_R_", "ROIs_");
    
    for (r = 0; r < roiFiles.length; r++) {
        fileName = roiFiles[r];
        print("Checking file: " + fileName);
        
        // Skip non-zip files
        if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {
            print("Skipping non-zip file: " + fileName);
            continue;
        }
        
        // Try to match any of our prefixes
        foundPrefix = false;
        prefixUsed = "";
        
        for (p = 0; p < prefixes.length; p++) {
            if (startsWith(fileName, prefixes[p])) {
                foundPrefix = true;
                prefixUsed = prefixes[p];
                break;
            }
        }
        
        if (!foundPrefix) {
            print("No matching prefix for: " + fileName);
            continue;
        }
        
        // Derive the base name by removing the prefix and trailing "_rois.zip"
        baseName = "";
        if (endsWith(fileName, "_rois.zip")) {
            baseName = substring(fileName, lengthOf(prefixUsed), indexOf(fileName, "_rois.zip"));
        } else if (endsWith(fileName, ".zip")) {
            baseName = substring(fileName, lengthOf(prefixUsed), indexOf(fileName, ".zip"));
        }
        
        print("Base name: " + baseName);
        
        // Try different possible filenames - with and without R_ prefix
        possibleBaseNames = newArray(2);
        possibleBaseNames[0] = baseName;
        possibleBaseNames[1] = "R_" + baseName;
        
        // Try different image extensions
        extensions = newArray(".tif", ".tiff", ".TIF", ".TIFF");
        regionImagePath = "";
        
        for (n = 0; n < 2; n++) {
            for (e = 0; e < extensions.length; e++) {
                testPath = regionFolder + possibleBaseNames[n] + extensions[e];
                print("Trying image path: " + testPath);
                
                if (File.exists(testPath)) {
                    regionImagePath = testPath;
                    print("Found image: " + regionImagePath);
                    break;
                }
            }
            if (regionImagePath != "") break;  // Stop if we found an image
        }
        
        if (regionImagePath == "") {
            print("No matching image found for base name: " + baseName);
            continue;
        }
        
        // Extract the region identifier
        region = "";
        if (indexOf(baseName, "R_1") >= 0 || indexOf(baseName, "1_") >= 0) {
            region = "R_1";
        } else if (indexOf(baseName, "R_2") >= 0 || indexOf(baseName, "2_") >= 0) {
            region = "R_2";
        } else if (indexOf(baseName, "R_3") >= 0 || indexOf(baseName, "3_") >= 0) {
            region = "R_3";
        } else {
            print("Could not identify region in: " + baseName);
            continue;
        }
        
        print("Identified region: " + region);
        
        // Determine the timepoint from the baseName.
        timeLabel = "";
        if (indexOf(baseName, "t00") >= 0) {
            timeLabel = "45min";
        } else if (indexOf(baseName, "t03") >= 0) {
            timeLabel = "60min";
        } else {
            print("Timepoint not found in: " + baseName);
            continue;
        }
        
        print("Identified timepoint: " + timeLabel);
        
        // Open the ROI Manager and load this ROI file.
        roiManager("Reset");
        roiFilePath = roiFolder + fileName;
        print("Opening ROI file: " + roiFilePath);
        roiManager("Open", roiFilePath);
        nRois = roiManager("count");
        print("Processing " + dishName + " " + region + " " + timeLabel + ": Found " + nRois + " ROIs.");
        
        if (nRois == 0) {
            print("No ROIs found in file: " + roiFilePath);
            continue;
        }
        
        // Open the corresponding region image
        print("Opening image: " + regionImagePath);
        open(regionImagePath);
        regionTitle = getTitle();
        print("Opened region image: " + regionTitle + " (" + regionImagePath + ")");
        
        // Set up the output folder for processed cells.
        outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
        if (!File.exists(outputFolder)) {
            print("Creating output directory: " + outputFolder);
            File.makeDirectory(outputFolder);
        }
        
        // Loop over each ROI in the ROI Manager.
        for (i = 0; i < nRois; i++) {
            // Duplicate the region image so the original remains unaltered.
            selectWindow(regionTitle);
            run("Duplicate...", "title=TempRegion duplicate");
            
            // Apply the ROI (from the ROI Manager) to the duplicate.
            roiManager("select", i);
            nslices = nSlices();
            for (s = 1; s <= nslices; s++) {
                setSlice(s);
                run("Clear Outside");
            }
            
            // Build the save path and filename.
            cellNum = i + 1;
            savePath = outputFolder + "CELL" + cellNum + ".tif";
            print("Saving cell " + cellNum + " to: " + savePath);
            saveAs("Tiff", savePath);
            
            // Close the duplicate image.
            close();
        }
        
        // Close the original region image and reset ROI Manager.
        selectWindow(regionTitle);
        close();
        roiManager("Reset");
    }
}
print("Completed extracting individual cells");
"""
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return str(macro_file)

def run_imagej_macro(imagej_path, macro_file):
    """
    Run ImageJ with a given macro and arguments.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        cmd = [imagej_path, '-macro', macro_file]
        
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
    """Main function to extract individual cells."""
    parser = argparse.ArgumentParser(description='Extract individual cells using ROIs')
    
    parser.add_argument('--roi-dir', '-r', required=True,
                        help='Directory containing ROI files')
    parser.add_argument('--raw-data-dir', '-d', required=True,
                        help='Directory containing original images')
    parser.add_argument('--output-dir', '-o', required=True,
                        help='Directory where individual cells will be saved')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    
    args = parser.parse_args()
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file = create_macro_file(args.roi_dir, args.raw_data_dir, args.output_dir)
    
    # Run the ImageJ macro
    success = run_imagej_macro(args.imagej, macro_file)
    
    if success:
        logger.info("Cell extraction completed successfully")
        return 0
    else:
        logger.error("Cell extraction failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())