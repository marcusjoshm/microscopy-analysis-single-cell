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
import glob
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

def get_time_label(timepoint):
    """
    Map timepoint (t00, t03, etc.) to timepoint label (t00, t03, etc.)
    
    Args:
        timepoint (str): Timepoint label (e.g., "t00", "t03")
        
    Returns:
        str: Timepoint label (e.g., "t00", "t03")
    """
    if timepoint == "t00":
        return "t00"
    elif timepoint == "t03":
        return "t03"
    elif timepoint == "t06":
        return "t06"
    else:
        logger.warning(f"Unknown timepoint: {timepoint}, defaulting to 't00'")
        return "t00"

def create_macro_file(roi_dir, mask_dir, output_dir, auto_close=False):
    """
    Create an ImageJ macro file for creating individual cell masks.
    
    Args:
        roi_dir (str): Directory containing ROI files
        mask_dir (str): Directory containing combined mask images
        output_dir (str): Output directory for individual cell masks
        auto_close (bool): Whether to add a line to close ImageJ when the macro completes
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/create_cell_masks.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Log the directories being used
    logger.info(f"ROI directory: {roi_dir}")
    logger.info(f"Mask directory: {mask_dir}")
    logger.info(f"Output directory: {output_dir}")
    
    # Check for ROI files
    roi_files = list(Path(roi_dir).glob("**/*.zip"))
    logger.info(f"Found {len(roi_files)} ROI zip files in ROI directory")
    for roi_file in roi_files[:5]:
        logger.info(f"ROI file: {roi_file}")
    
    # Check for mask files
    mask_files = list(Path(mask_dir).glob("**/*.tif"))
    logger.info(f"Found {len(mask_files)} mask files in mask directory")
    for mask_file in mask_files[:5]:
        logger.info(f"Mask file: {mask_file}")
    
    # Generate the macro content - SIMPLIFIED VERSION
    macro_content = f"""// ----- Helper Functions -----
