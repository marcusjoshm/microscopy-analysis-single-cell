#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Threshold Grouped Cells Script for Single Cell Analysis Workflow

This script takes the grouped cell images, applies thresholding to create masks,
and saves them to the grouped masks directory.
"""

import os
import sys
import argparse
import logging
import tempfile
import subprocess
from pathlib import Path

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("GroupedThresholder")

def create_macro_file(input_dir, output_dir, auto_close=False):
    """
    Create an ImageJ macro file for thresholding grouped cell images.
    
    Args:
        input_dir (str): Directory containing grouped cell images
        output_dir (str): Directory to save thresholded mask images
        auto_close (bool): Whether to add a line to close ImageJ when the macro completes
        
    Returns:
        str: Path to the created macro file
    """
    # Create a macro file
    macro_file = Path("macros/threshold_grouped_cells.ijm")
    
    # Ensure the directory exists
    macro_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Define the flag file path that will be created if user requests more bins
    flag_file = Path(output_dir) / "NEED_MORE_BINS.flag"
    
    # Generate the macro content
    macro_content = """
// Helper function to join array elements with a separator.
function joinArray(arr, separator) {
    s = "";
    for (i = 0; i < arr.length; i++) {
        s += arr[i];
        if (i < arr.length - 1)
            s += separator;
    }
    return s;
}

// ----- CONFIGURATION -----
cellsDir = "%s/";
outputDir = "%s/";
flagFile = "%s";
needMoreBinsFlag = false;

print("cellsDir: " + cellsDir);

// Ensure trailing slashes for path concatenation
if (!endsWith(cellsDir, "/")) cellsDir = cellsDir + "/";
if (!endsWith(outputDir, "/")) outputDir = outputDir + "/";

// Get list of dish directories in cellsDir.
dishDirs = getFileList(cellsDir);
print("Found dish directories: " + joinArray(dishDirs, ", "));

// First, open all images for preview - collect file paths into an array
allImagePaths = newArray();
allImageInfo = newArray(); // Store condition/region info for each image

for (d = 0; d < dishDirs.length; d++) {
    dishName = dishDirs[d];
    
    // Skip non-directories and hidden files
    if (endsWith(dishName, ".tif") || startsWith(dishName, ".")) {
        continue;
    }
    
    dishPath = cellsDir + dishName;
    // Ensure trailing slash
    if (!endsWith(dishPath, "/")) dishPath = dishPath + "/";
    
    print("Scanning dish: " + dishPath);
    
    // Get list of region/timepoint subdirectories within the dish folder
    timeDirs = getFileList(dishPath);
    if (timeDirs.length == 0) {
        print("No subdirectories found in " + dishName);
        continue;
    }
    
    for (t = 0; t < timeDirs.length; t++) {
        timeName = timeDirs[t];
        
        // Skip non-directories and hidden files
        if (endsWith(timeName, ".tif") || startsWith(timeName, ".")) {
            continue;
        }
        
        timePath = dishPath + timeName;
        // Ensure trailing slash
        if (!endsWith(timePath, "/")) timePath = timePath + "/";
        
        // Get list of files in the time folder
        files = getFileList(timePath);
        if (files.length == 0) {
            print("No files found in " + timeName);
            continue;
        }
        
        for (f = 0; f < files.length; f++) {
            fileName = files[f];
            
            // Process only TIFF files
            if (endsWith(fileName, ".tif")) {
                imagePath = timePath + fileName;
                // Add this image path to our array
                allImagePaths = Array.concat(allImagePaths, imagePath);
                // Store the condition/region info
                allImageInfo = Array.concat(allImageInfo, dishName + " - " + timeName + " - " + fileName);
            }
        }
    }
}

// Open a reasonable number of images for preview (up to 9)
maxPreviewImages = 9;
numToOpen = minOf(allImagePaths.length, maxPreviewImages);

if (numToOpen == 0) {
    showMessage("No Images Found", "No images were found to threshold in the specified directory.");
    eval("script", "System.exit(1);");
}

