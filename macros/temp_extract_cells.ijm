
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

// ----- Set Parent Directories -----
roiParent = "/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/ROIs/";
rawDataParent = "/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/raw_data/";
outputParent = "/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/cells/";


// Ensure trailing slashes for path concatenation
if (!endsWith(roiParent, "/")) roiParent = roiParent + "/";
if (!endsWith(rawDataParent, "/")) rawDataParent = rawDataParent + "/";
if (!endsWith(outputParent, "/")) outputParent = outputParent + "/";

print("ROI directory: " + roiParent);
print("Raw data directory: " + rawDataParent);
print("Output directory: " + outputParent);

// Get list of dish directories in the ROIs parent folder.
dishes = getFileList(roiParent);
print("Found " + dishes.length + " entries in ROI parent directory");

for (d = 0; d < dishes.length; d++) {
    dishName = dishes[d];
    print("Checking entry: " + dishName);
    
    // Skip hidden files and non-directories
    if (startsWith(dishName, ".") || !File.isDirectory(roiParent + dishName)) {
        print("Skipping " + dishName + " (not a directory or hidden)");
        continue;
    }
    
    roiFolder = roiParent + dishName;
    // Ensure trailing slash
    if (!endsWith(roiFolder, "/")) roiFolder = roiFolder + "/";
    
    // Get all subdirectories in the raw data condition directory
    conditionFolder = rawDataParent + dishName;
    if (!File.exists(conditionFolder)) {
        print("Raw data condition directory not found: " + conditionFolder);
        continue;
    }
    
    print("Looking for subdirectories in: " + conditionFolder);
    subdirs = getFileList(conditionFolder);
    
    // Process each subdirectory
    for (s = 0; s < subdirs.length; s++) {
        subdir = subdirs[s];
        // Skip non-directories and hidden folders
        if (!File.isDirectory(conditionFolder + "/" + subdir) || indexOf(subdir, ".") == 0) {
            continue;
        }
        
        // Full path to the subdirectory
        regionFolder = conditionFolder + "/" + subdir;
        print("Processing subdirectory: " + regionFolder);
        
        // Ensure trailing slash
        if (!endsWith(regionFolder, "/")) regionFolder = regionFolder + "/";
        
        // Get the list of ROI files in this dish folder.
        print("Looking for ROI files in: " + roiFolder);
        roiFiles = getFileList(roiFolder);
        print("Found " + roiFiles.length + " files in ROI folder");
        
        // Try different ROI file prefixes
        prefixes = newArray("ROIs_R_", "ROIs_");
        
        for (r = 0; r < roiFiles.length; r++) {
            fileName = roiFiles[r];
            print("Checking file: " + fileName);
            
            // Skip non-zip files
            if (!endsWith(fileName, "_rois.zip") && !endsWith(fileName, ".zip")) {
                print("Skipping non-zip file: " + fileName);
                continue;
            }
            
            // Try to match any of our prefixes
            foundPrefix = false;
            prefixUsed = "";
            
            for (p = 0; p < prefixes.length; p++) {
                if (startsWith(fileName, prefixes[p])) {
                    foundPrefix = true;
                    prefixUsed = prefixes[p];
                    break;
                }
            }
            
            if (!foundPrefix) {
                print("No matching prefix for: " + fileName);
                continue;
            }
            
            // Derive the base name by removing the prefix and trailing "_rois.zip"
            baseName = "";
            if (endsWith(fileName, "_rois.zip")) {
                baseName = substring(fileName, lengthOf(prefixUsed), indexOf(fileName, "_rois.zip"));
            } else if (endsWith(fileName, ".zip")) {
                baseName = substring(fileName, lengthOf(prefixUsed), indexOf(fileName, ".zip"));
            }
            
            print("Base name: " + baseName);
            
            // Use a more flexible approach to match filenames
            possibleBaseNames = newArray(1);
            possibleBaseNames[0] = baseName;
            
            // No longer add R_ prefix - rely on flexible matching instead
            
            // Try different image extensions
            extensions = newArray(".tif", ".tiff", ".TIF", ".TIFF");
            regionImagePath = "";
            
            // Get a list of subdirectories in the region folder
            print("Checking subdirectories in region folder: " + regionFolder);
            regionSubdirs = getFileList(regionFolder);
            
            // Try directly in the region folder first
            for (n = 0; n < 2; n++) {
                for (e = 0; e < extensions.length; e++) {
                    testPath = regionFolder + possibleBaseNames[n] + extensions[e];
                    print("Trying image path: " + testPath);
                    
                    if (File.exists(testPath)) {
                        regionImagePath = testPath;
                        print("Found image: " + regionImagePath);
                        break;
                    }
                }
                if (regionImagePath != "") break;  // Stop if we found an image
            }
            
            // If not found directly, try in each subdirectory
            if (regionImagePath == "") {
                print("Image not found directly, checking subdirectories...");
                
                for (sd = 0; sd < regionSubdirs.length; sd++) {
                    subdir = regionSubdirs[sd];
                    
                    // Skip non-directories and hidden folders
                    if (!File.isDirectory(regionFolder + subdir) || indexOf(subdir, ".") == 0) {
                        continue;
                    }
                    
                    print("Checking in subdirectory: " + subdir);
                    subdirPath = regionFolder + subdir;
                    // Ensure trailing slash
                    if (!endsWith(subdirPath, "/")) subdirPath = subdirPath + "/";
                    
                    for (n = 0; n < 2; n++) {
                        for (e = 0; e < extensions.length; e++) {
                            testPath = subdirPath + possibleBaseNames[n] + extensions[e];
                            print("Trying image path: " + testPath);
                            
                            if (File.exists(testPath)) {
                                regionImagePath = testPath;
                                print("Found image: " + regionImagePath);
                                break;
                            }
                        }
                        if (regionImagePath != "") break;  // Stop if we found an image
                    }
                    if (regionImagePath != "") break;  // Stop if we found an image
                }
            }
            
            if (regionImagePath == "") {
                print("No matching image found for base name: " + baseName);
                continue;
            }
            
            // Extract the region identifier from the image path, not just the base name
            print("DEBUG - Analyzing for region using file path: " + regionImagePath);
            region = "";
            
            // IMPROVED: Extract the original region name directly from the filename
            // This should match the region names selected by the user at the workflow start
            
            // Extract the full base name from the original file and use it as the region
            // This preserves the exact region names that were selected by the user
            extractedRegion = "";
            
            // Remove the ROIs_ prefix and _rois.zip suffix to get the original region name
            if (startsWith(fileName, "ROIs_")) {
                extractedPart = substring(fileName, 5);  // Remove "ROIs_" prefix
                if (endsWith(extractedPart, "_rois.zip")) {
                    // Remove "_rois.zip" suffix
                    extractedPart = substring(extractedPart, 0, lengthOf(extractedPart) - 9);
                    extractedRegion = extractedPart;
                } else if (endsWith(extractedPart, ".zip")) {
                    // Remove ".zip" suffix
                    extractedPart = substring(extractedPart, 0, lengthOf(extractedPart) - 4);
                    extractedRegion = extractedPart;
                }
            }
            
            // If extraction worked, use it as our region
            if (extractedRegion != "") {
                // Clean up any channel or timepoint suffixes if present
                channelIndex = indexOf(extractedRegion, "_ch");
                if (channelIndex > 0) {
                    extractedRegion = substring(extractedRegion, 0, channelIndex);
                }
                
                region = extractedRegion;
                print("Extracted original region name from ROI file: " + region);
            } 
            // Fallback to other methods if the extraction didn't work
            else {
                // Try to use the basename directly
                region = baseName;
                print("Using base name as region: " + region);
            }
            
            print("Identified region: " + region);
            
            // Determine the timepoint from the baseName.
            // Add debugging for timepoint matching
            print("DEBUG - Analyzing for timepoint: " + baseName);
            timepoint = "";
            timeLabel = "";
            
            if (indexOf(baseName, "t00") >= 0) {
                timepoint = "t00";
                timeLabel = "t00";
                print("DEBUG - Matched t00 timepoint");
            } else if (indexOf(baseName, "t03") >= 0) {
                timepoint = "t03";
                timeLabel = "t03";
                print("DEBUG - Matched t03 timepoint");
            } else {
                print("DEBUG - No explicit timepoint found, checking for timepoint_1 in folder structure");
                // Try to extract timepoint from folder structure if not in filename
                if (indexOf(regionFolder, "timepoint_1") >= 0) {
                    timepoint = "t00";  // Map timepoint_1 to t00
                    timeLabel = "t00";
                    print("DEBUG - Using t00 based on timepoint_1 folder");
                } else {
                    print("Timepoint not found in: " + baseName + " or folder structure");
                    continue;
                }
            }
            
            print("Identified timepoint: " + timepoint + " -> " + timeLabel);
            
            // Open the ROI Manager and load this ROI file.
            roiManager("Reset");
            roiFilePath = roiFolder + fileName;
            print("Opening ROI file: " + roiFilePath);
            roiManager("Open", roiFilePath);
            nRois = roiManager("count");
            print("Processing " + dishName + " " + region + " " + timeLabel + ": Found " + nRois + " ROIs.");
            
            if (nRois == 0) {
                print("No ROIs found in file: " + roiFilePath);
                continue;
            }
            
            // Open the corresponding region image
            print("Opening image: " + regionImagePath);
            open(regionImagePath);
            regionTitle = getTitle();
            
            // No transformations needed - Cellpose invocation method fixed the orientation issue
            print("Image dimensions: " + getWidth() + " x " + getHeight());
            
            print("Opened region image: " + regionTitle + " (" + regionImagePath + ")");
            
            // Set up the output folder for processed cells.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
            print("Output folder for cells: " + outputFolder);
            if (!File.exists(outputFolder)) {
                print("Creating output directory: " + outputFolder);
                File.makeDirectory(outputFolder);
            }
            
            // Loop over each ROI in the ROI Manager.
            for (i = 0; i < nRois; i++) {
                // Duplicate the region image so the original remains unaltered.
                selectWindow(regionTitle);
                run("Duplicate...", "title=TempRegion duplicate");
                
                // Apply the ROI (from the ROI Manager) to the duplicate.
                roiManager("select", i);
                nslices = nSlices();
                for (s = 1; s <= nslices; s++) {
                    setSlice(s);
                    run("Clear Outside");
                }
                
                // Build the save path and filename.
                cellNum = i + 1;
                savePath = outputFolder + "CELL" + cellNum + ".tif";
                print("Saving cell " + cellNum + " to: " + savePath);
                saveAs("Tiff", savePath);
                
                // Close the duplicate image.
                close();
            }
            
            // Close the original region image and reset ROI Manager.
            selectWindow(regionTitle);
            close();
            roiManager("Reset");
        }
    }
}
print("Completed extracting individual cells");

// Close ImageJ when done
eval("script", "System.exit(0);");
