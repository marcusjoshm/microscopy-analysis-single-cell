
// Base directory for masks and output analysis folder.
masksDir = "/Volumes/NX-01-A/2025-03-25_analysis/masks";
analysisDir = "/Volumes/NX-01-A/2025-03-25_analysis/analysis";

// Ensure analysis directory exists
File.makeDirectory(analysisDir);

// Start recursive processing.
processDirectory(masksDir);

function processDirectory(dir) {
    list = getFileList(dir);
    hasMASK = false;
    // Check if current directory contains any TIFF files starting with "MASK".
    for (i = 0; i < list.length; i++) {
        if (!File.isDirectory(dir + list[i]) && startsWith(list[i], "MASK") && (endsWith(list[i], ".tiff") || endsWith(list[i], ".tif"))) {
            hasMASK = true;
            break;
        }
    }
    
    if (hasMASK) {
        // Clear any existing Summary table.
        if (isOpen("Summary")) { close("Summary"); }
        
        // Process each matching file in the current directory.
        for (i = 0; i < list.length; i++) {
            if (!File.isDirectory(dir + list[i]) && startsWith(list[i], "MASK") && (endsWith(list[i], ".tiff") || endsWith(list[i], ".tif"))) {
                filePath = dir + list[i];
                open(filePath);
                imageTitle = getTitle();
                selectImage(imageTitle);
                print("Processing: " + filePath);
                run("Analyze Particles...", "size=0.10-Infinity display clear summarize");
                selectImage(imageTitle);
                close();
            }
        }
        
        // If a Summary table was produced, save it.
        if (isOpen("Summary")) {
            selectWindow("Summary");
            // Compute the relative directory path by removing the base masksDir.
            relativeDir = dir;
            if (startsWith(relativeDir, masksDir))
                relativeDir = substring(relativeDir, lengthOf(masksDir));
            // Remove any trailing slash.
            if (endsWith(relativeDir, "/"))
                relativeDir = substring(relativeDir, 0, lengthOf(relativeDir)-1);
            // Replace remaining "/" with "_" for a valid file name.
            fileName = replace(relativeDir, "/", "_");
            if (fileName == "") fileName = "root";
            csvName = fileName + "_summary.csv";
            csvPath = analysisDir + "/" + csvName;
            saveAs("Results", csvPath);
            print("Saved summary for " + dir + " to " + csvPath);
            close("Summary");
        } else {
            print("No Summary table produced for " + dir);
        }
    }
    
    // Recursively process subdirectories.
    for (i = 0; i < list.length; i++) {
        if (File.isDirectory(dir + list[i])) {
            processDirectory(dir + list[i] + "/");
        }
    }
}

print("Analysis complete");
