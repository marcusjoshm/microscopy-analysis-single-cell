
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
cellsDir = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/grouped_cells/";
outputDir = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/grouped_masks/";
flagFile = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/grouped_masks/NEED_MORE_BINS.flag";
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
for (d = 0; d < conditionDirs.length; d++) {
    conditionName = conditionDirs[d];
    
    // Skip non-directories and hidden files
    if (!File.isDirectory(cellsDir + conditionName) || startsWith(conditionName, ".")) {
        continue;
    }
    
    conditionPath = cellsDir + conditionName;
    // Ensure trailing slash
    if (!endsWith(conditionPath, "/")) conditionPath = conditionPath + "/";
    
    print("Processing condition: " + conditionPath);
    
    // Get list of region/channel/timepoint subdirectories within the condition folder
    regionDirs = getFileList(conditionPath);
    if (regionDirs.length == 0) {
        print("No subdirectories found in " + conditionName);
        continue;
    }
    
    print("Found region subdirectories in " + conditionName + ": " + joinArray(regionDirs, ", "));
    
    for (t = 0; t < regionDirs.length; t++) {
        regionName = regionDirs[t];
        
        // Skip non-directories and hidden files
        if (!File.isDirectory(conditionPath + regionName) || startsWith(regionName, ".")) {
            continue;
        }
        
        
        // Check if this region directory matches any of the specified channels
        channelMatch = false;
        if (indexOf(regionName, "ch00") >= 0 || indexOf(regionName, "ch02") >= 0) {
            channelMatch = true;
        }
        if (!channelMatch) {
            continue; // Skip this directory if it doesn't match specified channels
        }
        
        
        regionPath = conditionPath + regionName;
        // Ensure trailing slash
        if (!endsWith(regionPath, "/")) regionPath = regionPath + "/";
        
        print("Processing region folder: " + regionPath);
        
        // Get list of files in the region folder
        files = getFileList(regionPath);
        if (files.length == 0) {
            print("No files found in " + regionName);
            continue;
        }
        
        print("Found files in " + regionName + ": " + joinArray(files, ", "));
        
        for (f = 0; f < files.length; f++) {
            fileName = files[f];
            
            // Process only bin TIFF files (skip CSV and txt files)
            if (endsWith(fileName, ".tif") && indexOf(fileName, "_bin_") >= 0) {
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
                if (selectionType() == -1) {
                    // No selection was made, prompt again
                    waitForUser("No ROI detected", "Please draw an oval ROI to select an area for thresholding, then click OK.");
                    
                    // If still no selection, use the entire image
                    if (selectionType() == -1) {
                        print("No ROI drawn, using the entire image for thresholding.");
                        run("Select All");
                    }
                }
                
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
                if (userBinsDecision == "Go back and add one more group") {
                    File.saveString("User requested more bins for better cell grouping", flagFile);
                    showMessage("More Bins Requested", "Your request for more bins has been recorded. The workflow will restart the cell grouping step with more bins. You can now close ImageJ.");
                    run("Close All");
                    eval("script", "System.exit(0);");
                }
                
                // Handle case when there are no structures to threshold
                if (userBinsDecision == "Ignore thresholding for this group. There are no structures to threshold in the field") {
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
                } else {
                    // Apply Otsu thresholding directly for normal case
                    setAutoThreshold("Otsu dark 16-bit");
                    
                    // Convert to mask
                    setOption("BlackBackground", true);
                    run("Convert to Mask");
                }
                
                // Create matching output directory structure
                outFolder = outputDir + conditionName + "/" + regionName + "/";
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
