// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(25);


// Store slice name at index 0
sliceNames[0] = "R_1_t00_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_1_t00_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_1_t00_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_1_t00_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_1_t00_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "R_1_t00_MASK_CELL6f";

// Process mask 6: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL6.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "R_1_t00_MASK_CELL7f";

// Process mask 7: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL7.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "R_1_t00_MASK_CELL8f";

// Process mask 8: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL8.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "R_1_t00_MASK_CELL9f";

// Process mask 9: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL9.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "R_1_t00_MASK_CELL10f";

// Process mask 10: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL10.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "R_1_t00_MASK_CELL11f";

// Process mask 11: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL11.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "R_1_t00_MASK_CELL12f";

// Process mask 12: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL12.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL12.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "R_1_t00_MASK_CELL13f";

// Process mask 13: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL13.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL13.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL13.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL13.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "R_1_t00_MASK_CELL14f";

// Process mask 14: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL14.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL14.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL14.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL14.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "R_1_t00_MASK_CELL15f";

// Process mask 15: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL15.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL15.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL15.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL15.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "R_1_t00_MASK_CELL16f";

// Process mask 16: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL16.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL16.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL16.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL16.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "R_1_t00_MASK_CELL17f";

// Process mask 17: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL17.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL17.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL17.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL17.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "R_1_t00_MASK_CELL18f";

// Process mask 18: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL18.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL18.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL18.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL18.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "R_1_t00_MASK_CELL19f";

// Process mask 19: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL19.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL19.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL19.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL19.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "R_1_t00_MASK_CELL20f";

// Process mask 20: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL20.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL20.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL20.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL20.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "R_1_t00_MASK_CELL21f";

// Process mask 21: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL21.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL21.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL21.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL21.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "R_1_t00_MASK_CELL22f";

// Process mask 22: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL22.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL22.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL22.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL22.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "R_1_t00_MASK_CELL23f";

// Process mask 23: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL23.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL23.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL23.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL23.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "R_1_t00_MASK_CELL24f";

// Process mask 24: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL24.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL24.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL24.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL24.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "R_1_t00_MASK_CELL25f";

// Process mask 25: /Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL25.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL25.tiff");
open("/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL25.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-03-29_analysis/masks/Dish_1_Control_Washout_+_DMSO/R_1_t00/MASK_CELL25.tiff");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-03-29_analysis/analysis/masks_Dish_1_Control_Washout_+_DMSO_R_1_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-03-29_analysis/analysis/masks_Dish_1_Control_Washout_+_DMSO_R_1_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
