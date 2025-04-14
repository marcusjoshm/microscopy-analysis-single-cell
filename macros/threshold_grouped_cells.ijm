
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
cellsDir = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_1/grouped_cells/";
outputDir = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_1/grouped_masks/";
flagFile = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_1/grouped_masks/NEED_MORE_BINS.flag";
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

// Open all images for preview, but show confirmation if there are many
if (allImagePaths.length > 10) {
    Dialog.create("Large Number of Images");
    Dialog.addMessage("There are " + allImagePaths.length + " grouped cell images to preview.");
    Dialog.addMessage("Opening a large number of images simultaneously may cause memory issues.");
    Dialog.addChoice("How to proceed:", newArray("Open all images", "Open first 10 images only"));
    Dialog.show();
    
    userChoice = Dialog.getChoice();
    if (userChoice == "Open first 10 images only") {
        numToOpen = 10;
    } else {
        numToOpen = allImagePaths.length;
    }
} else {
    numToOpen = allImagePaths.length;
}

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
    
    // Tile windows after opening 10 or all (if less than 10)
    if (i == numToOpen - 1 || (i + 1) % 10 == 0) {
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
