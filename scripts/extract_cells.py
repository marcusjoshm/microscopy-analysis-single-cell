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
import glob

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    stream=sys.stdout  # Ensure logging goes to stdout for visibility
)
logger = logging.getLogger("CellExtractor")

def create_macro_file(roi_dir, raw_data_dir, output_dir, auto_close=False):
    """
    Create an ImageJ macro file for extracting individual cells.
    
    Args:
        roi_dir (str): Directory containing ROI files
        raw_data_dir (str): Directory containing original images
        output_dir (str): Directory where individual cells will be saved
        auto_close (bool): Whether to add a line to close ImageJ when the macro completes
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/temp_extract_cells.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Log the actual input directories to help diagnose issues
    logger.info(f"ROI directory: {roi_dir}")
    logger.info(f"Raw data directory: {raw_data_dir}")
    logger.info(f"Output directory: {output_dir}")
    
    # Check if ROI directory has any zip files
    roi_files = list(Path(roi_dir).glob("**/*.zip"))
    logger.info(f"Found {len(roi_files)} ROI zip files in ROI directory")
    for roi_file in roi_files:
        logger.info(f"ROI file: {roi_file}")
    
    # Check if raw data directory has any tif files
    tif_files = list(Path(raw_data_dir).glob("**/*.tif"))
    logger.info(f"Found {len(tif_files)} TIF files in raw data directory")
    for tif_file in tif_files[:5]:  # Only show first 5 to avoid flooding logs
        logger.info(f"TIF file: {tif_file}")
    if len(tif_files) > 5:
        logger.info(f"...and {len(tif_files)-5} more TIF files")
    
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
    
    // Get all subdirectories in the raw data condition directory
    conditionFolder = rawDataParent + dishName;
    if (!File.exists(conditionFolder)) {
        print("Raw data condition directory not found: " + conditionFolder);
        continue;
    }
    
    print("Looking for subdirectories in: " + conditionFolder);
    subdirs = getFileList(conditionFolder);
    
    // Process each subdirectory
    for (s = 0; s < subdirs.length; s++) {
        subdir = subdirs[s];
        // Skip non-directories and hidden folders
        if (!File.isDirectory(conditionFolder + "/" + subdir) || indexOf(subdir, ".") == 0) {
            continue;
        }
        
        // Full path to the subdirectory
        regionFolder = conditionFolder + "/" + subdir;
        print("Processing subdirectory: " + regionFolder);
        
        // Ensure trailing slash
        if (!endsWith(regionFolder, "/")) regionFolder = regionFolder + "/";
        
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
            
            // Get a list of subdirectories in the region folder
            print("Checking subdirectories in region folder: " + regionFolder);
            regionSubdirs = getFileList(regionFolder);
            
            // Try directly in the region folder first
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
            
            // If not found directly, try in each subdirectory
            if (regionImagePath == "") {
                print("Image not found directly, checking subdirectories...");
                
                for (sd = 0; sd < regionSubdirs.length; sd++) {
                    subdir = regionSubdirs[sd];
                    
                    // Skip non-directories and hidden folders
                    if (!File.isDirectory(regionFolder + subdir) || indexOf(subdir, ".") == 0) {
                        continue;
                    }
                    
                    print("Checking in subdirectory: " + subdir);
                    subdirPath = regionFolder + subdir;
                    // Ensure trailing slash
                    if (!endsWith(subdirPath, "/")) subdirPath = subdirPath + "/";
                    
                    for (n = 0; n < 2; n++) {
                        for (e = 0; e < extensions.length; e++) {
                            testPath = subdirPath + possibleBaseNames[n] + extensions[e];
                            print("Trying image path: " + testPath);
                            
                            if (File.exists(testPath)) {
                                regionImagePath = testPath;
                                print("Found image: " + regionImagePath);
                                break;
                            }
                        }
                        if (regionImagePath != "") break;  // Stop if we found an image
                    }
                    if (regionImagePath != "") break;  // Stop if we found an image
                }
            }
            
            if (regionImagePath == "") {
                print("No matching image found for base name: " + baseName);
                continue;
            }
            
            // Extract the region identifier from the image path, not just the base name
            print("DEBUG - Analyzing for region using file path: " + regionImagePath);
            region = "";
            
            // First, try to extract the region from the actual image file path
            // This is more reliable than using just the base name
            if (indexOf(regionImagePath, "/R_1_") >= 0) {
                region = "R_1";
                print("DEBUG - Extracted R_1 from image path");
            } else if (indexOf(regionImagePath, "/R_2_") >= 0) {
                region = "R_2";
                print("DEBUG - Extracted R_2 from image path");
            } else if (indexOf(regionImagePath, "/R_3_") >= 0) {
                region = "R_3";
                print("DEBUG - Extracted R_3 from image path");
            } else if (indexOf(regionImagePath, "/R_4_") >= 0) {
                region = "R_4";
                print("DEBUG - Extracted R_4 from image path");
            } else {
                // Fallback to the existing pattern matching logic if needed
                print("DEBUG - Could not extract region from path, trying base name: " + baseName);
                
                // Add a more flexible pattern for region identification
                if (indexOf(baseName, "50min_Washout") >= 0) {
                    region = "50min_Washout";
                    print("DEBUG - Matched 50min_Washout pattern");
                } else if (indexOf(baseName, "TS1_50min") >= 0) {
                    region = "TS1_50min";
                    print("DEBUG - Matched TS1_50min pattern");
                } else if (indexOf(baseName, "TS2_50min") >= 0) {
                    region = "TS2_50min";
                    print("DEBUG - Matched TS2_50min pattern");
                } else if (indexOf(baseName, "R_1") >= 0 || indexOf(baseName, "1_") >= 0) {
                    region = "R_1";
                    print("DEBUG - Matched R_1 pattern");
                } else if (indexOf(baseName, "R_2") >= 0 || indexOf(baseName, "2_") >= 0) {
                    region = "R_2";
                    print("DEBUG - Matched R_2 pattern");
                } else if (indexOf(baseName, "R_3") >= 0 || indexOf(baseName, "3_") >= 0) {
                    region = "R_3";
                    print("DEBUG - Matched R_3 pattern");
                } else if (indexOf(baseName, "R_4") >= 0 || indexOf(baseName, "4_") >= 0) {
                    region = "R_4";
                    print("DEBUG - Matched R_4 pattern");
                } else {
                    // If no pattern matches, use the entire base name as the region
                    region = baseName;
                    print("DEBUG - No region pattern match, using full base name: " + baseName);
                }
            }
            
            print("Identified region: " + region);
            
            // Determine the timepoint from the baseName.
            // Add debugging for timepoint matching
            print("DEBUG - Analyzing for timepoint: " + baseName);
            timepoint = "";
            timeLabel = "";
            
            if (indexOf(baseName, "t00") >= 0) {
                timepoint = "t00";
                timeLabel = "t00";
                print("DEBUG - Matched t00 timepoint");
            } else if (indexOf(baseName, "t03") >= 0) {
                timepoint = "t03";
                timeLabel = "t03";
                print("DEBUG - Matched t03 timepoint");
            } else {
                print("DEBUG - No explicit timepoint found, checking for timepoint_1 in folder structure");
                // Try to extract timepoint from folder structure if not in filename
                if (indexOf(regionFolder, "timepoint_1") >= 0) {
                    timepoint = "t00";  // Map timepoint_1 to t00
                    timeLabel = "t00";
                    print("DEBUG - Using t00 based on timepoint_1 folder");
                } else {
                    print("Timepoint not found in: " + baseName + " or folder structure");
                    continue;
                }
            }
            
            print("Identified timepoint: " + timepoint + " -> " + timeLabel);
            
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
            
            // No transformations needed - Cellpose invocation method fixed the orientation issue
            print("Image dimensions: " + getWidth() + " x " + getHeight());
            
            print("Opened region image: " + regionTitle + " (" + regionImagePath + ")");
            
            // Set up the output folder for processed cells.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            print("Output folder for cells: " + outputFolder);
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
}
print("Completed extracting individual cells");
"""
    
    # Add auto-close line if requested
    if auto_close:
        macro_content += '\n// Close ImageJ when done\neval("script", "System.exit(0);");\n'
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return str(macro_file)

