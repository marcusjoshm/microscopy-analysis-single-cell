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

// Enable batch mode for headless operation
setBatchMode(true);

// ----- Set Parent Directories -----
roiParent = "/Volumes/NX-01-A/2025-03-25_export_/ROIs/";
rawDataParent = "/Volumes/NX-01-A/2025-03-25_export_/combined_masks/";
outputParent = "/Volumes/NX-01-A/2025-03-25_export_/masks/";

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
for (d = 0; d < dishes.length; d++) {
    dishName = dishes[d];
    if (File.isDirectory(roiParent + dishName)) {
        roiFolder = roiParent + dishName + "/";
        // Ensure the folder path for combined masks has a trailing slash.
        maskFolder = rawDataParent + dishName + "/";
        
        // Get the list of ROI files in this dish folder.
        roiFiles = getFileList(roiFolder);
        for (r = 0; r < roiFiles.length; r++) {
            fileName = roiFiles[r];
            // Process only files starting with "ROIs_R_"
            if (startsWith(fileName, "ROIs_R_") == 0) continue;
            
            // Derive the base name by removing the "ROIs_" prefix and trailing "_rois.zip"
            baseName = substring(fileName, lengthOf("ROIs_"), indexOf(fileName, "_rois.zip"));
            
            // Extract region from the base name (e.g., R_1, R_2, R_3)
            regionMatch = indexOf(baseName, "R_");
            region = "";
            if (regionMatch >= 0) {
                underscoreAfterR = indexOf(substring(baseName, regionMatch + 2), "_");
                if (underscoreAfterR >= 0) {
                    region = substring(baseName, regionMatch, regionMatch + 2 + underscoreAfterR);
                }
            }
            if (region == "") {
                print("Region not found in: " + baseName);
                continue;
            }
            
            // Extract timepoint from the base name (e.g., t00, t03)
            timepointMatch = indexOf(baseName, "t0");
            timepoint = "";
            if (timepointMatch >= 0) {
                timepoint = substring(baseName, timepointMatch, timepointMatch + 3);
            }
            if (timepoint == "") {
                print("Timepoint not found in: " + baseName);
                continue;
            }
            
            // Determine time label based on timepoint
            timeLabel = "";
            if (timepoint == "t00") {
                timeLabel = "45min";
            } else if (timepoint == "t03") {
                timeLabel = "60min";
            } else if (timepoint == "t06") {
                timeLabel = "75min";
            } else {
                print("Unknown timepoint: " + timepoint);
                continue;
            }
            
            // Build the mask image filename
            maskFileName = "MASK_" + region + "_" + timeLabel + ".tif";
            maskFilePath = maskFolder + maskFileName;
            
            if (!File.exists(maskFilePath)) {
                print("Mask image not found: " + maskFilePath);
                continue;
            }
            
            // Load the ROIs silently without using the ROI Manager GUI
            roiFilePath = roiFolder + fileName;
            print("Loading ROI file: " + roiFilePath);
            roiManager("reset");
            roiManager("open", roiFilePath);
            
            // Count ROIs by getting the number from the "count" property
            nRois = roiManager("count");
            print("Processing " + dishName + " " + region + " " + timeLabel + ": Found " + nRois + " ROIs.");
            
            // Open the corresponding combined mask image
            open(maskFilePath);
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Set up the output folder for processed MASK_CELLs.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            if (!File.exists(outputFolder)) {
                File.makeDirectory(outputFolder);
            }
            
            // Loop over each ROI in the ROI Manager.
            for (i = 0; i < nRois; i++) {
                // Duplicate the mask image so the original remains unaltered.
                selectWindow(maskTitle);
                run("Duplicate...", "title=TempMask");
                
                // Apply the ROI (from the ROI Manager) to the duplicate.
                roiManager("select", i);
                nslices = nSlices();
                for (s = 1; s <= nslices; s++) {
                    setSlice(s);
                    run("Clear Outside");
                    run("Set Scale...", "distance=13.6891 known=1 unit=µm");
                }
                
                // Build the save path and filename.
                MASK_CELLNum = i + 1;
                savePath = outputFolder + "MASK_CELL" + MASK_CELLNum + ".tiff";
                saveAs("Tiff", savePath);
                print("Saved MASK_CELL: " + savePath);
                
                // Close the duplicate image.
                close();
            }
            
            // Close the original mask image and reset ROI Manager.
            selectWindow(maskTitle);
            close();
            roiManager("reset");
        }
    }
}

// Exit batch mode
setBatchMode(false);
print("Cell mask creation complete!");
