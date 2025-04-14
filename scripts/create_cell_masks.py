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
            print("Checking ROI file: " + fileName);
            
            // Process all zip files that might contain ROIs
            if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {{
                print("Skipping non-zip file: " + fileName);
                continue;
            }}
            
            // Derive the base name - we'll support both ROIs_R_ prefix and ROIs_ prefix
            baseName = "";
            if (startsWith(fileName, "ROIs_R_")) {{
                baseName = substring(fileName, lengthOf("ROIs_R_"), indexOf(fileName, "_rois.zip"));
                print("Extracted base name from ROIs_R_ format: " + baseName);
            }} else if (startsWith(fileName, "ROIs_")) {{
                baseName = substring(fileName, lengthOf("ROIs_"), indexOf(fileName, "_rois.zip"));
                print("Extracted base name from ROIs_ format: " + baseName);
            }} else {{
                // Try to extract any useful part from the filename
                if (endsWith(fileName, "_rois.zip")) {{
                    baseName = substring(fileName, 0, indexOf(fileName, "_rois.zip"));
                    print("Extracted base name from generic _rois.zip format: " + baseName);
                }} else if (endsWith(fileName, ".zip")) {{
                    baseName = substring(fileName, 0, indexOf(fileName, ".zip"));
                    print("Extracted base name from generic .zip format: " + baseName);
                }}
            }}
            
            if (baseName == "") {{
                print("Could not extract base name from: " + fileName);
                continue;
            }}
            
            // Extract region in a more flexible way
            print("DEBUG - Analyzing for region: " + baseName);
            region = "";
            
            // First try special patterns for your specific naming
            if (indexOf(baseName, "50min_Washout") >= 0) {{
                region = "50min_Washout";
                print("DEBUG - Matched 50min_Washout region pattern");
            }} else if (indexOf(baseName, "TS1_50min") >= 0) {{
                region = "TS1_50min";
                print("DEBUG - Matched TS1_50min region pattern");
            }} else if (indexOf(baseName, "TS2_50min") >= 0) {{
                region = "TS2_50min";
                print("DEBUG - Matched TS2_50min region pattern");
            }} 
            // Then fall back to standard R_N patterns
            else if (indexOf(baseName, "R_1") >= 0) {{
                region = "R_1";
                print("DEBUG - Matched R_1 region pattern");
            }} else if (indexOf(baseName, "R_2") >= 0) {{
                region = "R_2";
                print("DEBUG - Matched R_2 region pattern");
            }} else if (indexOf(baseName, "R_3") >= 0) {{
                region = "R_3";
                print("DEBUG - Matched R_3 region pattern");
            }} else if (indexOf(baseName, "R_4") >= 0) {{
                region = "R_4";
                print("DEBUG - Matched R_4 region pattern");
            }} else {{
                // If no pattern is found, use the whole baseName
                region = baseName;
                print("DEBUG - No specific region pattern matched, using full base name: " + baseName);
            }}
            
            if (region == "") {{
                print("Region not found in: " + baseName);
                continue;
            }}
            
            print("Identified region: " + region);
            
            // Extract timepoint from the base name with more flexibility
            print("DEBUG - Analyzing for timepoint in: " + baseName);
            timepoint = "";
            
            if (indexOf(baseName, "t00") >= 0) {{
                timepoint = "t00";
                print("DEBUG - Matched t00 timepoint in filename");
            }} else if (indexOf(baseName, "t03") >= 0) {{
                timepoint = "t03";
                print("DEBUG - Matched t03 timepoint in filename");
            }} else if (indexOf(baseName, "t06") >= 0) {{
                timepoint = "t06";
                print("DEBUG - Matched t06 timepoint in filename");
            }} else {{
                // If not found in filename, assume t00 (most common case)
                print("DEBUG - No specific timepoint pattern in filename, defaulting to t00");
                timepoint = "t00";
            }}
            
            timeLabel = timepoint;
            print("Using timepoint: " + timepoint + " -> time label: " + timeLabel);
            
            // Build the mask image filename - be flexible with naming
            // First try standard format
            maskFileName = "MASK_" + region + "_" + timeLabel + ".tif";
            maskFilePath = maskFolder + maskFileName;
            
            // If that doesn't exist, try other variations
            if (!File.exists(maskFilePath)) {{
                print("Standard mask filename not found: " + maskFilePath);
                print("Looking for alternative mask file patterns...");
                
                // List all mask files and find one that contains both region and timepoint
                maskFiles = getFileList(maskFolder);
                for (m = 0; m < maskFiles.length; m++) {{
                    candidateFile = maskFiles[m];
                    print("Checking mask file: " + candidateFile);
                    
                    // Check if this file contains our region and timepoint parts
                    if (startsWith(candidateFile, "MASK_") && 
                        ((indexOf(candidateFile, region) >= 0 && indexOf(candidateFile, timeLabel) >= 0) ||
                         (indexOf(candidateFile, region) >= 0 && timeLabel == "t00"))) {{
                        
                        maskFilePath = maskFolder + candidateFile;
                        print("Found matching mask file: " + maskFilePath);
                        break;
                    }}
                }}
            }}
            
            if (!File.exists(maskFilePath)) {{
                print("ERROR: No suitable mask file found for region " + region + " and timepoint " + timepoint);
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
            print("Opening mask image: " + maskFilePath);
            open(maskFilePath);
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Set up the output folder for processed MASK_CELLs.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            print("Output folder for cell masks: " + outputFolder);
            if (!File.exists(outputFolder)) {{
                print("Creating output directory: " + outputFolder);
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
        
        # Use the --run flag with a specific argument format to run the macro without showing a dialog
        cmd = [imagej_path, "--ij2", "--console", "--run", macro_file_absolute]
        
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
        
        # Check if the command executed successfully
        if result.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {result.returncode}")
            return False
        
        # Verify if any files were created
        success = False
        
        # Parse output to check for created files
        for line in result.stdout.splitlines():
            if "Saved MASK_CELL:" in line:
                success = True
                break
        
        if not success:
            logger.warning("No MASK_CELL files were created according to the ImageJ output")
            
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
                    if file.startswith("MASK_CELL") and file.endswith(".tiff"):
                        mask_files.append(os.path.join(root, file))
            
            if mask_files:
                logger.info(f"Found {len(mask_files)} mask files in output directory")
                logger.info("Cell mask creation completed successfully")
            else:
                logger.warning("No mask files were found in the output directory!")
                logger.warning("Cell mask creation may have failed despite successful execution")
        except Exception as e:
            logger.error(f"Error checking for created mask files: {e}")
        
        return 0
    else:
        logger.error("Cell mask creation failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())