def run_imagej_macro(imagej_path, macro_file, auto_close=False):
    """
    Run ImageJ with a given macro and arguments.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        auto_close (bool): Whether the macro will automatically close ImageJ
        
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        # Validate paths before running
        if not os.path.exists(imagej_path):
            logger.error(f"ImageJ executable not found at: {imagej_path}")
            return False
        
        if not os.path.exists(macro_file):
            logger.error(f"Macro file not found at: {macro_file}")
            return False
        
        cmd = [imagej_path, '-macro', macro_file]
        
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
            # Split by lines for better readability in logs
            for line in result.stdout.splitlines():
                if line.strip():  # Only log non-empty lines
                    logger.info(f"ImageJ output: {line}")
        
        if result.stderr:
            for line in result.stderr.splitlines():
                if line.strip():
                    logger.warning(f"ImageJ error: {line}")
        
        # Check if the command executed successfully
        if result.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {result.returncode}")
            return False
        
        # Verify that cells were actually created
        output_dirs = []
        for line in result.stdout.splitlines():
            if "Output folder for cells:" in line:
                output_dir = line.split("Output folder for cells:")[1].strip()
                output_dirs.append(output_dir)
        
        for output_dir in output_dirs:
            # Check if any cell files were created
            try:
                cell_files = list(Path(output_dir).glob("CELL*.tif"))
                logger.info(f"Found {len(cell_files)} cell files in {output_dir}")
                if len(cell_files) == 0:
                    logger.warning(f"No cell files were created in {output_dir}")
            except Exception as e:
                logger.warning(f"Error checking cell files in {output_dir}: {e}")
        
        return True
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}", exc_info=True)
        return False

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
    
    args = parser.parse_args()
    
    # Set logging level based on verbose flag
    if args.verbose:
        logger.setLevel(logging.DEBUG)
        logger.debug("Verbose logging enabled")
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Validate ROI directory structure
    try:
        roi_dir = Path(args.roi_dir)
        if not roi_dir.exists():
            logger.error(f"ROI directory does not exist: {roi_dir}")
            return 1
        
        # Check what's in the ROI directory
        logger.info(f"ROI directory contents:")
        for item in roi_dir.iterdir():
            if item.is_dir():
                logger.info(f"  Directory: {item.name}")
                # Check for ROI files in subdirectory
                roi_files = list(item.glob("*.zip"))
                logger.info(f"    Found {len(roi_files)} ROI files in {item.name}")
                for roi_file in roi_files:
                    logger.info(f"      ROI file: {roi_file.name}")
    except Exception as e:
        logger.error(f"Error checking ROI directory structure: {e}")
    
    # Create the ImageJ macro
    macro_file = create_macro_file(args.roi_dir, args.raw_data_dir, args.output_dir, args.auto_close)
    
    # Run the ImageJ macro
    success = run_imagej_macro(args.imagej, macro_file, args.auto_close)
    
    if success:
        logger.info("Cell extraction completed successfully")
        return 0
    else:
        logger.error("Cell extraction failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())