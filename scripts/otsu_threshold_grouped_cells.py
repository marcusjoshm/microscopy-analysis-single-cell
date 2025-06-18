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

def create_macro_file(input_dir, output_dir, channels=None, auto_close=False):
    """
    Create an ImageJ macro file for thresholding grouped cell images.
    
    Args:
        input_dir (str): Directory containing grouped cell images
        output_dir (str): Directory to save thresholded mask images
        channels (list): List of channels to process (e.g., ['ch00', 'ch02'])
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
    
    # Create channel filter condition
    channel_filter = ""
    if channels:
        channel_conditions = []
        for channel in channels:
            channel_conditions.append(f'indexOf(regionName, "{channel}") >= 0')
        channel_filter = f"""
        // Check if this region directory matches any of the specified channels
        channelMatch = false;
        if ({' || '.join(channel_conditions)}) {{
            channelMatch = true;
        }}
        if (!channelMatch) {{
            continue; // Skip this directory if it doesn't match specified channels
        }}
        """
    
    # Generate the macro content adapted for merged bin images
    macro_content = f"""
// Helper function to join array elements with a separator.
function joinArray(arr, separator) {{
    s = "";
    for (i = 0; i < arr.length; i++) {{
        s += arr[i];
        if (i < arr.length - 1)
            s += separator;
    }}
    return s;
}}

// ----- CONFIGURATION -----
cellsDir = "{input_dir}/";
outputDir = "{output_dir}/";
flagFile = "{flag_file}";
needMoreBinsFlag = false;

print("cellsDir: " + cellsDir);

// Ensure trailing slashes for path concatenation
if (!endsWith(cellsDir, "/")) cellsDir = cellsDir + "/";
if (!endsWith(outputDir, "/")) outputDir = outputDir + "/";

// Get list of condition directories in cellsDir.
conditionDirs = getFileList(cellsDir);
print("Found condition directories: " + joinArray(conditionDirs, ", "));

// Skip initial image preview - proceed directly to thresholding
// Start processing each image directly
print("Proceeding directly to thresholding without preview.");

