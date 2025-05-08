// ImageJ macro to rotate ROIs 90 degrees counterclockwise
// Input: Directory containing ROI .zip files
// Output: Same directory with rotated ROIs

// Get input directory from arguments
input = getArgument();
if (input == "") {
    exit("No input directory provided");
}

// Process all ROI files in the directory
list = getFileList(input);
for (i = 0; i < list.length; i++) {
    if (endsWith(list[i], ".zip") && indexOf(list[i], "RoiSet") >= 0) {
        roiFile = input + File.separator + list[i];
        print("Processing: " + roiFile);
        
        // Open the ROI file
        roiManager("Reset");
        roiManager("Open", roiFile);
        
        // Get image dimensions from the ROI filename
        filename = list[i];
        imageFile = replace(filename, "RoiSet.zip", ".tif");
        imagePath = input + File.separator + imageFile;
        
        // If image exists, get dimensions, otherwise use default
        width = 512;
        height = 512;
        if (File.exists(imagePath)) {
            open(imagePath);
            width = getWidth();
            height = getHeight();
            close();
        }
        
        // Rotate all ROIs 90 degrees counterclockwise
        // ImageJ rotates clockwise, so we use 270 degrees
        count = roiManager("Count");
        for (j = 0; j < count; j++) {
            roiManager("Select", j);
            run("Rotate...", "angle=270");
        }
        
        // Save the rotated ROIs
        roiManager("Save", roiFile);
        print("Saved rotated ROIs to: " + roiFile);
    }
}

print("ROI rotation complete");
