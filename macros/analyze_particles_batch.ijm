// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(106);


// Store slice name at index 0
sliceNames[0] = "120min_washout_Merged_t00_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "120min_washout_Merged_t00_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "120min_washout_Merged_t00_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "120min_washout_Merged_t00_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "120min_washout_Merged_t00_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "120min_washout_Merged_t00_MASK_CELL6f";

// Process mask 6: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL6.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "120min_washout_Merged_t00_MASK_CELL7f";

// Process mask 7: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL7.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "120min_washout_Merged_t00_MASK_CELL8f";

// Process mask 8: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL8.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "120min_washout_Merged_t00_MASK_CELL9f";

// Process mask 9: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL9.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "120min_washout_Merged_t00_MASK_CELL10f";

// Process mask 10: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL10.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "120min_washout_Merged_t00_MASK_CELL11f";

// Process mask 11: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL11.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "120min_washout_Merged_t00_MASK_CELL12f";

// Process mask 12: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL12.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL12.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "120min_washout_Merged_t00_MASK_CELL13f";

// Process mask 13: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL13.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL13.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL13.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL13.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "120min_washout_Merged_t00_MASK_CELL14f";

// Process mask 14: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL14.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL14.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL14.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL14.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "120min_washout_Merged_t00_MASK_CELL15f";

// Process mask 15: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL15.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL15.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL15.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL15.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "120min_washout_Merged_t00_MASK_CELL16f";

// Process mask 16: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL16.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL16.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL16.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL16.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "120min_washout_Merged_t00_MASK_CELL17f";

// Process mask 17: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL17.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL17.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL17.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL17.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "120min_washout_Merged_t00_MASK_CELL18f";

// Process mask 18: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL18.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL18.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL18.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL18.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "120min_washout_Merged_t00_MASK_CELL19f";

// Process mask 19: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL19.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL19.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL19.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL19.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "120min_washout_Merged_t00_MASK_CELL20f";

// Process mask 20: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL20.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL20.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL20.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL20.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "120min_washout_Merged_t00_MASK_CELL21f";

// Process mask 21: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL21.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL21.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL21.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL21.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "120min_washout_Merged_t00_MASK_CELL22f";

// Process mask 22: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL22.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL22.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL22.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL22.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "120min_washout_Merged_t00_MASK_CELL23f";

// Process mask 23: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL23.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL23.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL23.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL23.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "120min_washout_Merged_t00_MASK_CELL24f";

// Process mask 24: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL24.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL24.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL24.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL24.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "120min_washout_Merged_t00_MASK_CELL25f";

// Process mask 25: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL25.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL25.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL25.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL25.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "120min_washout_Merged_t00_MASK_CELL26f";

// Process mask 26: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL26.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL26.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL26.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL26.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "120min_washout_Merged_t00_MASK_CELL27f";

// Process mask 27: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL27.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL27.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL27.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL27.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "120min_washout_Merged_t00_MASK_CELL28f";

// Process mask 28: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL28.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL28.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL28.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL28.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "120min_washout_Merged_t00_MASK_CELL29f";

// Process mask 29: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL29.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL29.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL29.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL29.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "120min_washout_Merged_t00_MASK_CELL30f";

// Process mask 30: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL30.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL30.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL30.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL30.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "120min_washout_Merged_t00_MASK_CELL31f";

// Process mask 31: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL31.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL31.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL31.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL31.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "120min_washout_Merged_t00_MASK_CELL32f";

// Process mask 32: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL32.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL32.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL32.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL32.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "120min_washout_Merged_t00_MASK_CELL33f";

// Process mask 33: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL33.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL33.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL33.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL33.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "120min_washout_Merged_t00_MASK_CELL34f";

// Process mask 34: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL34.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL34.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL34.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL34.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "120min_washout_Merged_t00_MASK_CELL35f";

// Process mask 35: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL35.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL35.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL35.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL35.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "120min_washout_Merged_t00_MASK_CELL36f";

// Process mask 36: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL36.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL36.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL36.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL36.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "120min_washout_Merged_t00_MASK_CELL37f";

// Process mask 37: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL37.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL37.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL37.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL37.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "120min_washout_Merged_t00_MASK_CELL38f";

// Process mask 38: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL38.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL38.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL38.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL38.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "120min_washout_Merged_t00_MASK_CELL39f";

// Process mask 39: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL39.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL39.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL39.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL39.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "120min_washout_Merged_t00_MASK_CELL40f";

// Process mask 40: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL40.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL40.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL40.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL40.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "120min_washout_Merged_t00_MASK_CELL41f";

// Process mask 41: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL41.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL41.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL41.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL41.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "120min_washout_Merged_t00_MASK_CELL42f";

// Process mask 42: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL42.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL42.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL42.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL42.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "120min_washout_Merged_t00_MASK_CELL43f";

// Process mask 43: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL43.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL43.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL43.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL43.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "120min_washout_Merged_t00_MASK_CELL44f";

