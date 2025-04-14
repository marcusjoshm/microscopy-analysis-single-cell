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
roiParent = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/ROIs/";
rawDataParent = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/combined_masks/";
outputParent = "/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/";

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
            print("Checking ROI file: " + fileName);
            
            // Process all zip files that might contain ROIs
            if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {
                print("Skipping non-zip file: " + fileName);
                continue;
            }
            
            // Derive the base name - we'll support both ROIs_R_ prefix and ROIs_ prefix
            baseName = "";
            if (startsWith(fileName, "ROIs_R_")) {
                baseName = substring(fileName, lengthOf("ROIs_R_"), indexOf(fileName, "_rois.zip"));
                print("Extracted base name from ROIs_R_ format: " + baseName);
            } else if (startsWith(fileName, "ROIs_")) {
                baseName = substring(fileName, lengthOf("ROIs_"), indexOf(fileName, "_rois.zip"));
                print("Extracted base name from ROIs_ format: " + baseName);
            } else {
                // Try to extract any useful part from the filename
                if (endsWith(fileName, "_rois.zip")) {
                    baseName = substring(fileName, 0, indexOf(fileName, "_rois.zip"));
                    print("Extracted base name from generic _rois.zip format: " + baseName);
                } else if (endsWith(fileName, ".zip")) {
                    baseName = substring(fileName, 0, indexOf(fileName, ".zip"));
                    print("Extracted base name from generic .zip format: " + baseName);
                }
            }
            
            if (baseName == "") {
                print("Could not extract base name from: " + fileName);
                continue;
            }
            
            // Extract region in a more flexible way
            print("DEBUG - Analyzing for region: " + baseName);
            region = "";
            
            // First try special patterns for your specific naming
            if (indexOf(baseName, "50min_Washout") >= 0) {
                region = "50min_Washout";
                print("DEBUG - Matched 50min_Washout region pattern");
            } else if (indexOf(baseName, "TS1_50min") >= 0) {
                region = "TS1_50min";
                print("DEBUG - Matched TS1_50min region pattern");
            } else if (indexOf(baseName, "TS2_50min") >= 0) {
                region = "TS2_50min";
                print("DEBUG - Matched TS2_50min region pattern");
            } 
            // Then fall back to standard R_N patterns
            else if (indexOf(baseName, "R_1") >= 0) {
                region = "R_1";
                print("DEBUG - Matched R_1 region pattern");
            } else if (indexOf(baseName, "R_2") >= 0) {
                region = "R_2";
                print("DEBUG - Matched R_2 region pattern");
            } else if (indexOf(baseName, "R_3") >= 0) {
                region = "R_3";
                print("DEBUG - Matched R_3 region pattern");
            } else if (indexOf(baseName, "R_4") >= 0) {
                region = "R_4";
                print("DEBUG - Matched R_4 region pattern");
            } else {
                // If no pattern is found, use the whole baseName
                region = baseName;
                print("DEBUG - No specific region pattern matched, using full base name: " + baseName);
            }
            
            if (region == "") {
                print("Region not found in: " + baseName);
                continue;
            }
            
            print("Identified region: " + region);
            
            // Extract timepoint from the base name with more flexibility
            print("DEBUG - Analyzing for timepoint in: " + baseName);
            timepoint = "";
            
            if (indexOf(baseName, "t00") >= 0) {
                timepoint = "t00";
                print("DEBUG - Matched t00 timepoint in filename");
            } else if (indexOf(baseName, "t03") >= 0) {
                timepoint = "t03";
                print("DEBUG - Matched t03 timepoint in filename");
            } else if (indexOf(baseName, "t06") >= 0) {
                timepoint = "t06";
                print("DEBUG - Matched t06 timepoint in filename");
            } else {
                // If not found in filename, assume t00 (most common case)
                print("DEBUG - No specific timepoint pattern in filename, defaulting to t00");
                timepoint = "t00";
            }
            
            timeLabel = timepoint;
            print("Using timepoint: " + timepoint + " -> time label: " + timeLabel);
            
            // Build the mask image filename - be flexible with naming
            // First try standard format
            maskFileName = "MASK_" + region + "_" + timeLabel + ".tif";
            maskFilePath = maskFolder + maskFileName;
            
            // If that doesn't exist, try other variations
            if (!File.exists(maskFilePath)) {
                print("Standard mask filename not found: " + maskFilePath);
                print("Looking for alternative mask file patterns...");
                
                // List all mask files and find one that contains both region and timepoint
                maskFiles = getFileList(maskFolder);
                for (m = 0; m < maskFiles.length; m++) {
                    candidateFile = maskFiles[m];
                    print("Checking mask file: " + candidateFile);
                    
                    // Check if this file contains our region and timepoint parts
                    if (startsWith(candidateFile, "MASK_") && 
                        ((indexOf(candidateFile, region) >= 0 && indexOf(candidateFile, timeLabel) >= 0) ||
                         (indexOf(candidateFile, region) >= 0 && timeLabel == "t00"))) {
                        
                        maskFilePath = maskFolder + candidateFile;
                        print("Found matching mask file: " + maskFilePath);
                        break;
                    }
                }
            }
            
            if (!File.exists(maskFilePath)) {
                print("ERROR: No suitable mask file found for region " + region + " and timepoint " + timepoint);
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
            print("Opening mask image: " + maskFilePath);
            open(maskFilePath);
            maskTitle = getTitle();
            print("Opened mask image: " + maskTitle);
            
            // Set up the output folder for processed MASK_CELLs.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            print("Output folder for cell masks: " + outputFolder);
            if (!File.exists(outputFolder)) {
                print("Creating output directory: " + outputFolder);
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

// Close ImageJ when done
eval("script", "System.exit(0);");
