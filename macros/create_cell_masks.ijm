// Cell Mask Creation Macro
// Creates individual cell masks by applying ROIs to a combined mask image

// Input parameters
roiFile = "/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/ROIs/U2OS_TAOK2-WT_transfection_washout/ROIs_R_3_Merged_Processed001_ch00_t00_rois.zip";
maskFile = "/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/combined_masks/U2OS_TAOK2-WT_transfection_washout/MASK_R_3_Merged_Processed001_ch00_t00.tif";
outputDir = "/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00";

// Print parameters for debugging
print("ROI file: " + roiFile);
print("Mask file: " + maskFile);
print("Output directory: " + outputDir);

// Create output directory if it doesn't exist
File.makeDirectory(outputDir);

// Reset ROI Manager
roiManager("reset");

// Open ROIs
print("Opening ROI file");
roiManager("Open", roiFile);
roi_count = roiManager("count");
print("Found " + roi_count + " ROIs");

if (roi_count == 0) {
    print("No ROIs found in file: " + roiFile);
    exit("No ROIs found");
}

// Open the mask image
print("Opening mask file");
open(maskFile);
if (nImages == 0) {
    print("Failed to open mask file: " + maskFile);
    exit("Failed to open mask file");
}

// Get the title of the open image
maskTitle = getTitle();
print("Mask opened: " + maskTitle);

// Set batch mode for faster processing
setBatchMode(true);

// Process each ROI
for (i = 0; i < roi_count; i++) {
    // Duplicate the mask image so the original remains unaltered
    selectWindow(maskTitle);
    run("Duplicate...", "title=TempMask duplicate");
    
    // Apply the ROI (from the ROI Manager) to the duplicate
    roiManager("select", i);
    nslices = nSlices();
    for (s = 1; s <= nslices; s++) {
        setSlice(s);
        run("Clear Outside");
    }
    
    // Save the cell mask
    cell_num = i + 1;
    cell_path = outputDir + "/MASK_CELL" + cell_num + ".tif";
    print("Saving mask " + cell_num + " to: " + cell_path);
    saveAs("Tiff", cell_path);
    
    // Close the duplicate
    close();
}

// Close the original image
selectWindow(maskTitle);
close();

// Clear ROI Manager
roiManager("reset");

// Turn off batch mode
setBatchMode(false);

print("Cell mask creation completed for " + roi_count + " cells");

// Exit ImageJ
eval("script", "System.exit(0);");
