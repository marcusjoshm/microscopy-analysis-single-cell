// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(12);


// Store slice name at index 0
sliceNames[0] = "R_2_t00_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_2_t00_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_2_t00_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_2_t00_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_2_t00_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "R_2_t00_MASK_CELL6f";

// Process mask 6: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL6.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "R_2_t00_MASK_CELL7f";

// Process mask 7: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL7.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "R_2_t00_MASK_CELL8f";

// Process mask 8: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL8.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "R_2_t00_MASK_CELL9f";

// Process mask 9: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL9.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "R_2_t00_MASK_CELL10f";

// Process mask 10: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL10.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "R_2_t00_MASK_CELL11f";

// Process mask 11: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL11.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "R_2_t00_MASK_CELL12f";

// Process mask 12: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL12.tiff");
open("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/masks/Dish_4_FUS-P525L_Washout_+_Rapa/R_2_t00/MASK_CELL12.tiff");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-04-01_analysis_Dish_4/analysis/masks_Dish_4_FUS-P525L_Washout_+_Rapa_R_2_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-04-01_analysis_Dish_4/analysis/masks_Dish_4_FUS-P525L_Washout_+_Rapa_R_2_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
