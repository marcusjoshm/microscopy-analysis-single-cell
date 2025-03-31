// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(5);


// Store slice name at index 0
sliceNames[0] = "R_1_60min_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_1_60min_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_1_60min_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_1_60min_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_1_60min_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-25_analysis/masks/Dish_1_Washout_+_DMSO/R_1_60min/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Update slice names in the Summary table
if (isOpen("Summary")) {
    for (i=0; i<sliceNames.length; i++) {
        Table.set("Slice", i, sliceNames[i], "Summary");
    }
    Table.update("Summary");
    
    // Save the Summary table as CSV
    print("Saving summary to: /Volumes/NX-01-A/2025-03-25_analysis/analysis/masks_Dish_1_Washout_+_DMSO_R_1_60min_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-03-25_analysis/analysis/masks_Dish_1_Washout_+_DMSO_R_1_60min_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
