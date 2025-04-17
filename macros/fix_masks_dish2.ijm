// Enable batch mode
setBatchMode(true);

// Set paths
roiDir = "/Volumes/NX-01-A/2025-04-15_analysis_Dish_2/ROIs/Dish_2_DMSO_+_Washout_+_Rapa/";
maskDir = "/Volumes/NX-01-A/2025-04-15_analysis_Dish_2/combined_masks/Dish_2_DMSO_+_Washout_+_Rapa/";
outputDir = "/Volumes/NX-01-A/2025-04-15_analysis_Dish_2/masks/Dish_2_DMSO_+_Washout_+_Rapa/";

// Process R_1
print("Processing region R_1");
// Load ROI file
roiManager("reset");
roiManager("open", roiDir + "ROIs_R_1_Merged_t00_ch01_rois.zip");
// Open mask
open(maskDir + "MASK_R_1_t00.tif");
title = getTitle();
// Create output dir
outFolder = outputDir + "R_1_t00/";
File.makeDirectory(outFolder);
// Process each ROI
count = roiManager("count");
print("Found " + count + " ROIs");
for (i = 0; i < count; i++) {
    print("Processing cell " + (i+1));
    selectWindow(title);
    run("Duplicate...", "title=temp");
    roiManager("select", i);
    run("Clear Outside");
    cellNum = i + 1;
    savePath = outFolder + "MASK_CELL" + cellNum + ".tiff";
    saveAs("Tiff", savePath);
    print("Saved: " + savePath);
    close();
}
close(title);

// Process R_2
print("Processing region R_2");
// Load ROI file
roiManager("reset");
roiManager("open", roiDir + "ROIs_R_2_Merged_t00_ch01_rois.zip");
// Open mask
open(maskDir + "MASK_R_2_t00.tif");
title = getTitle();
// Create output dir
outFolder = outputDir + "R_2_t00/";
File.makeDirectory(outFolder);
// Process each ROI
count = roiManager("count");
print("Found " + count + " ROIs");
for (i = 0; i < count; i++) {
    print("Processing cell " + (i+1));
    selectWindow(title);
    run("Duplicate...", "title=temp");
    roiManager("select", i);
    run("Clear Outside");
    cellNum = i + 1;
    savePath = outFolder + "MASK_CELL" + cellNum + ".tiff";
    saveAs("Tiff", savePath);
    print("Saved: " + savePath);
    close();
}
close(title);

// Process R_3
print("Processing region R_3");
// Load ROI file
roiManager("reset");
roiManager("open", roiDir + "ROIs_R_3_Merged_t00_ch01_rois.zip");
// Open mask
open(maskDir + "MASK_R_3_t00.tif");
title = getTitle();
// Create output dir
outFolder = outputDir + "R_3_t00/";
File.makeDirectory(outFolder);
// Process each ROI
count = roiManager("count");
print("Found " + count + " ROIs");
for (i = 0; i < count; i++) {
    print("Processing cell " + (i+1));
    selectWindow(title);
    run("Duplicate...", "title=temp");
    roiManager("select", i);
    run("Clear Outside");
    cellNum = i + 1;
    savePath = outFolder + "MASK_CELL" + cellNum + ".tiff";
    saveAs("Tiff", savePath);
    print("Saved: " + savePath);
    close();
}
close(title);

print("All processing complete!"); 