// Process mask 44: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL44.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL44.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL44.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL44.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "120min_washout_Merged_t00_MASK_CELL45f";

// Process mask 45: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL45.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL45.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL45.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL45.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "120min_washout_Merged_t00_MASK_CELL46f";

// Process mask 46: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL46.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL46.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL46.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL46.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "120min_washout_Merged_t00_MASK_CELL47f";

// Process mask 47: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL47.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL47.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL47.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL47.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "120min_washout_Merged_t00_MASK_CELL48f";

// Process mask 48: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL48.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL48.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL48.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL48.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "120min_washout_Merged_t00_MASK_CELL49f";

// Process mask 49: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL49.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL49.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL49.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL49.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "120min_washout_Merged_t00_MASK_CELL50f";

// Process mask 50: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL50.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL50.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL50.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL50.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "120min_washout_Merged_t00_MASK_CELL51f";

// Process mask 51: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL51.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL51.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL51.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL51.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "120min_washout_Merged_t00_MASK_CELL52f";

// Process mask 52: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL52.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL52.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL52.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL52.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "120min_washout_Merged_t00_MASK_CELL53f";

// Process mask 53: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL53.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL53.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL53.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL53.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "120min_washout_Merged_t00_MASK_CELL54f";

// Process mask 54: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL54.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL54.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL54.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL54.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "120min_washout_Merged_t00_MASK_CELL55f";

// Process mask 55: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL55.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL55.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL55.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL55.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "120min_washout_Merged_t00_MASK_CELL56f";

// Process mask 56: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL56.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL56.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL56.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL56.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 56
sliceNames[56] = "120min_washout_Merged_t00_MASK_CELL57f";

// Process mask 57: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL57.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL57.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL57.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL57.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 57
sliceNames[57] = "120min_washout_Merged_t00_MASK_CELL58f";

// Process mask 58: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL58.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL58.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL58.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL58.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 58
sliceNames[58] = "120min_washout_Merged_t00_MASK_CELL59f";

// Process mask 59: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL59.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL59.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL59.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL59.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 59
sliceNames[59] = "120min_washout_Merged_t00_MASK_CELL60f";

// Process mask 60: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL60.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL60.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL60.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL60.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 60
sliceNames[60] = "120min_washout_Merged_t00_MASK_CELL61f";

// Process mask 61: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL61.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL61.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL61.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL61.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 61
sliceNames[61] = "120min_washout_Merged_t00_MASK_CELL62f";

// Process mask 62: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL62.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL62.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL62.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL62.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 62
sliceNames[62] = "120min_washout_Merged_t00_MASK_CELL63f";

// Process mask 63: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL63.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL63.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL63.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL63.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 63
sliceNames[63] = "120min_washout_Merged_t00_MASK_CELL64f";

// Process mask 64: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL64.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL64.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL64.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL64.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 64
sliceNames[64] = "120min_washout_Merged_t00_MASK_CELL65f";

// Process mask 65: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL65.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL65.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL65.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL65.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 65
sliceNames[65] = "120min_washout_Merged_t00_MASK_CELL66f";

// Process mask 66: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL66.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL66.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL66.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL66.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 66
sliceNames[66] = "120min_washout_Merged_t00_MASK_CELL67f";

// Process mask 67: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL67.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL67.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL67.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL67.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 67
sliceNames[67] = "120min_washout_Merged_t00_MASK_CELL68f";

// Process mask 68: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL68.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL68.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL68.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL68.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 68
sliceNames[68] = "120min_washout_Merged_t00_MASK_CELL69f";

// Process mask 69: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL69.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL69.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL69.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL69.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 69
sliceNames[69] = "120min_washout_Merged_t00_MASK_CELL70f";

// Process mask 70: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL70.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL70.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL70.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL70.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 70
sliceNames[70] = "120min_washout_Merged_t00_MASK_CELL71f";

// Process mask 71: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL71.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL71.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL71.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL71.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 71
sliceNames[71] = "120min_washout_Merged_t00_MASK_CELL72f";

// Process mask 72: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL72.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL72.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL72.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL72.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 72
sliceNames[72] = "120min_washout_Merged_t00_MASK_CELL73f";

// Process mask 73: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL73.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL73.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL73.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL73.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 73
sliceNames[73] = "120min_washout_Merged_t00_MASK_CELL74f";

// Process mask 74: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL74.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL74.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL74.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL74.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 74
sliceNames[74] = "120min_washout_Merged_t00_MASK_CELL75f";

// Process mask 75: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL75.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL75.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL75.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL75.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 75
sliceNames[75] = "120min_washout_Merged_t00_MASK_CELL76f";

// Process mask 76: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL76.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL76.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL76.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL76.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 76
sliceNames[76] = "120min_washout_Merged_t00_MASK_CELL77f";