// Open the preview images
previewWindows = newArray(numToOpen);
for (i = 0; i < numToOpen; i++) {
    open(allImagePaths[i]);
    previewWindows[i] = getTitle();
    
    // Enhance contrast for better viewing
    run("Enhance Contrast...", "saturated=0.01");
    
    // Add image info as an overlay
    setFont("SansSerif", 14, "bold");
    makeText(allImageInfo[i], 10, 30);
    run("Add Selection...", "stroke=yellow fill=#99000000");
    run("Select None");
    
    // Tile windows for better viewing after all are open
    if (i == numToOpen - 1) {
        run("Tile");
    }
}

// Ask user to evaluate if the current grouping is sufficient
// Show dialog with image summary
Dialog.create("Evaluate Cell Grouping");
Dialog.addMessage("Please review the opened images to evaluate if the current cell grouping is sufficient.");
Dialog.addMessage("Showing " + numToOpen + " of " + allImagePaths.length + " images.");
Dialog.addMessage("Do you want to proceed with thresholding these grouped cells,");
Dialog.addMessage("or would you like to go back and create more bins for better separation?");
Dialog.addChoice("Decision:", newArray("Proceed with thresholding", "Need more bins for better separation"));
Dialog.show();

userDecision = Dialog.getChoice();

// Close all preview windows at once
run("Close All");

// If user wants more bins, create flag file and exit
if (userDecision == "Need more bins for better separation") {
    File.saveString("User requested more bins for better cell grouping", flagFile);
    showMessage("More Bins Requested", "Your request for more bins has been recorded. The workflow will restart the cell grouping step with more bins. You can now close ImageJ.");
    eval("script", "System.exit(0);");
}

// If we're here, user wants to proceed with thresholding
showMessage("Proceeding with Thresholding", "The current grouping is acceptable. We will now begin thresholding these images.");

// Process each image for thresholding
for (d = 0; d < dishDirs.length; d++) {
    dishName = dishDirs[d];
    
    // Skip non-directories and hidden files
    if (endsWith(dishName, ".tif") || startsWith(dishName, ".")) {
        continue;
    }
    
    dishPath = cellsDir + dishName;
    // Ensure trailing slash
    if (!endsWith(dishPath, "/")) dishPath = dishPath + "/";
    
    print("Processing dish: " + dishPath);
    
    // Get list of region/timepoint subdirectories within the dish folder
    timeDirs = getFileList(dishPath);
    if (timeDirs.length == 0) {
        print("No subdirectories found in " + dishName);
        continue;
    }
    
    print("Found time subdirectories in " + dishName + ": " + joinArray(timeDirs, ", "));
    
    for (t = 0; t < timeDirs.length; t++) {
        timeName = timeDirs[t];
        
        // Skip non-directories and hidden files
        if (endsWith(timeName, ".tif") || startsWith(timeName, ".")) {
            continue;
        }
        
        timePath = dishPath + timeName;
        // Ensure trailing slash
        if (!endsWith(timePath, "/")) timePath = timePath + "/";
        
        print("Processing time folder: " + timePath);
        
        // Get list of files in the time folder
        files = getFileList(timePath);
        if (files.length == 0) {
            print("No files found in " + timeName);
            continue;
        }
        
        print("Found files in " + timeName + ": " + joinArray(files, ", "));
        
        for (f = 0; f < files.length; f++) {
            fileName = files[f];
            
            // Process only TIFF files
            if (endsWith(fileName, ".tif")) {
                imagePath = timePath + fileName;
                print("Opening file: " + imagePath);
                
                // Open the image
                open(imagePath);
                
                // Image processing steps
                run("Enhance Contrast...", "saturated=0.01");
                run("Gaussian Blur...", "sigma=1.70");
                imageTitle = getTitle();
                selectWindow(imageTitle);
                
                // Set the oval selection tool
                setTool("oval");
                
                // Wait for the user to draw an ROI for thresholding
                waitForUser("Draw ROI for thresholding", "Please draw an oval ROI in a representative area for thresholding, then click OK.");
                
                // Check if user drew an ROI
                if (selectionType() == -1) {
                    // No selection was made, prompt again
                    waitForUser("No ROI detected", "Please draw an oval ROI to select an area for thresholding, then click OK.");
                    
                    // If still no selection, use the entire image
                    if (selectionType() == -1) {
                        print("No ROI drawn, using the entire image for thresholding.");
                        run("Select All");
                    }
                }
                
                // Apply Otsu thresholding directly
                setAutoThreshold("Otsu dark 16-bit");
                
                // Convert to mask
                setOption("BlackBackground", true);
                run("Convert to Mask");
                
                // Create matching output directory structure
                outFolder = outputDir + dishName + "/" + timeName + "/";
                if (!File.exists(outFolder)) {
                    File.makeDirectory(outFolder);
                    print("Created output directory: " + outFolder);
                }
                
                // Save the processed image with "MASK_" prepended
                outputPath = outFolder + "MASK_" + fileName;
                saveAs("Tiff", outputPath);
                print("Saved: " + outputPath);
                
                // Close the image
                close();
            }
        }
    }
}