function startsWith(str, prefix) {{
    // Check if string is shorter than prefix
    if (lengthOf(str) < lengthOf(prefix)) {{
        return 0;
    }}
    
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

function contains(str, substring) {{
    return indexOf(str, substring) >= 0;
}}

// Enable batch mode for headless operation
setBatchMode(true);

// ----- Set Parent Directories -----
roiParent = "{roi_dir}";
rawDataParent = "{mask_dir}";
outputParent = "{output_dir}";

print("ROI directory: " + roiParent);
print("Mask directory: " + rawDataParent);
print("Output directory: " + outputParent);

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
print("Found " + dishes.length + " entries in ROI parent folder");
for (d = 0; d < dishes.length; d++) {{
    dishName = dishes[d];
    print("Processing entry: " + dishName);
    
    if (File.isDirectory(roiParent + dishName)) {{
        roiFolder = roiParent + dishName + "/";
        // Ensure the folder path for combined masks has a trailing slash.
        maskFolder = rawDataParent + dishName + "/";
        
        print("ROI folder: " + roiFolder);
        print("Mask folder: " + maskFolder);
        
        // List contents of mask folder to debug
        if (File.exists(maskFolder)) {{
            maskFiles = getFileList(maskFolder);
            print("Found " + maskFiles.length + " files in mask folder: " + maskFolder);
            for (m = 0; m < maskFiles.length; m++) {{
                print("  Mask file: " + maskFiles[m]);
            }}
        }} else {{
            print("WARNING: Mask folder does not exist: " + maskFolder);
        }}
        
        // Get the list of ROI files in this dish folder.
        roiFiles = getFileList(roiFolder);
        print("Found " + roiFiles.length + " files in ROI folder");
        
        for (r = 0; r < roiFiles.length; r++) {{
            fileName = roiFiles[r];
            print("PROCESSING ROI file: " + fileName);
            
            // Process all zip files that might contain ROIs
            if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {{
                print("Skipping non-zip file: " + fileName);
                continue;
            }}
            
            // IMPROVED REGION EXTRACTION - Handle "Merged" pattern in filenames
            region = "";
            timepoint = "t00";  // Default to t00
            
            // Handle any ROI filename format starting with ROIs_
            if (startsWith(fileName, "ROIs_")) {{
                // Split the filename into parts
                parts = split(fileName, "_");
                
                if (parts.length >= 2) {{
                    // Extract region from the filename - try to be smart about it
                    // The region is typically right after "ROIs_"
                    
                    // Special handling for R_# pattern (common format)
                    if (parts.length >= 3 && parts[1] == "R" && matches(parts[2], "[0-9]+")) {{
                        region = "R_" + parts[2];
                    }} 
                    // For other formats, just use the part after ROIs_ as the region
                    else {{
                        // If we have the pattern with timepoint and channel numbers,
                        // extract everything until we hit t## or ch## patterns
                        regionParts = newArray();
                        regionEndIndex = 1;
                        
                        for (p = 1; p < parts.length; p++) {{
                            // Stop when we hit a timepoint (t00, t01, etc) or channel (ch00, ch01, etc)
                            if ((startsWith(parts[p], "t") && matches(substring(parts[p], 1), "[0-9]+")) ||
                                (startsWith(parts[p], "ch") && matches(substring(parts[p], 2), "[0-9]+"))) {{
                                break;
                            }}
                            regionParts = Array.concat(regionParts, parts[p]);
                            regionEndIndex = p;
                        }}
                        
                        // Build the region string
                        if (regionParts.length > 0) {{
                            region = regionParts[0];
                            for (p = 1; p < regionParts.length; p++) {{
                                region = region + "_" + regionParts[p];
                            }}
                        }} else {{
                            // Fallback to just the first part
                            region = parts[1];
                        }}
                    }}
                    
                    print("Extracted region: " + region);
                    
                    // Try to extract timepoint from filename
                    for (p = 0; p < parts.length; p++) {{
                        if (startsWith(parts[p], "t") && lengthOf(parts[p]) >= 3 && 
                            matches(substring(parts[p], 1), "[0-9]+")) {{
                            timepoint = parts[p];
                            break;
                        }}
                    }}
                }} else {{
                    print("ERROR: Could not parse ROI filename: " + fileName);
                    continue;
                }}
                
                print("Using timepoint: " + timepoint);
            }} else {{
                print("WARNING: Unknown ROI naming format: " + fileName);
                continue;
            }}
            
            if (region == "") {{
                print("ERROR: Could not extract region from filename: " + fileName);
                continue;
            }}
            
            // Only add R_ prefix to numeric regions (1, 2, 3, etc.) but not to named regions like 120min_washout
            if (matches(region, "^[0-9]+$")) {{
                print("Adding R_ prefix to numeric region: " + region);
                region = "R_" + region;
            }}
            
            // Try multiple mask filename patterns to find one that exists
            maskFileFound = false;
            maskFilePath = "";
            
            // Extract channel information if present
            channelPart = "";
            for (p = 0; p < parts.length; p++) {{  
                if (startsWith(parts[p], "ch") && lengthOf(parts[p]) >= 3) {{
                    channelPart = parts[p];
                    break;
                }}
            }}
            
            // Try basic pattern first
            testPath = maskFolder + "MASK_" + region + "_" + timepoint + ".tif";
            print("Looking for mask file: " + testPath);
            if (File.exists(testPath)) {{
                maskFilePath = testPath;
                maskFileFound = true;
                print("CONFIRMED: Found mask file: " + maskFilePath);
            }}
            
            // Try pattern with channel if channel was found
            if (!maskFileFound && channelPart != "") {{
                testPath = maskFolder + "MASK_" + region + "_" + channelPart + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {{
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }}
            }}
            
            // Try pattern with duplicate timepoint
            if (!maskFileFound) {{
                testPath = maskFolder + "MASK_" + region + "_" + timepoint + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {{
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }}
            }}
            
            // Try pattern with channel and duplicate timepoint
            if (!maskFileFound && channelPart != "") {{
                testPath = maskFolder + "MASK_" + region + "_" + channelPart + "_" + timepoint + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {{
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }}
            }}
            
            // List all available mask files if none were found
            if (!maskFileFound) {{
                print("ERROR: No mask file found. Looking through all files in the directory:");
                allFiles = getFileList(maskFolder);
                for (f = 0; f < allFiles.length; f++) {{
                    if (endsWith(allFiles[f], ".tif") || endsWith(allFiles[f], ".tiff")) {{
                        print("Available mask file: " + allFiles[f]);
                    }}
                }}
                // Set a default path for error handling
                maskFilePath = maskFolder + "MASK_" + region + "_" + timepoint + ".tif";
            }}
            
            if (!File.exists(maskFilePath)) {{
                print("ERROR: Mask file not found: " + maskFilePath);
                continue;
            }} else {{
                print("CONFIRMED: Found mask file: " + maskFilePath);
            }}
            
            // Load the ROIs
            roiFilePath = roiFolder + fileName;
            print("Loading ROI file: " + roiFilePath);
            roiManager("reset");
            roiManager("open", roiFilePath);
            
            // Count ROIs
            nRois = roiManager("count");
            print("Found " + nRois + " ROIs in file: " + roiFilePath);
            
            if (nRois == 0) {{
                print("ERROR: No ROIs found in file: " + roiFilePath);
                continue;
            }}
            
            // Open the mask image
            print("Opening mask image: " + maskFilePath);
            open(maskFilePath);
            
            if (nImages == 0) {{
                print("ERROR: Failed to open mask image: " + maskFilePath);
                continue;
            }}
            
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Create output folder
            outputFolder = outputParent + dishName + "/" + region + "_" + timepoint + "/";
            print("Output folder: " + outputFolder);
            if (!File.exists(outputFolder)) {{
                print("Creating output directory: " + outputFolder);
                File.makeDirectory(outputFolder);
            }}
            
            // Process each ROI - SIMPLIFIED VERSION
            for (i = 0; i < nRois; i++) {{
                print("Processing ROI " + (i+1) + " of " + nRois);
                
                // Duplicate image
                selectWindow(maskTitle);
                run("Duplicate...", "title=TempMask duplicate");
                
                // Apply ROI
                roiManager("select", i);
                
                // Process all slices
                nslices = nSlices();
                for (s = 1; s <= nslices; s++) {{
                    setSlice(s);
                    run("Clear Outside");
                }}
                
                // Save the cell mask
                MASK_CELLNum = i + 1;
                savePath = outputFolder + "MASK_CELL" + MASK_CELLNum + ".tiff";
                print("Saving to: " + savePath);
                
                // Use simple saveAs to preserve metadata
                saveAs("Tiff", savePath);
                
                // Verify save
                if (File.exists(savePath)) {{
                    print("SUCCESS: Saved " + savePath);
                }} else {{
                    print("ERROR: Failed to save " + savePath);
                }}
                
                // Close the duplicate
                close();
            }}
            
            // Close the original and reset
            if (isOpen(maskTitle)) {{
                selectWindow(maskTitle);
                close();
            }}
            roiManager("reset");
        }}
    }}
}}

// Exit batch mode
setBatchMode(false);
print("Cell mask creation complete!");
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
    Run ImageJ with a given macro.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        auto_close (bool): Whether the macro will automatically close ImageJ
        
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        # Get the absolute path to the macro file
        macro_file_absolute = os.path.abspath(macro_file)
        
        # Validate paths
        if not os.path.exists(imagej_path):
            logger.error(f"ImageJ executable not found at: {imagej_path}")
            return False
        
        if not os.path.exists(macro_file_absolute):
            logger.error(f"Macro file not found at: {macro_file_absolute}")
            return False
        
        # Use the -batch flag for headless operation
        cmd = [imagej_path, "-batch", macro_file_absolute]
        
        logger.info(f"Running ImageJ command: {cmd}")
        logger.info(f"ImageJ will {'auto-close' if auto_close else 'remain open'} after execution")
        
        result = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False  # Don't raise an exception on non-zero return code
        )
        
        # Log the output line by line for better readability
        if result.stdout:
            for line in result.stdout.splitlines():
                if line.strip():  # Only log non-empty lines
                    logger.info(f"ImageJ output: {line}")
        
        if result.stderr:
            for line in result.stderr.splitlines():
                if line.strip():  # Only log non-empty lines
                    logger.warning(f"ImageJ error: {line}")
        
        # Check for Java Runtime errors but don't immediately fail
        java_runtime_error = False
        if "Unable to locate a Java Runtime" in result.stderr:
            logger.warning("Java Runtime error detected, but will continue checking for created masks")
            java_runtime_error = True
            
        # Check if the command executed successfully
        if result.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {result.returncode}")
            if "SUCCESS: Saved" not in result.stdout and "Saved MASK_CELL:" not in result.stdout:
                return False
        
        # Verify if any files were created - look for evidence in the output
        success = False
        
        # Parse output to check for created files
        for line in result.stdout.splitlines():
            if "Saved MASK_CELL:" in line or "SUCCESS: Saved" in line:
                success = True
                break
        
        if not success:
            logger.warning("No MASK_CELL files were created according to the ImageJ output")
            
        # Allow filesystem to sync (sometimes needed for network drives)
        time.sleep(5)  # Increase delay to 5 seconds to ensure files are fully written
            
        return True
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}", exc_info=True)
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
    
    args = parser.parse_args()
    
    # Set logging level
    if args.verbose:
        logger.setLevel(logging.DEBUG)
    
    # Ensure paths have trailing slashes for the macro
    roi_dir = os.path.join(args.roi_dir, '')
    mask_dir = os.path.join(args.mask_dir, '')
    output_dir = os.path.join(args.output_dir, '')
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file = create_macro_file(roi_dir, mask_dir, output_dir, args.auto_close)
    
    # Run the ImageJ macro
    success = run_imagej_macro(args.imagej, macro_file, args.auto_close)
    
    if success:
        # Double check if any masks were actually created
        mask_files = []
        try:
            for root, dirs, files in os.walk(output_dir):
                for file in files:
                    # More flexible matching to check for mask files with different patterns
                    if (file.startswith("MASK_CELL") and (file.endswith(".tiff") or file.endswith(".tif"))):
                        mask_files.append(os.path.join(root, file))
            
            if mask_files:
                logger.info(f"Found {len(mask_files)} mask files in output directory")
                logger.info("Cell mask creation completed successfully")
                # Return success even if there were Java errors but masks were created
                return 0
            else:
                # Before giving up, try a second check with a delay - sometimes network drives take time
                logger.warning("No mask files found on first check, waiting 10 seconds and checking again...")
                time.sleep(10)
                
                # Try again
                mask_files = []
                for root, dirs, files in os.walk(output_dir):
                    for file in files:
                        if (file.startswith("MASK_CELL") and (file.endswith(".tiff") or file.endswith(".tif"))):
                            mask_files.append(os.path.join(root, file))
                
                if mask_files:
                    logger.info(f"Found {len(mask_files)} mask files in output directory on second check")
                    logger.info("Cell mask creation completed successfully")
                    return 0
                else:
                    logger.warning("No mask files were found in the output directory!")
                    logger.warning("Cell mask creation may have failed despite successful execution")
                    return 1  # Return error code when no masks are created
        except Exception as e:
            logger.error(f"Error checking for created mask files: {e}")
        
        return 0
    else:
        logger.error("Cell mask creation failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())