// Process mask 77: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL77.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL77.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL77.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL77.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 77
sliceNames[77] = "120min_washout_Merged_t00_MASK_CELL78f";

// Process mask 78: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL78.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL78.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL78.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL78.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 78
sliceNames[78] = "120min_washout_Merged_t00_MASK_CELL79f";

// Process mask 79: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL79.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL79.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL79.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL79.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 79
sliceNames[79] = "120min_washout_Merged_t00_MASK_CELL80f";

// Process mask 80: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL80.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL80.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL80.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL80.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 80
sliceNames[80] = "120min_washout_Merged_t00_MASK_CELL81f";

// Process mask 81: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL81.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL81.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL81.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL81.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 81
sliceNames[81] = "120min_washout_Merged_t00_MASK_CELL82f";

// Process mask 82: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL82.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL82.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL82.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL82.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 82
sliceNames[82] = "120min_washout_Merged_t00_MASK_CELL83f";

// Process mask 83: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL83.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL83.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL83.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL83.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 83
sliceNames[83] = "120min_washout_Merged_t00_MASK_CELL84f";

// Process mask 84: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL84.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL84.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL84.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL84.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 84
sliceNames[84] = "120min_washout_Merged_t00_MASK_CELL85f";

// Process mask 85: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL85.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL85.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL85.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL85.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 85
sliceNames[85] = "120min_washout_Merged_t00_MASK_CELL86f";

// Process mask 86: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL86.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL86.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL86.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL86.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 86
sliceNames[86] = "120min_washout_Merged_t00_MASK_CELL87f";

// Process mask 87: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL87.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL87.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL87.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL87.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 87
sliceNames[87] = "120min_washout_Merged_t00_MASK_CELL88f";

// Process mask 88: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL88.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL88.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL88.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL88.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 88
sliceNames[88] = "120min_washout_Merged_t00_MASK_CELL89f";

// Process mask 89: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL89.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL89.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL89.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL89.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 89
sliceNames[89] = "120min_washout_Merged_t00_MASK_CELL90f";

// Process mask 90: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL90.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL90.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL90.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL90.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 90
sliceNames[90] = "120min_washout_Merged_t00_MASK_CELL91f";

// Process mask 91: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL91.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL91.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL91.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL91.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 91
sliceNames[91] = "120min_washout_Merged_t00_MASK_CELL92f";

// Process mask 92: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL92.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL92.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL92.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL92.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 92
sliceNames[92] = "120min_washout_Merged_t00_MASK_CELL93f";

// Process mask 93: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL93.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL93.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL93.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL93.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 93
sliceNames[93] = "120min_washout_Merged_t00_MASK_CELL94f";

// Process mask 94: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL94.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL94.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL94.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL94.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 94
sliceNames[94] = "120min_washout_Merged_t00_MASK_CELL95f";

// Process mask 95: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL95.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL95.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL95.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL95.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 95
sliceNames[95] = "120min_washout_Merged_t00_MASK_CELL96f";

// Process mask 96: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL96.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL96.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL96.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL96.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 96
sliceNames[96] = "120min_washout_Merged_t00_MASK_CELL97f";

// Process mask 97: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL97.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL97.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL97.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL97.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 97
sliceNames[97] = "120min_washout_Merged_t00_MASK_CELL98f";

// Process mask 98: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL98.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL98.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL98.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL98.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 98
sliceNames[98] = "120min_washout_Merged_t00_MASK_CELL99f";

// Process mask 99: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL99.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL99.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL99.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL99.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 99
sliceNames[99] = "120min_washout_Merged_t00_MASK_CELL100f";

// Process mask 100: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL100.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL100.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL100.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL100.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 100
sliceNames[100] = "120min_washout_Merged_t00_MASK_CELL101f";

// Process mask 101: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL101.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL101.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL101.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL101.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 101
sliceNames[101] = "120min_washout_Merged_t00_MASK_CELL102f";

// Process mask 102: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL102.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL102.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL102.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL102.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 102
sliceNames[102] = "120min_washout_Merged_t00_MASK_CELL103f";

// Process mask 103: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL103.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL103.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL103.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL103.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 103
sliceNames[103] = "120min_washout_Merged_t00_MASK_CELL104f";

// Process mask 104: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL104.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL104.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL104.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL104.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 104
sliceNames[104] = "120min_washout_Merged_t00_MASK_CELL105f";

// Process mask 105: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL105.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL105.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL105.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL105.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 105
sliceNames[105] = "120min_washout_Merged_t00_MASK_CELL106f";

// Process mask 106: /Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL106.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL106.tiff");
open("/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL106.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-05-07_test_analysis/masks/Dish_9_Washout/120min_washout_Merged_t00/MASK_CELL106.tiff");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-05-07_test_analysis/analysis/masks_Dish_9_Washout_120min_washout_Merged_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-05-07_test_analysis/analysis/masks_Dish_9_Washout_120min_washout_Merged_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