print("Thresholding of grouped cells completed.");
""" % (input_dir, output_dir, flag_file)
    
    # Add auto-close line if requested
    if auto_close:
        macro_content += '\n// Close ImageJ when done\neval("script", "System.exit(0);");\n'
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    return str(macro_file), str(flag_file)

def run_imagej_macro(imagej_path, macro_file, flag_file, auto_close=False):
    """
    Run ImageJ with a given macro file.
    
    Args:
        imagej_path (str): Path to the ImageJ executable
        macro_file (str): Path to the ImageJ macro file
        flag_file (str): Path to the flag file that indicates need for more bins
        auto_close (bool): Whether the macro will automatically close ImageJ
        
    Returns:
        tuple: (bool, bool) - (success, needs_more_bins)
    """
    try:
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
            logger.info(f"ImageJ output: {result.stdout}")
        if result.stderr:
            logger.warning(f"ImageJ errors: {result.stderr}")
        
        # Check for the flag file
        needs_more_bins = os.path.exists(flag_file)
        if needs_more_bins:
            logger.info(f"Flag file detected: {flag_file}")
            logger.info("User has requested more bins for better cell grouping")
            # Remove the flag file to avoid confusion on subsequent runs
            try:
                os.remove(flag_file)
                logger.info(f"Removed flag file after detection")
            except Exception as e:
                logger.warning(f"Could not remove flag file: {e}")
        
        # Check if the command executed successfully
        if result.returncode != 0:
            logger.error(f"ImageJ returned non-zero exit code: {result.returncode}")
            return False, needs_more_bins
        
        return True, needs_more_bins
    except Exception as e:
        logger.error(f"Error running ImageJ: {e}")
        return False, False

def main():
    """Main function to threshold grouped cell images."""
    parser = argparse.ArgumentParser(description='Threshold grouped cell images using ImageJ')
    
    parser.add_argument('--input-dir', '-i', required=True,
                        help='Directory containing grouped cell images')
    parser.add_argument('--output-dir', '-o', required=True,
                        help='Directory to save thresholded mask images')
    parser.add_argument('--imagej', required=True,
                        help='Path to ImageJ executable')
    parser.add_argument('--auto-close', action='store_true',
                        help='Close ImageJ when the macro completes')
    
    args = parser.parse_args()
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file, flag_file = create_macro_file(args.input_dir, args.output_dir, args.auto_close)
    
    # Run the ImageJ macro
    success, needs_more_bins = run_imagej_macro(args.imagej, macro_file, flag_file, args.auto_close)
    
    if success:
        logger.info("Thresholding of grouped cells completed successfully")
        
        # If the user requested more bins, signal this to the workflow
        if needs_more_bins:
            logger.info("User requested more bins for better cell grouping")
            # Exit with a special code (5) to signal the workflow that more bins are needed
            return 5
        
        return 0
    else:
        logger.error("Thresholding of grouped cells failed")
        return 1

if __name__ == "__main__":
    sys.exit(main())