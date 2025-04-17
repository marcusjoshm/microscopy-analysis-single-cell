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
roiParent = "/Volumes/NX-01-A/2025-04-03_analysis_Dish_10/ROIs/";
rawDataParent = "/Volumes/NX-01-A/2025-04-03_analysis_Dish_10/combined_masks/";
outputParent = "/Volumes/NX-01-A/2025-04-03_analysis_Dish_10/masks/";

print("ROI directory: " + roiParent);
print("Mask directory: " + rawDataParent);
print("Output directory: " + outputParent);

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
print("Found " + dishes.length + " entries in ROI parent folder");
for (d = 0; d < dishes.length; d++) {
    dishName = dishes[d];
    print("Processing entry: " + dishName);
    
    if (File.isDirectory(roiParent + dishName)) {
        roiFolder = roiParent + dishName + "/";
        // Ensure the folder path for combined masks has a trailing slash.
        maskFolder = rawDataParent + dishName + "/";
        
        print("ROI folder: " + roiFolder);
        print("Mask folder: " + maskFolder);
        
        // List contents of mask folder to debug
        if (File.exists(maskFolder)) {
            maskFiles = getFileList(maskFolder);
            print("Found " + maskFiles.length + " files in mask folder: " + maskFolder);
            for (m = 0; m < maskFiles.length; m++) {
                print("  Mask file: " + maskFiles[m]);
            }
        } else {
            print("WARNING: Mask folder does not exist: " + maskFolder);
        }
        
        // Get the list of ROI files in this dish folder.
        roiFiles = getFileList(roiFolder);
        print("Found " + roiFiles.length + " files in ROI folder");
        
        for (r = 0; r < roiFiles.length; r++) {
            fileName = roiFiles[r];
            print("PROCESSING ROI file: " + fileName);
            
            // Process all zip files that might contain ROIs
            if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {
                print("Skipping non-zip file: " + fileName);
                continue;
            }
            
            // IMPROVED REGION EXTRACTION - Handle "Merged" pattern in filenames
            region = "";
            timepoint = "t00";  // Default to t00
            
            // Handle ROI filenames with format: ROIs_R_1_Merged_t00_ch01_rois.zip
            if (startsWith(fileName, "ROIs_R_")) {
                // Extract just the region number more reliably
                parts = split(fileName, "_");
                if (parts.length >= 3) {
                    // Get the number after "R_"
                    regionNum = parts[2];
                    // Final region should be "R_1", "R_2", etc.
                    region = "R_" + regionNum;
                    print("Extracted region: " + region);
                    
                    // Try to extract timepoint from filename
                    for (p = 0; p < parts.length; p++) {
                        if (startsWith(parts[p], "t") && lengthOf(parts[p]) >= 3) {
                            timepoint = parts[p];
                            break;
                        }
                    }
                } else {
                    print("ERROR: Could not parse ROI filename: " + fileName);
                    continue;
                }
                
                print("Using timepoint: " + timepoint);
            } else {
                print("WARNING: Unknown ROI naming format: " + fileName);
                continue;
            }
            
            if (region == "") {
                print("ERROR: Could not extract region from filename: " + fileName);
                continue;
            }
            
            // Ensure region format is correct (should be "R_1", "R_2", etc.)
            if (!startsWith(region, "R_")) {
                print("WARNING: Adding R_ prefix to region: " + region);
                region = "R_" + region;
            }
            
            // Build the mask image filename
            maskFileName = "MASK_" + region + "_" + timepoint + ".tif";
            maskFilePath = maskFolder + maskFileName;
            
            print("Looking for mask file: " + maskFilePath);
            
            if (!File.exists(maskFilePath)) {
                print("ERROR: Mask file not found: " + maskFilePath);
                continue;
            } else {
                print("CONFIRMED: Found mask file: " + maskFilePath);
            }
            
            // Load the ROIs
            roiFilePath = roiFolder + fileName;
            print("Loading ROI file: " + roiFilePath);
            roiManager("reset");
            roiManager("open", roiFilePath);
            
            // Count ROIs
            nRois = roiManager("count");
            print("Found " + nRois + " ROIs in file: " + roiFilePath);
            
            if (nRois == 0) {
                print("ERROR: No ROIs found in file: " + roiFilePath);
                continue;
            }
            
            // Open the mask image
            print("Opening mask image: " + maskFilePath);
            open(maskFilePath);
            
            if (nImages == 0) {
                print("ERROR: Failed to open mask image: " + maskFilePath);
                continue;
            }
            
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Create output folder
            outputFolder = outputParent + dishName + "/" + region + "_" + timepoint + "/";
            print("Output folder: " + outputFolder);
            if (!File.exists(outputFolder)) {
                print("Creating output directory: " + outputFolder);
                File.makeDirectory(outputFolder);
            }
            
            // Process each ROI - SIMPLIFIED VERSION
            for (i = 0; i < nRois; i++) {
                print("Processing ROI " + (i+1) + " of " + nRois);
                
                // Duplicate image
                selectWindow(maskTitle);
                run("Duplicate...", "title=TempMask duplicate");
                
                // Apply ROI
                roiManager("select", i);
                
                // Process all slices
                nslices = nSlices();
                for (s = 1; s <= nslices; s++) {
                    setSlice(s);
                    run("Clear Outside");
                }
                
                // Save the cell mask
                MASK_CELLNum = i + 1;
                savePath = outputFolder + "MASK_CELL" + MASK_CELLNum + ".tiff";
                print("Saving to: " + savePath);
                
                // Use simple saveAs to preserve metadata
                saveAs("Tiff", savePath);
                
                // Verify save
                if (File.exists(savePath)) {
                    print("SUCCESS: Saved " + savePath);
                } else {
                    print("ERROR: Failed to save " + savePath);
                }
                
                // Close the duplicate
                close();
            }
            
            // Close the original and reset
            if (isOpen(maskTitle)) {
                selectWindow(maskTitle);
                close();
            }
            roiManager("reset");
        }
    }
}

// Exit batch mode
setBatchMode(false);
print("Cell mask creation complete!");

// Close ImageJ when done
eval("script", "System.exit(0);");