// Process each condition directory
for (d = 0; d < conditionDirs.length; d++) {{
    conditionName = conditionDirs[d];
    
    // Skip non-directories and hidden files
    if (!File.isDirectory(cellsDir + conditionName) || startsWith(conditionName, ".")) {{
        continue;
    }}
    
    conditionPath = cellsDir + conditionName;
    // Ensure trailing slash
    if (!endsWith(conditionPath, "/")) conditionPath = conditionPath + "/";
    
    print("Processing condition: " + conditionPath);
    
    // Get list of region/channel/timepoint subdirectories within the condition folder
    regionDirs = getFileList(conditionPath);
    if (regionDirs.length == 0) {{
        print("No subdirectories found in " + conditionName);
        continue;
    }}
    
    print("Found region subdirectories in " + conditionName + ": " + joinArray(regionDirs, ", "));
    
    for (t = 0; t < regionDirs.length; t++) {{
        regionName = regionDirs[t];
        
        // Skip non-directories and hidden files
        if (!File.isDirectory(conditionPath + regionName) || startsWith(regionName, ".")) {{
            continue;
        }}
        
        {channel_filter}
        
        regionPath = conditionPath + regionName;
        // Ensure trailing slash
        if (!endsWith(regionPath, "/")) regionPath = regionPath + "/";
        
        print("Processing region folder: " + regionPath);
        
        // Get list of files in the region folder
        files = getFileList(regionPath);
        if (files.length == 0) {{
            print("No files found in " + regionName);
            continue;
        }}
        
        print("Found files in " + regionName + ": " + joinArray(files, ", "));
        
        for (f = 0; f < files.length; f++) {{
            fileName = files[f];
            
            // Process only bin TIFF files (skip CSV and txt files)
            if (endsWith(fileName, ".tif") && indexOf(fileName, "_bin_") >= 0) {{
                imagePath = regionPath + fileName;
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
                if (selectionType() == -1) {{
                    // No selection was made, prompt again
                    waitForUser("No ROI detected", "Please draw an oval ROI to select an area for thresholding, then click OK.");
                    
                    // If still no selection, use the entire image
                    if (selectionType() == -1) {{
                        print("No ROI drawn, using the entire image for thresholding.");
                        run("Select All");
                    }}
                }}
                
                // After ROI selection but before thresholding, ask if more bins are needed
                Dialog.create("Evaluate Cell Grouping");
                Dialog.addMessage("Based on what you see in this image, do you want to:");
                Dialog.addChoice("Decision:", newArray(
                    "Continue with thresholding", 
                    "Go back and add one more group",
                    "Ignore thresholding for this group. There are no structures to threshold in the field"
                ));
                Dialog.show();
                
                userBinsDecision = Dialog.getChoice();
                
                // If user wants more bins, create flag file and exit
                if (userBinsDecision == "Go back and add one more group") {{
                    File.saveString("User requested more bins for better cell grouping", flagFile);
                    showMessage("More Bins Requested", "Your request for more bins has been recorded. The workflow will restart the cell grouping step with more bins. You can now close ImageJ.");
                    run("Close All");
                    eval("script", "System.exit(0);");
                }}
                
                // Handle case when there are no structures to threshold
                if (userBinsDecision == "Ignore thresholding for this group. There are no structures to threshold in the field") {{
                    print("User indicated no structures to threshold - creating empty mask");
                    
                    // Create a completely black mask (all pixels = 0)
                    run("Select All");
                    run("Clear", "slice");
                    
                    // Make sure we have a binary image with all black pixels
                    setOption("BlackBackground", true);
                    // Skip Convert to Mask which would turn it to 255 values
                    // Instead manually set as 8-bit binary image with all zeros
                    run("8-bit");
                    setMinAndMax(0, 0);
                    run("Apply LUT", "slice");
                }} else {{
                    // Apply Otsu thresholding directly for normal case
                    setAutoThreshold("Otsu dark 16-bit");
                    
                    // Convert to mask
                    setOption("BlackBackground", true);
                    run("Convert to Mask");
                }}
                
                // Create matching output directory structure
                outFolder = outputDir + conditionName + "/" + regionName + "/";
                if (!File.exists(outFolder)) {{
                    File.makeDirectory(outFolder);
                    print("Created output directory: " + outFolder);
                }}
                
                // Save the processed image with "MASK_" prepended
                outputPath = outFolder + "MASK_" + fileName;
                saveAs("Tiff", outputPath);
                print("Saved: " + outputPath);
                
                // Close the image
                close();
            }}
        }}
    }}
}}

print("Thresholding of grouped cells completed.");
"""
    
    # Add auto-close line if requested
    if auto_close:
        macro_content += '\n// Close ImageJ when done\neval("script", "System.exit(0);");\n'
    
    # Write the macro content to the file
    with open(macro_file, 'w') as f:
        f.write(macro_content)
    
    logger.info(f"Created macro file: {macro_file}")
    if channels:
        logger.info(f"Configured to process channels: {channels}")
    else:
        logger.info("Configured to process all channels")
    
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
    parser.add_argument('--channels', nargs='+', help='Channels to process (e.g., ch00 ch02)')
    
    args = parser.parse_args()
    
    # Parse channels argument
    channels = None
    if args.channels:
        # Handle both space-separated and single string formats
        if len(args.channels) == 1 and ' ' in args.channels[0]:
            channels = args.channels[0].split()
        else:
            channels = args.channels
        logger.info(f"Processing channels: {channels}")
    else:
        logger.info("No channels specified, processing all channels")
    
    # Create output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)
    
    # Create the ImageJ macro
    macro_file, flag_file = create_macro_file(args.input_dir, args.output_dir, channels, args.auto_close)
    
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