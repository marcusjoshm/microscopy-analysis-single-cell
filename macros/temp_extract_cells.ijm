// Cell Extraction Macro
// Extracts individual cells from an image file using ROIs

// Input parameters
roiFile = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/ROIs/U2OS vs A549 SG Disassembly Rep 4/ROIs_A549 Control_Merged_Processed001_ch02_t00_rois.zip";
imageFile = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/raw_data/U2OS vs A549 SG Disassembly Rep 4/timepoint_1/A549 Control_Merged_Processed001_ch02_t00.tif";
outputDir = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/cells/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00";

// Print parameters for debugging
print("ROI file: " + roiFile);
print("Image file: " + imageFile);
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

// Open the image
print("Opening image file");
open(imageFile);
if (nImages == 0) {
    print("Failed to open image: " + imageFile);
    exit("Failed to open image");
}

// Get the title of the open image
regionTitle = getTitle();
print("Image opened: " + regionTitle);

// Set batch mode for faster processing
setBatchMode(true);

// Process each ROI
for (i = 0; i < roi_count; i++) {
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
    
    // Save the cell
    cell_num = i + 1;
    cell_path = outputDir + "/CELL" + cell_num + ".tif";
    print("Saving cell " + cell_num + " to: " + cell_path);
    saveAs("Tiff", cell_path);
    
    // Close the duplicate
    close();
}

// Close the original image
selectWindow(regionTitle);
close();

// Clear ROI Manager
roiManager("reset");

// Turn off batch mode
setBatchMode(false);

print("Cell extraction completed for " + roi_count + " cells");

// Auto-close if requested

// Exit ImageJ
eval("script", "System.exit(0);");
