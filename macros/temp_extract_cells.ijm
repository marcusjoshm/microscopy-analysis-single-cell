
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
roiParent = "/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/ROIs/";
rawDataParent = "/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/raw_data/";
outputParent = "/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/cells/";


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
            
            // Try different possible filenames - with and without R_ prefix
            possibleBaseNames = newArray(2);
            possibleBaseNames[0] = baseName;
            possibleBaseNames[1] = "R_" + baseName;
            
            // Try different image extensions
            extensions = newArray(".tif", ".tiff", ".TIF", ".TIFF");
            regionImagePath = "";
            
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
            
            if (regionImagePath == "") {
                print("No matching image found for base name: " + baseName);
                continue;
            }
            
            // Extract the region identifier
            region = "";
            if (indexOf(baseName, "R_1") >= 0 || indexOf(baseName, "1_") >= 0) {
                region = "R_1";
            } else if (indexOf(baseName, "R_2") >= 0 || indexOf(baseName, "2_") >= 0) {
                region = "R_2";
            } else if (indexOf(baseName, "R_3") >= 0 || indexOf(baseName, "3_") >= 0) {
                region = "R_3";
            } else if (indexOf(baseName, "R_4") >= 0 || indexOf(baseName, "4_") >= 0) {
                region = "R_4";
            } else {
                print("Could not identify region in: " + baseName);
                continue;
            }
            
            print("Identified region: " + region);
            
            // Determine the timepoint from the baseName.
            timepoint = "";
            timeLabel = "";
            
            if (indexOf(baseName, "t00") >= 0) {
                timepoint = "t00";
                timeLabel = "t00";
            } else if (indexOf(baseName, "t03") >= 0) {
                timepoint = "t03";
                timeLabel = "t03";
            } else {
                print("Timepoint not found in: " + baseName);
                continue;
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
            print("Opened region image: " + regionTitle + " (" + regionImagePath + ")");
            
            // Set up the output folder for processed cells.
            outputFolder = outputParent + dishName + "/" + region + "_" + timeLabel + "/";
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
