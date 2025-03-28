
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
cellsDir = "/Volumes/NX-01-A/2025-03-25_export_/grouped_cells/";
outputDir = "/Volumes/NX-01-A/2025-03-25_export_/grouped_masks/";

print("cellsDir: " + cellsDir);

// Ensure trailing slashes for path concatenation
if (!endsWith(cellsDir, "/")) cellsDir = cellsDir + "/";
if (!endsWith(outputDir, "/")) outputDir = outputDir + "/";

// Get list of dish directories in cellsDir.
dishDirs = getFileList(cellsDir);
print("Found dish directories: " + joinArray(dishDirs, ", "));

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
                
                // Apply Otsu thresholding to the selected region
                setAutoThreshold("Otsu dark 16-bit no-reset");
                
                // Get the threshold levels determined by Otsu
                getThreshold(lower, upper);
                print("Otsu threshold values - Lower: " + lower + ", Upper: " + upper);
                
                // Select the entire image and apply the same threshold
                run("Select All");
                setThreshold(lower, upper);
                
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
