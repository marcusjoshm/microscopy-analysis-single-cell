// ----- Helper Functions -----
function startsWith(str, prefix) {
    // Check if string is shorter than prefix
    if (lengthOf(str) < lengthOf(prefix)) {
        return 0;
    }
    
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

function contains(str, substring) {
    return indexOf(str, substring) >= 0;
}

// Enable batch mode for headless operation
setBatchMode(true);

// ----- Set Parent Directories -----
roiParent = "/Volumes/NX-01-A/2025-05-07_test_analysis/ROIs/";
rawDataParent = "/Volumes/NX-01-A/2025-05-07_test_analysis/combined_masks/";
outputParent = "/Volumes/NX-01-A/2025-05-07_test_analysis/masks/";

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
            
            // Handle any ROI filename format starting with ROIs_
            if (startsWith(fileName, "ROIs_")) {
                // Split the filename into parts
                parts = split(fileName, "_");
                
                if (parts.length >= 2) {
                    // Extract region from the filename - try to be smart about it
                    // The region is typically right after "ROIs_"
                    
                    // Special handling for R_# pattern (common format)
                    if (parts.length >= 3 && parts[1] == "R" && matches(parts[2], "[0-9]+")) {
                        region = "R_" + parts[2];
                    } 
                    // For other formats, just use the part after ROIs_ as the region
                    else {
                        // If we have the pattern with timepoint and channel numbers,
                        // extract everything until we hit t## or ch## patterns
                        regionParts = newArray();
                        regionEndIndex = 1;
                        
                        for (p = 1; p < parts.length; p++) {
                            // Stop when we hit a timepoint (t00, t01, etc) or channel (ch00, ch01, etc)
                            if ((startsWith(parts[p], "t") && matches(substring(parts[p], 1), "[0-9]+")) ||
                                (startsWith(parts[p], "ch") && matches(substring(parts[p], 2), "[0-9]+"))) {
                                break;
                            }
                            regionParts = Array.concat(regionParts, parts[p]);
                            regionEndIndex = p;
                        }
                        
                        // Build the region string
                        if (regionParts.length > 0) {
                            region = regionParts[0];
                            for (p = 1; p < regionParts.length; p++) {
                                region = region + "_" + regionParts[p];
                            }
                        } else {
                            // Fallback to just the first part
                            region = parts[1];
                        }
                    }
                    
                    print("Extracted region: " + region);
                    
                    // Try to extract timepoint from filename
                    for (p = 0; p < parts.length; p++) {
                        if (startsWith(parts[p], "t") && lengthOf(parts[p]) >= 3 && 
                            matches(substring(parts[p], 1), "[0-9]+")) {
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
            
            // Only add R_ prefix to numeric regions (1, 2, 3, etc.) but not to named regions like 120min_washout
            if (matches(region, "^[0-9]+$")) {
                print("Adding R_ prefix to numeric region: " + region);
                region = "R_" + region;
            }
            
            // Try multiple mask filename patterns to find one that exists
            maskFileFound = false;
            maskFilePath = "";
            
            // Extract channel information if present
            channelPart = "";
            for (p = 0; p < parts.length; p++) {  
                if (startsWith(parts[p], "ch") && lengthOf(parts[p]) >= 3) {
                    channelPart = parts[p];
                    break;
                }
            }
            
            // Try basic pattern first
            testPath = maskFolder + "MASK_" + region + "_" + timepoint + ".tif";
            print("Looking for mask file: " + testPath);
            if (File.exists(testPath)) {
                maskFilePath = testPath;
                maskFileFound = true;
                print("CONFIRMED: Found mask file: " + maskFilePath);
            }
            
            // Try pattern with channel if channel was found
            if (!maskFileFound && channelPart != "") {
                testPath = maskFolder + "MASK_" + region + "_" + channelPart + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }
            }
            
            // Try pattern with duplicate timepoint
            if (!maskFileFound) {
                testPath = maskFolder + "MASK_" + region + "_" + timepoint + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }
            }
            
            // Try pattern with channel and duplicate timepoint
            if (!maskFileFound && channelPart != "") {
                testPath = maskFolder + "MASK_" + region + "_" + channelPart + "_" + timepoint + "_" + timepoint + ".tif";
                print("Looking for mask file: " + testPath);
                if (File.exists(testPath)) {
                    maskFilePath = testPath;
                    maskFileFound = true;
                    print("CONFIRMED: Found mask file: " + maskFilePath);
                }
            }
            
            // List all available mask files if none were found
            if (!maskFileFound) {
                print("ERROR: No mask file found. Looking through all files in the directory:");
                allFiles = getFileList(maskFolder);
                for (f = 0; f < allFiles.length; f++) {
                    if (endsWith(allFiles[f], ".tif") || endsWith(allFiles[f], ".tiff")) {
                        print("Available mask file: " + allFiles[f]);
                    }
                }
                // Set a default path for error handling
                maskFilePath = maskFolder + "MASK_" + region + "_" + timepoint + ".tif";
            }
            
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
