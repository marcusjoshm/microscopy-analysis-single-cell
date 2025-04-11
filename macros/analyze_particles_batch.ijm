// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(416);


// Store slice name at index 0
sliceNames[0] = "R_1_t00_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_1_t00_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_1_t00_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_1_t00_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_1_t00_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "R_1_t00_MASK_CELL6f";

// Process mask 6: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL6.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "R_1_t00_MASK_CELL7f";

// Process mask 7: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL7.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "R_1_t00_MASK_CELL8f";

// Process mask 8: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL8.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "R_1_t00_MASK_CELL9f";

// Process mask 9: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL9.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "R_1_t00_MASK_CELL10f";

// Process mask 10: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL10.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "R_1_t00_MASK_CELL11f";

// Process mask 11: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL11.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "R_1_t00_MASK_CELL12f";

// Process mask 12: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL12.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL12.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "R_1_t00_MASK_CELL13f";

// Process mask 13: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL13.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL13.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL13.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL13.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "R_1_t00_MASK_CELL14f";

// Process mask 14: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL14.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL14.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL14.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL14.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "R_1_t00_MASK_CELL15f";

// Process mask 15: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL15.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL15.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL15.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL15.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "R_1_t00_MASK_CELL16f";

// Process mask 16: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL16.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL16.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL16.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL16.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "R_1_t00_MASK_CELL17f";

// Process mask 17: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL17.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL17.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL17.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL17.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "R_1_t00_MASK_CELL18f";

// Process mask 18: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL18.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL18.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL18.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL18.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "R_1_t00_MASK_CELL19f";

// Process mask 19: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL19.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL19.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL19.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL19.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "R_1_t00_MASK_CELL20f";

// Process mask 20: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL20.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL20.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL20.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL20.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "R_1_t00_MASK_CELL21f";

// Process mask 21: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL21.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL21.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL21.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL21.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "R_1_t00_MASK_CELL22f";

// Process mask 22: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL22.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL22.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL22.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL22.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "R_1_t00_MASK_CELL23f";

// Process mask 23: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL23.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL23.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL23.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL23.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "R_1_t00_MASK_CELL24f";

// Process mask 24: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL24.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL24.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL24.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL24.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "R_1_t00_MASK_CELL25f";

// Process mask 25: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL25.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL25.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL25.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL25.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "R_1_t00_MASK_CELL26f";

// Process mask 26: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL26.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL26.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL26.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL26.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "R_1_t00_MASK_CELL27f";

// Process mask 27: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL27.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL27.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL27.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL27.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "R_1_t00_MASK_CELL28f";

// Process mask 28: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL28.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL28.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL28.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL28.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "R_1_t00_MASK_CELL29f";

// Process mask 29: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL29.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL29.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL29.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL29.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "R_1_t00_MASK_CELL30f";

// Process mask 30: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL30.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL30.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL30.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL30.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "R_1_t00_MASK_CELL31f";

// Process mask 31: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL31.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL31.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL31.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL31.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "R_1_t00_MASK_CELL32f";

// Process mask 32: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL32.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL32.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL32.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL32.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "R_1_t00_MASK_CELL33f";

// Process mask 33: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL33.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL33.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL33.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL33.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "R_1_t00_MASK_CELL34f";

// Process mask 34: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL34.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL34.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL34.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL34.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "R_1_t00_MASK_CELL35f";

// Process mask 35: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL35.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL35.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL35.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL35.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "R_1_t00_MASK_CELL36f";

// Process mask 36: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL36.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL36.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL36.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL36.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "R_1_t00_MASK_CELL37f";

// Process mask 37: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL37.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL37.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL37.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL37.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "R_1_t00_MASK_CELL38f";

// Process mask 38: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL38.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL38.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL38.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL38.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "R_1_t00_MASK_CELL39f";

// Process mask 39: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL39.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL39.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL39.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL39.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "R_1_t00_MASK_CELL40f";

// Process mask 40: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL40.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL40.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL40.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL40.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "R_1_t00_MASK_CELL41f";

// Process mask 41: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL41.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL41.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL41.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL41.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "R_1_t00_MASK_CELL42f";

// Process mask 42: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL42.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL42.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL42.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL42.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "R_1_t00_MASK_CELL43f";

// Process mask 43: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL43.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL43.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL43.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL43.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "R_1_t00_MASK_CELL44f";

// Process mask 44: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL44.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL44.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL44.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL44.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "R_1_t00_MASK_CELL45f";

// Process mask 45: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL45.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL45.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL45.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL45.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "R_1_t00_MASK_CELL46f";

// Process mask 46: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL46.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL46.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL46.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL46.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "R_1_t00_MASK_CELL47f";

// Process mask 47: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL47.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL47.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL47.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL47.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "R_1_t00_MASK_CELL48f";

// Process mask 48: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL48.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL48.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL48.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL48.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "R_1_t00_MASK_CELL49f";

// Process mask 49: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL49.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL49.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL49.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL49.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "R_1_t00_MASK_CELL50f";

// Process mask 50: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL50.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL50.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL50.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL50.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "R_1_t00_MASK_CELL51f";

// Process mask 51: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL51.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL51.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL51.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL51.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "R_1_t00_MASK_CELL52f";

// Process mask 52: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL52.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL52.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL52.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL52.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "R_1_t00_MASK_CELL53f";

// Process mask 53: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL53.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL53.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL53.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL53.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "R_1_t00_MASK_CELL54f";

// Process mask 54: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL54.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL54.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL54.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL54.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "R_1_t00_MASK_CELL55f";

// Process mask 55: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL55.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL55.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL55.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL55.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "R_1_t00_MASK_CELL56f";

// Process mask 56: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL56.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL56.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL56.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL56.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 56
sliceNames[56] = "R_1_t00_MASK_CELL57f";

// Process mask 57: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL57.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL57.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL57.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL57.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 57
sliceNames[57] = "R_1_t00_MASK_CELL58f";

// Process mask 58: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL58.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL58.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL58.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL58.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 58
sliceNames[58] = "R_1_t00_MASK_CELL59f";

// Process mask 59: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL59.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL59.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL59.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL59.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 59
sliceNames[59] = "R_1_t00_MASK_CELL60f";

// Process mask 60: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL60.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL60.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL60.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL60.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 60
sliceNames[60] = "R_1_t00_MASK_CELL61f";

// Process mask 61: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL61.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL61.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL61.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL61.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 61
sliceNames[61] = "R_1_t00_MASK_CELL62f";

// Process mask 62: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL62.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL62.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL62.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL62.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 62
sliceNames[62] = "R_1_t00_MASK_CELL63f";

// Process mask 63: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL63.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL63.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL63.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL63.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 63
sliceNames[63] = "R_1_t00_MASK_CELL64f";

// Process mask 64: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL64.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL64.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL64.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL64.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 64
sliceNames[64] = "R_1_t00_MASK_CELL65f";

// Process mask 65: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL65.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL65.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL65.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL65.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 65
sliceNames[65] = "R_1_t00_MASK_CELL66f";

// Process mask 66: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL66.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL66.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL66.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL66.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 66
sliceNames[66] = "R_1_t00_MASK_CELL67f";

// Process mask 67: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL67.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL67.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL67.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL67.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 67
sliceNames[67] = "R_1_t00_MASK_CELL68f";

// Process mask 68: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL68.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL68.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL68.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL68.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 68
sliceNames[68] = "R_1_t00_MASK_CELL69f";

// Process mask 69: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL69.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL69.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL69.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL69.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 69
sliceNames[69] = "R_1_t00_MASK_CELL70f";

// Process mask 70: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL70.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL70.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL70.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL70.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 70
sliceNames[70] = "R_1_t00_MASK_CELL71f";

// Process mask 71: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL71.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL71.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL71.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL71.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 71
sliceNames[71] = "R_1_t00_MASK_CELL72f";

// Process mask 72: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL72.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL72.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL72.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL72.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 72
sliceNames[72] = "R_1_t00_MASK_CELL73f";

// Process mask 73: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL73.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL73.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL73.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL73.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 73
sliceNames[73] = "R_1_t00_MASK_CELL74f";

// Process mask 74: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL74.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL74.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL74.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL74.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 74
sliceNames[74] = "R_1_t00_MASK_CELL75f";

// Process mask 75: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL75.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL75.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL75.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL75.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 75
sliceNames[75] = "R_1_t00_MASK_CELL76f";

// Process mask 76: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL76.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL76.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL76.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL76.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 76
sliceNames[76] = "R_1_t00_MASK_CELL77f";

// Process mask 77: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL77.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL77.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL77.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL77.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 77
sliceNames[77] = "R_1_t00_MASK_CELL78f";

// Process mask 78: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL78.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL78.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL78.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL78.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 78
sliceNames[78] = "R_1_t00_MASK_CELL79f";

// Process mask 79: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL79.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL79.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL79.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL79.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 79
sliceNames[79] = "R_1_t00_MASK_CELL80f";

// Process mask 80: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL80.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL80.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL80.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL80.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 80
sliceNames[80] = "R_1_t00_MASK_CELL81f";

// Process mask 81: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL81.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL81.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL81.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL81.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 81
sliceNames[81] = "R_1_t00_MASK_CELL82f";

// Process mask 82: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL82.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL82.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL82.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL82.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 82
sliceNames[82] = "R_1_t00_MASK_CELL83f";

// Process mask 83: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL83.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL83.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL83.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL83.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 83
sliceNames[83] = "R_1_t00_MASK_CELL84f";

// Process mask 84: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL84.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL84.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL84.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL84.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 84
sliceNames[84] = "R_1_t00_MASK_CELL85f";

// Process mask 85: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL85.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL85.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL85.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL85.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 85
sliceNames[85] = "R_1_t00_MASK_CELL86f";

// Process mask 86: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL86.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL86.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL86.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL86.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 86
sliceNames[86] = "R_1_t00_MASK_CELL87f";

// Process mask 87: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL87.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL87.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL87.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL87.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 87
sliceNames[87] = "R_1_t00_MASK_CELL88f";

// Process mask 88: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL88.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL88.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL88.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL88.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 88
sliceNames[88] = "R_1_t00_MASK_CELL89f";

// Process mask 89: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL89.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL89.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL89.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL89.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 89
sliceNames[89] = "R_1_t00_MASK_CELL90f";

// Process mask 90: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL90.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL90.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL90.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL90.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 90
sliceNames[90] = "R_1_t00_MASK_CELL91f";

// Process mask 91: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL91.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL91.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL91.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL91.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 91
sliceNames[91] = "R_1_t00_MASK_CELL92f";

// Process mask 92: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL92.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL92.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL92.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL92.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 92
sliceNames[92] = "R_1_t00_MASK_CELL93f";

// Process mask 93: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL93.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL93.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL93.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL93.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 93
sliceNames[93] = "R_1_t00_MASK_CELL94f";

// Process mask 94: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL94.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL94.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL94.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL94.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 94
sliceNames[94] = "R_1_t00_MASK_CELL95f";

// Process mask 95: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL95.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL95.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL95.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL95.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 95
sliceNames[95] = "R_1_t00_MASK_CELL96f";

// Process mask 96: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL96.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL96.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL96.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL96.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 96
sliceNames[96] = "R_1_t00_MASK_CELL97f";

// Process mask 97: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL97.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL97.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL97.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL97.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 97
sliceNames[97] = "R_1_t00_MASK_CELL98f";

// Process mask 98: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL98.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL98.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL98.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL98.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 98
sliceNames[98] = "R_1_t00_MASK_CELL99f";

// Process mask 99: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL99.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL99.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL99.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL99.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 99
sliceNames[99] = "R_1_t00_MASK_CELL100f";

// Process mask 100: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL100.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL100.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL100.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL100.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 100
sliceNames[100] = "R_1_t00_MASK_CELL101f";

// Process mask 101: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL101.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL101.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL101.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL101.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 101
sliceNames[101] = "R_1_t00_MASK_CELL102f";

// Process mask 102: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL102.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL102.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL102.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL102.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 102
sliceNames[102] = "R_1_t00_MASK_CELL103f";

// Process mask 103: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL103.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL103.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL103.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL103.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 103
sliceNames[103] = "R_1_t00_MASK_CELL104f";

// Process mask 104: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL104.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL104.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL104.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL104.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 104
sliceNames[104] = "R_1_t00_MASK_CELL105f";

// Process mask 105: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL105.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL105.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL105.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL105.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 105
sliceNames[105] = "R_1_t00_MASK_CELL106f";

// Process mask 106: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL106.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL106.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL106.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL106.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 106
sliceNames[106] = "R_1_t00_MASK_CELL107f";

// Process mask 107: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL107.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL107.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL107.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL107.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 107
sliceNames[107] = "R_1_t00_MASK_CELL108f";

// Process mask 108: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL108.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL108.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL108.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL108.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 108
sliceNames[108] = "R_1_t00_MASK_CELL109f";

// Process mask 109: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL109.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL109.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL109.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL109.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 109
sliceNames[109] = "R_1_t00_MASK_CELL110f";

// Process mask 110: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL110.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL110.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL110.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL110.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 110
sliceNames[110] = "R_1_t00_MASK_CELL111f";

// Process mask 111: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL111.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL111.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL111.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL111.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 111
sliceNames[111] = "R_1_t00_MASK_CELL112f";

// Process mask 112: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL112.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL112.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL112.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL112.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 112
sliceNames[112] = "R_1_t00_MASK_CELL113f";

// Process mask 113: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL113.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL113.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL113.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL113.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 113
sliceNames[113] = "R_1_t00_MASK_CELL114f";

// Process mask 114: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL114.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL114.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL114.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL114.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 114
sliceNames[114] = "R_1_t00_MASK_CELL115f";

// Process mask 115: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL115.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL115.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL115.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL115.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 115
sliceNames[115] = "R_1_t00_MASK_CELL116f";

// Process mask 116: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL116.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL116.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL116.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL116.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 116
sliceNames[116] = "R_1_t00_MASK_CELL117f";

// Process mask 117: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL117.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL117.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL117.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL117.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 117
sliceNames[117] = "R_1_t00_MASK_CELL118f";

// Process mask 118: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL118.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL118.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL118.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL118.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 118
sliceNames[118] = "R_1_t00_MASK_CELL119f";

// Process mask 119: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL119.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL119.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL119.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL119.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 119
sliceNames[119] = "R_1_t00_MASK_CELL120f";

// Process mask 120: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL120.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL120.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL120.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL120.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 120
sliceNames[120] = "R_1_t00_MASK_CELL121f";

// Process mask 121: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL121.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL121.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL121.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL121.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 121
sliceNames[121] = "R_1_t00_MASK_CELL122f";

// Process mask 122: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL122.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL122.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL122.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL122.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 122
sliceNames[122] = "R_1_t00_MASK_CELL123f";

// Process mask 123: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL123.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL123.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL123.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL123.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 123
sliceNames[123] = "R_1_t00_MASK_CELL124f";

// Process mask 124: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL124.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL124.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL124.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL124.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 124
sliceNames[124] = "R_1_t00_MASK_CELL125f";

// Process mask 125: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL125.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL125.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL125.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL125.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 125
sliceNames[125] = "R_1_t00_MASK_CELL126f";

// Process mask 126: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL126.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL126.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL126.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL126.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 126
sliceNames[126] = "R_1_t00_MASK_CELL127f";

// Process mask 127: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL127.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL127.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL127.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL127.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 127
sliceNames[127] = "R_1_t00_MASK_CELL128f";

// Process mask 128: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL128.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL128.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL128.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL128.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 128
sliceNames[128] = "R_1_t00_MASK_CELL129f";

// Process mask 129: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL129.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL129.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL129.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL129.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 129
sliceNames[129] = "R_1_t00_MASK_CELL130f";

// Process mask 130: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL130.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL130.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL130.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL130.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 130
sliceNames[130] = "R_1_t00_MASK_CELL131f";

// Process mask 131: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL131.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL131.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL131.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL131.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 131
sliceNames[131] = "R_1_t00_MASK_CELL132f";

// Process mask 132: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL132.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL132.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL132.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL132.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 132
sliceNames[132] = "R_1_t00_MASK_CELL133f";

// Process mask 133: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL133.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL133.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL133.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL133.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 133
sliceNames[133] = "R_1_t00_MASK_CELL134f";

// Process mask 134: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL134.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL134.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL134.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL134.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 134
sliceNames[134] = "R_1_t00_MASK_CELL135f";

// Process mask 135: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL135.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL135.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL135.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL135.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 135
sliceNames[135] = "R_1_t00_MASK_CELL136f";

// Process mask 136: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL136.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL136.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL136.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL136.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 136
sliceNames[136] = "R_1_t00_MASK_CELL137f";

// Process mask 137: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL137.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL137.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL137.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL137.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 137
sliceNames[137] = "R_1_t00_MASK_CELL138f";

// Process mask 138: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL138.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL138.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL138.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL138.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 138
sliceNames[138] = "R_1_t00_MASK_CELL139f";

// Process mask 139: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL139.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL139.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL139.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL139.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 139
sliceNames[139] = "R_1_t00_MASK_CELL140f";

// Process mask 140: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL140.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL140.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL140.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL140.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 140
sliceNames[140] = "R_1_t00_MASK_CELL141f";

// Process mask 141: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL141.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL141.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL141.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL141.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 141
sliceNames[141] = "R_1_t00_MASK_CELL142f";

// Process mask 142: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL142.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL142.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL142.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL142.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 142
sliceNames[142] = "R_1_t00_MASK_CELL143f";

// Process mask 143: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL143.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL143.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL143.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL143.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 143
sliceNames[143] = "R_1_t00_MASK_CELL144f";

// Process mask 144: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL144.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL144.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL144.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL144.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 144
sliceNames[144] = "R_1_t00_MASK_CELL145f";

// Process mask 145: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL145.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL145.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL145.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL145.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 145
sliceNames[145] = "R_1_t00_MASK_CELL146f";

// Process mask 146: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL146.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL146.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL146.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL146.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 146
sliceNames[146] = "R_1_t00_MASK_CELL147f";

// Process mask 147: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL147.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL147.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL147.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL147.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 147
sliceNames[147] = "R_1_t00_MASK_CELL148f";

// Process mask 148: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL148.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL148.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL148.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL148.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 148
sliceNames[148] = "R_1_t00_MASK_CELL149f";

// Process mask 149: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL149.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL149.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL149.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL149.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 149
sliceNames[149] = "R_1_t00_MASK_CELL150f";

// Process mask 150: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL150.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL150.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL150.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL150.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 150
sliceNames[150] = "R_1_t00_MASK_CELL151f";

// Process mask 151: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL151.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL151.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL151.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL151.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 151
sliceNames[151] = "R_1_t00_MASK_CELL152f";

// Process mask 152: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL152.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL152.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL152.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL152.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 152
sliceNames[152] = "R_1_t00_MASK_CELL153f";

// Process mask 153: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL153.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL153.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL153.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL153.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 153
sliceNames[153] = "R_1_t00_MASK_CELL154f";

// Process mask 154: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL154.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL154.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL154.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL154.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 154
sliceNames[154] = "R_1_t00_MASK_CELL155f";

// Process mask 155: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL155.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL155.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL155.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL155.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 155
sliceNames[155] = "R_1_t00_MASK_CELL156f";

// Process mask 156: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL156.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL156.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL156.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL156.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 156
sliceNames[156] = "R_1_t00_MASK_CELL157f";

// Process mask 157: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL157.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL157.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL157.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL157.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 157
sliceNames[157] = "R_1_t00_MASK_CELL158f";

// Process mask 158: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL158.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL158.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL158.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL158.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 158
sliceNames[158] = "R_1_t00_MASK_CELL159f";

// Process mask 159: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL159.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL159.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL159.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL159.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 159
sliceNames[159] = "R_1_t00_MASK_CELL160f";

// Process mask 160: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL160.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL160.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL160.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL160.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 160
sliceNames[160] = "R_1_t00_MASK_CELL161f";

// Process mask 161: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL161.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL161.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL161.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL161.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 161
sliceNames[161] = "R_1_t00_MASK_CELL162f";

// Process mask 162: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL162.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL162.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL162.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL162.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 162
sliceNames[162] = "R_1_t00_MASK_CELL163f";

// Process mask 163: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL163.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL163.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL163.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL163.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 163
sliceNames[163] = "R_1_t00_MASK_CELL164f";

// Process mask 164: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL164.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL164.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL164.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL164.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 164
sliceNames[164] = "R_1_t00_MASK_CELL165f";

// Process mask 165: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL165.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL165.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL165.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL165.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 165
sliceNames[165] = "R_1_t00_MASK_CELL166f";

// Process mask 166: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL166.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL166.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL166.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL166.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 166
sliceNames[166] = "R_1_t00_MASK_CELL167f";

// Process mask 167: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL167.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL167.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL167.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL167.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 167
sliceNames[167] = "R_1_t00_MASK_CELL168f";

// Process mask 168: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL168.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL168.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL168.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL168.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 168
sliceNames[168] = "R_1_t00_MASK_CELL169f";

// Process mask 169: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL169.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL169.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL169.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL169.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 169
sliceNames[169] = "R_1_t00_MASK_CELL170f";

// Process mask 170: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL170.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL170.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL170.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL170.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 170
sliceNames[170] = "R_1_t00_MASK_CELL171f";

// Process mask 171: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL171.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL171.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL171.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL171.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 171
sliceNames[171] = "R_1_t00_MASK_CELL172f";

// Process mask 172: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL172.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL172.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL172.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL172.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 172
sliceNames[172] = "R_1_t00_MASK_CELL173f";

// Process mask 173: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL173.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL173.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL173.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL173.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 173
sliceNames[173] = "R_1_t00_MASK_CELL174f";

// Process mask 174: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL174.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL174.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL174.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL174.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 174
sliceNames[174] = "R_1_t00_MASK_CELL175f";

// Process mask 175: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL175.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL175.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL175.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL175.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 175
sliceNames[175] = "R_1_t00_MASK_CELL176f";

// Process mask 176: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL176.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL176.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL176.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL176.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 176
sliceNames[176] = "R_1_t00_MASK_CELL177f";

// Process mask 177: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL177.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL177.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL177.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL177.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 177
sliceNames[177] = "R_1_t00_MASK_CELL178f";

// Process mask 178: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL178.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL178.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL178.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL178.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 178
sliceNames[178] = "R_1_t00_MASK_CELL179f";

// Process mask 179: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL179.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL179.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL179.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL179.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 179
sliceNames[179] = "R_1_t00_MASK_CELL180f";

// Process mask 180: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL180.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL180.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL180.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL180.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 180
sliceNames[180] = "R_1_t00_MASK_CELL181f";

// Process mask 181: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL181.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL181.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL181.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL181.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 181
sliceNames[181] = "R_1_t00_MASK_CELL182f";

// Process mask 182: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL182.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL182.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL182.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL182.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 182
sliceNames[182] = "R_1_t00_MASK_CELL183f";

// Process mask 183: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL183.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL183.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL183.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL183.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 183
sliceNames[183] = "R_1_t00_MASK_CELL184f";

// Process mask 184: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL184.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL184.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL184.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL184.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 184
sliceNames[184] = "R_1_t00_MASK_CELL185f";

// Process mask 185: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL185.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL185.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL185.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL185.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 185
sliceNames[185] = "R_1_t00_MASK_CELL186f";

// Process mask 186: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL186.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL186.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL186.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL186.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 186
sliceNames[186] = "R_1_t00_MASK_CELL187f";

// Process mask 187: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL187.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL187.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL187.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL187.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 187
sliceNames[187] = "R_1_t00_MASK_CELL188f";

// Process mask 188: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL188.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL188.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL188.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL188.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 188
sliceNames[188] = "R_1_t00_MASK_CELL189f";

// Process mask 189: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL189.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL189.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL189.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL189.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 189
sliceNames[189] = "R_1_t00_MASK_CELL190f";

// Process mask 190: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL190.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL190.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL190.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL190.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 190
sliceNames[190] = "R_1_t00_MASK_CELL191f";

// Process mask 191: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL191.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL191.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL191.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL191.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 191
sliceNames[191] = "R_1_t00_MASK_CELL192f";

// Process mask 192: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL192.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL192.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL192.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL192.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 192
sliceNames[192] = "R_1_t00_MASK_CELL193f";

// Process mask 193: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL193.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL193.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL193.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL193.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 193
sliceNames[193] = "R_1_t00_MASK_CELL194f";

// Process mask 194: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL194.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL194.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL194.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL194.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 194
sliceNames[194] = "R_1_t00_MASK_CELL195f";

// Process mask 195: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL195.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL195.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL195.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL195.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 195
sliceNames[195] = "R_1_t00_MASK_CELL196f";

// Process mask 196: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL196.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL196.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL196.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL196.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 196
sliceNames[196] = "R_1_t00_MASK_CELL197f";

// Process mask 197: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL197.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL197.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL197.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL197.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 197
sliceNames[197] = "R_1_t00_MASK_CELL198f";

// Process mask 198: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL198.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL198.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL198.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL198.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 198
sliceNames[198] = "R_1_t00_MASK_CELL199f";

// Process mask 199: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL199.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL199.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL199.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL199.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 199
sliceNames[199] = "R_1_t00_MASK_CELL200f";

// Process mask 200: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL200.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL200.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL200.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL200.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 200
sliceNames[200] = "R_1_t00_MASK_CELL201f";

// Process mask 201: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL201.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL201.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL201.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL201.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 201
sliceNames[201] = "R_1_t00_MASK_CELL202f";

// Process mask 202: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL202.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL202.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL202.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL202.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 202
sliceNames[202] = "R_1_t00_MASK_CELL203f";

// Process mask 203: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL203.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL203.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL203.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL203.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 203
sliceNames[203] = "R_1_t00_MASK_CELL204f";

// Process mask 204: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL204.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL204.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL204.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL204.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 204
sliceNames[204] = "R_1_t00_MASK_CELL205f";

// Process mask 205: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL205.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL205.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL205.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL205.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 205
sliceNames[205] = "R_1_t00_MASK_CELL206f";

// Process mask 206: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL206.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL206.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL206.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL206.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 206
sliceNames[206] = "R_1_t00_MASK_CELL207f";

// Process mask 207: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL207.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL207.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL207.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL207.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 207
sliceNames[207] = "R_1_t00_MASK_CELL208f";

// Process mask 208: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL208.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL208.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL208.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL208.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 208
sliceNames[208] = "R_1_t00_MASK_CELL209f";

// Process mask 209: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL209.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL209.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL209.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL209.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 209
sliceNames[209] = "R_1_t00_MASK_CELL210f";

// Process mask 210: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL210.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL210.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL210.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL210.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 210
sliceNames[210] = "R_1_t00_MASK_CELL211f";

// Process mask 211: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL211.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL211.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL211.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL211.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 211
sliceNames[211] = "R_1_t00_MASK_CELL212f";

// Process mask 212: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL212.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL212.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL212.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL212.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 212
sliceNames[212] = "R_1_t00_MASK_CELL213f";

// Process mask 213: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL213.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL213.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL213.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL213.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 213
sliceNames[213] = "R_1_t00_MASK_CELL214f";

// Process mask 214: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL214.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL214.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL214.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL214.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 214
sliceNames[214] = "R_1_t00_MASK_CELL215f";

// Process mask 215: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL215.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL215.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL215.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL215.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 215
sliceNames[215] = "R_1_t00_MASK_CELL216f";

// Process mask 216: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL216.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL216.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL216.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL216.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 216
sliceNames[216] = "R_1_t00_MASK_CELL217f";

// Process mask 217: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL217.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL217.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL217.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL217.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 217
sliceNames[217] = "R_1_t00_MASK_CELL218f";

// Process mask 218: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL218.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL218.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL218.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL218.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 218
sliceNames[218] = "R_1_t00_MASK_CELL219f";

// Process mask 219: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL219.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL219.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL219.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL219.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 219
sliceNames[219] = "R_1_t00_MASK_CELL220f";

// Process mask 220: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL220.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL220.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL220.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL220.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 220
sliceNames[220] = "R_1_t00_MASK_CELL221f";

// Process mask 221: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL221.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL221.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL221.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL221.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 221
sliceNames[221] = "R_1_t00_MASK_CELL222f";

// Process mask 222: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL222.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL222.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL222.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL222.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 222
sliceNames[222] = "R_1_t00_MASK_CELL223f";

// Process mask 223: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL223.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL223.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL223.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL223.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 223
sliceNames[223] = "R_1_t00_MASK_CELL224f";

// Process mask 224: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL224.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL224.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL224.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL224.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 224
sliceNames[224] = "R_1_t00_MASK_CELL225f";

// Process mask 225: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL225.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL225.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL225.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL225.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 225
sliceNames[225] = "R_1_t00_MASK_CELL226f";

// Process mask 226: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL226.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL226.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL226.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL226.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 226
sliceNames[226] = "R_1_t00_MASK_CELL227f";

// Process mask 227: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL227.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL227.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL227.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL227.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 227
sliceNames[227] = "R_1_t00_MASK_CELL228f";

// Process mask 228: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL228.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL228.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL228.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL228.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 228
sliceNames[228] = "R_1_t00_MASK_CELL229f";

// Process mask 229: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL229.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL229.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL229.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL229.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 229
sliceNames[229] = "R_1_t00_MASK_CELL230f";

// Process mask 230: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL230.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL230.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL230.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL230.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 230
sliceNames[230] = "R_1_t00_MASK_CELL231f";

// Process mask 231: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL231.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL231.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL231.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL231.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 231
sliceNames[231] = "R_1_t00_MASK_CELL232f";

// Process mask 232: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL232.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL232.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL232.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL232.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 232
sliceNames[232] = "R_1_t00_MASK_CELL233f";

// Process mask 233: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL233.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL233.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL233.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL233.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 233
sliceNames[233] = "R_1_t00_MASK_CELL234f";

// Process mask 234: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL234.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL234.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL234.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL234.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 234
sliceNames[234] = "R_1_t00_MASK_CELL235f";

// Process mask 235: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL235.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL235.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL235.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL235.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 235
sliceNames[235] = "R_1_t00_MASK_CELL236f";

// Process mask 236: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL236.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL236.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL236.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL236.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 236
sliceNames[236] = "R_1_t00_MASK_CELL237f";

// Process mask 237: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL237.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL237.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL237.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL237.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 237
sliceNames[237] = "R_1_t00_MASK_CELL238f";

// Process mask 238: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL238.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL238.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL238.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL238.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 238
sliceNames[238] = "R_1_t00_MASK_CELL239f";

// Process mask 239: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL239.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL239.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL239.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL239.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 239
sliceNames[239] = "R_1_t00_MASK_CELL240f";

// Process mask 240: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL240.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL240.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL240.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL240.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 240
sliceNames[240] = "R_1_t00_MASK_CELL241f";

// Process mask 241: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL241.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL241.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL241.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL241.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 241
sliceNames[241] = "R_1_t00_MASK_CELL242f";

// Process mask 242: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL242.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL242.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL242.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL242.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 242
sliceNames[242] = "R_1_t00_MASK_CELL243f";

// Process mask 243: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL243.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL243.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL243.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL243.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 243
sliceNames[243] = "R_1_t00_MASK_CELL244f";

// Process mask 244: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL244.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL244.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL244.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL244.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 244
sliceNames[244] = "R_1_t00_MASK_CELL245f";

// Process mask 245: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL245.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL245.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL245.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL245.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 245
sliceNames[245] = "R_1_t00_MASK_CELL246f";

// Process mask 246: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL246.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL246.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL246.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL246.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 246
sliceNames[246] = "R_1_t00_MASK_CELL247f";

// Process mask 247: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL247.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL247.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL247.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL247.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 247
sliceNames[247] = "R_1_t00_MASK_CELL248f";

// Process mask 248: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL248.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL248.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL248.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL248.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 248
sliceNames[248] = "R_1_t00_MASK_CELL249f";

// Process mask 249: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL249.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL249.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL249.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL249.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 249
sliceNames[249] = "R_1_t00_MASK_CELL250f";

// Process mask 250: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL250.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL250.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL250.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL250.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 250
sliceNames[250] = "R_1_t00_MASK_CELL251f";

// Process mask 251: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL251.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL251.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL251.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL251.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 251
sliceNames[251] = "R_1_t00_MASK_CELL252f";

// Process mask 252: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL252.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL252.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL252.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL252.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 252
sliceNames[252] = "R_1_t00_MASK_CELL253f";

// Process mask 253: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL253.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL253.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL253.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL253.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 253
sliceNames[253] = "R_1_t00_MASK_CELL254f";

// Process mask 254: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL254.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL254.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL254.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL254.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 254
sliceNames[254] = "R_1_t00_MASK_CELL255f";

// Process mask 255: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL255.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL255.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL255.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL255.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 255
sliceNames[255] = "R_1_t00_MASK_CELL256f";

// Process mask 256: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL256.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL256.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL256.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL256.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 256
sliceNames[256] = "R_1_t00_MASK_CELL257f";

// Process mask 257: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL257.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL257.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL257.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL257.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 257
sliceNames[257] = "R_1_t00_MASK_CELL258f";

// Process mask 258: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL258.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL258.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL258.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL258.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 258
sliceNames[258] = "R_1_t00_MASK_CELL259f";

// Process mask 259: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL259.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL259.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL259.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL259.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 259
sliceNames[259] = "R_1_t00_MASK_CELL260f";

// Process mask 260: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL260.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL260.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL260.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL260.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 260
sliceNames[260] = "R_1_t00_MASK_CELL261f";

// Process mask 261: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL261.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL261.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL261.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL261.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 261
sliceNames[261] = "R_1_t00_MASK_CELL262f";

// Process mask 262: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL262.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL262.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL262.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL262.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 262
sliceNames[262] = "R_1_t00_MASK_CELL263f";

// Process mask 263: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL263.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL263.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL263.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL263.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 263
sliceNames[263] = "R_1_t00_MASK_CELL264f";

// Process mask 264: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL264.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL264.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL264.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL264.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 264
sliceNames[264] = "R_1_t00_MASK_CELL265f";

// Process mask 265: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL265.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL265.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL265.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL265.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 265
sliceNames[265] = "R_1_t00_MASK_CELL266f";

// Process mask 266: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL266.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL266.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL266.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL266.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 266
sliceNames[266] = "R_1_t00_MASK_CELL267f";

// Process mask 267: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL267.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL267.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL267.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL267.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 267
sliceNames[267] = "R_1_t00_MASK_CELL268f";

// Process mask 268: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL268.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL268.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL268.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL268.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 268
sliceNames[268] = "R_1_t00_MASK_CELL269f";

// Process mask 269: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL269.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL269.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL269.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL269.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 269
sliceNames[269] = "R_1_t00_MASK_CELL270f";

// Process mask 270: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL270.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL270.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL270.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL270.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 270
sliceNames[270] = "R_1_t00_MASK_CELL271f";

// Process mask 271: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL271.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL271.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL271.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL271.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 271
sliceNames[271] = "R_1_t00_MASK_CELL272f";

// Process mask 272: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL272.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL272.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL272.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL272.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 272
sliceNames[272] = "R_1_t00_MASK_CELL273f";

// Process mask 273: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL273.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL273.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL273.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL273.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 273
sliceNames[273] = "R_1_t00_MASK_CELL274f";

// Process mask 274: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL274.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL274.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL274.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL274.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 274
sliceNames[274] = "R_1_t00_MASK_CELL275f";

// Process mask 275: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL275.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL275.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL275.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL275.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 275
sliceNames[275] = "R_1_t00_MASK_CELL276f";

// Process mask 276: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL276.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL276.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL276.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL276.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 276
sliceNames[276] = "R_1_t00_MASK_CELL277f";

// Process mask 277: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL277.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL277.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL277.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL277.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 277
sliceNames[277] = "R_1_t00_MASK_CELL278f";

// Process mask 278: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL278.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL278.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL278.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL278.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 278
sliceNames[278] = "R_1_t00_MASK_CELL279f";

// Process mask 279: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL279.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL279.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL279.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL279.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 279
sliceNames[279] = "R_1_t00_MASK_CELL280f";

// Process mask 280: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL280.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL280.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL280.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL280.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 280
sliceNames[280] = "R_1_t00_MASK_CELL281f";

// Process mask 281: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL281.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL281.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL281.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL281.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 281
sliceNames[281] = "R_1_t00_MASK_CELL282f";

// Process mask 282: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL282.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL282.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL282.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL282.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 282
sliceNames[282] = "R_1_t00_MASK_CELL283f";

// Process mask 283: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL283.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL283.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL283.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL283.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 283
sliceNames[283] = "R_1_t00_MASK_CELL284f";

// Process mask 284: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL284.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL284.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL284.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL284.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 284
sliceNames[284] = "R_1_t00_MASK_CELL285f";

// Process mask 285: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL285.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL285.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL285.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL285.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 285
sliceNames[285] = "R_1_t00_MASK_CELL286f";

// Process mask 286: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL286.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL286.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL286.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL286.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 286
sliceNames[286] = "R_1_t00_MASK_CELL287f";

// Process mask 287: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL287.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL287.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL287.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL287.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 287
sliceNames[287] = "R_1_t00_MASK_CELL288f";

// Process mask 288: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL288.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL288.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL288.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL288.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 288
sliceNames[288] = "R_1_t00_MASK_CELL289f";

// Process mask 289: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL289.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL289.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL289.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL289.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 289
sliceNames[289] = "R_1_t00_MASK_CELL290f";

// Process mask 290: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL290.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL290.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL290.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL290.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 290
sliceNames[290] = "R_1_t00_MASK_CELL291f";

// Process mask 291: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL291.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL291.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL291.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL291.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 291
sliceNames[291] = "R_1_t00_MASK_CELL292f";

// Process mask 292: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL292.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL292.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL292.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL292.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 292
sliceNames[292] = "R_1_t00_MASK_CELL293f";

// Process mask 293: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL293.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL293.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL293.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL293.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 293
sliceNames[293] = "R_1_t00_MASK_CELL294f";

// Process mask 294: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL294.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL294.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL294.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL294.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 294
sliceNames[294] = "R_1_t00_MASK_CELL295f";

// Process mask 295: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL295.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL295.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL295.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL295.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 295
sliceNames[295] = "R_1_t00_MASK_CELL296f";

// Process mask 296: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL296.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL296.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL296.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL296.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 296
sliceNames[296] = "R_1_t00_MASK_CELL297f";

// Process mask 297: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL297.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL297.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL297.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL297.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 297
sliceNames[297] = "R_1_t00_MASK_CELL298f";

// Process mask 298: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL298.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL298.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL298.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL298.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 298
sliceNames[298] = "R_1_t00_MASK_CELL299f";

// Process mask 299: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL299.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL299.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL299.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL299.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 299
sliceNames[299] = "R_1_t00_MASK_CELL300f";

// Process mask 300: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL300.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL300.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL300.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL300.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 300
sliceNames[300] = "R_1_t00_MASK_CELL301f";

// Process mask 301: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL301.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL301.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL301.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL301.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 301
sliceNames[301] = "R_1_t00_MASK_CELL302f";

// Process mask 302: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL302.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL302.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL302.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL302.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 302
sliceNames[302] = "R_1_t00_MASK_CELL303f";

// Process mask 303: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL303.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL303.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL303.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL303.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 303
sliceNames[303] = "R_1_t00_MASK_CELL304f";

// Process mask 304: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL304.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL304.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL304.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL304.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 304
sliceNames[304] = "R_1_t00_MASK_CELL305f";

// Process mask 305: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL305.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL305.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL305.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL305.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 305
sliceNames[305] = "R_1_t00_MASK_CELL306f";

// Process mask 306: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL306.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL306.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL306.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL306.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 306
sliceNames[306] = "R_1_t00_MASK_CELL307f";

// Process mask 307: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL307.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL307.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL307.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL307.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 307
sliceNames[307] = "R_1_t00_MASK_CELL308f";

// Process mask 308: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL308.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL308.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL308.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL308.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 308
sliceNames[308] = "R_1_t00_MASK_CELL309f";

// Process mask 309: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL309.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL309.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL309.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL309.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 309
sliceNames[309] = "R_1_t00_MASK_CELL310f";

// Process mask 310: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL310.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL310.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL310.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL310.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 310
sliceNames[310] = "R_1_t00_MASK_CELL311f";

// Process mask 311: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL311.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL311.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL311.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL311.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 311
sliceNames[311] = "R_1_t00_MASK_CELL312f";

// Process mask 312: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL312.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL312.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL312.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL312.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 312
sliceNames[312] = "R_1_t00_MASK_CELL313f";

// Process mask 313: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL313.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL313.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL313.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL313.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 313
sliceNames[313] = "R_1_t00_MASK_CELL314f";

// Process mask 314: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL314.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL314.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL314.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL314.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 314
sliceNames[314] = "R_1_t00_MASK_CELL315f";

// Process mask 315: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL315.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL315.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL315.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL315.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 315
sliceNames[315] = "R_1_t00_MASK_CELL316f";

// Process mask 316: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL316.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL316.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL316.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL316.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 316
sliceNames[316] = "R_1_t00_MASK_CELL317f";

// Process mask 317: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL317.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL317.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL317.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL317.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 317
sliceNames[317] = "R_1_t00_MASK_CELL318f";

// Process mask 318: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL318.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL318.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL318.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL318.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 318
sliceNames[318] = "R_1_t00_MASK_CELL319f";

// Process mask 319: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL319.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL319.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL319.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL319.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 319
sliceNames[319] = "R_1_t00_MASK_CELL320f";

// Process mask 320: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL320.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL320.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL320.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL320.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 320
sliceNames[320] = "R_1_t00_MASK_CELL321f";

// Process mask 321: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL321.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL321.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL321.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL321.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 321
sliceNames[321] = "R_1_t00_MASK_CELL322f";

// Process mask 322: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL322.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL322.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL322.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL322.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 322
sliceNames[322] = "R_1_t00_MASK_CELL323f";

// Process mask 323: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL323.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL323.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL323.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL323.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 323
sliceNames[323] = "R_1_t00_MASK_CELL324f";

// Process mask 324: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL324.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL324.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL324.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL324.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 324
sliceNames[324] = "R_1_t00_MASK_CELL325f";

// Process mask 325: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL325.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL325.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL325.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL325.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 325
sliceNames[325] = "R_1_t00_MASK_CELL326f";

// Process mask 326: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL326.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL326.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL326.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL326.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 326
sliceNames[326] = "R_1_t00_MASK_CELL327f";

// Process mask 327: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL327.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL327.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL327.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL327.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 327
sliceNames[327] = "R_1_t00_MASK_CELL328f";

// Process mask 328: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL328.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL328.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL328.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL328.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 328
sliceNames[328] = "R_1_t00_MASK_CELL329f";

// Process mask 329: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL329.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL329.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL329.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL329.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 329
sliceNames[329] = "R_1_t00_MASK_CELL330f";

// Process mask 330: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL330.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL330.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL330.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL330.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 330
sliceNames[330] = "R_1_t00_MASK_CELL331f";

// Process mask 331: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL331.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL331.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL331.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL331.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 331
sliceNames[331] = "R_1_t00_MASK_CELL332f";

// Process mask 332: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL332.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL332.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL332.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL332.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 332
sliceNames[332] = "R_1_t00_MASK_CELL333f";

// Process mask 333: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL333.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL333.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL333.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL333.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 333
sliceNames[333] = "R_1_t00_MASK_CELL334f";

// Process mask 334: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL334.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL334.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL334.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL334.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 334
sliceNames[334] = "R_1_t00_MASK_CELL335f";

// Process mask 335: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL335.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL335.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL335.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL335.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 335
sliceNames[335] = "R_1_t00_MASK_CELL336f";

// Process mask 336: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL336.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL336.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL336.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL336.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 336
sliceNames[336] = "R_1_t00_MASK_CELL337f";

// Process mask 337: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL337.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL337.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL337.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL337.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 337
sliceNames[337] = "R_1_t00_MASK_CELL338f";

// Process mask 338: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL338.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL338.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL338.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL338.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 338
sliceNames[338] = "R_1_t00_MASK_CELL339f";

// Process mask 339: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL339.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL339.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL339.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL339.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 339
sliceNames[339] = "R_1_t00_MASK_CELL340f";

// Process mask 340: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL340.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL340.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL340.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL340.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 340
sliceNames[340] = "R_1_t00_MASK_CELL341f";

// Process mask 341: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL341.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL341.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL341.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL341.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 341
sliceNames[341] = "R_1_t00_MASK_CELL342f";

// Process mask 342: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL342.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL342.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL342.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL342.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 342
sliceNames[342] = "R_1_t00_MASK_CELL343f";

// Process mask 343: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL343.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL343.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL343.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL343.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 343
sliceNames[343] = "R_1_t00_MASK_CELL344f";

// Process mask 344: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL344.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL344.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL344.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL344.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 344
sliceNames[344] = "R_1_t00_MASK_CELL345f";

// Process mask 345: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL345.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL345.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL345.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL345.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 345
sliceNames[345] = "R_1_t00_MASK_CELL346f";

// Process mask 346: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL346.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL346.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL346.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL346.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 346
sliceNames[346] = "R_1_t00_MASK_CELL347f";

// Process mask 347: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL347.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL347.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL347.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL347.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 347
sliceNames[347] = "R_1_t00_MASK_CELL348f";

// Process mask 348: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL348.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL348.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL348.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL348.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 348
sliceNames[348] = "R_1_t00_MASK_CELL349f";

// Process mask 349: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL349.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL349.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL349.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL349.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 349
sliceNames[349] = "R_1_t00_MASK_CELL350f";

// Process mask 350: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL350.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL350.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL350.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL350.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 350
sliceNames[350] = "R_1_t00_MASK_CELL351f";

// Process mask 351: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL351.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL351.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL351.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL351.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 351
sliceNames[351] = "R_1_t00_MASK_CELL352f";

// Process mask 352: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL352.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL352.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL352.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL352.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 352
sliceNames[352] = "R_1_t00_MASK_CELL353f";

// Process mask 353: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL353.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL353.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL353.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL353.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 353
sliceNames[353] = "R_1_t00_MASK_CELL354f";

// Process mask 354: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL354.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL354.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL354.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL354.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 354
sliceNames[354] = "R_1_t00_MASK_CELL355f";

// Process mask 355: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL355.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL355.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL355.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL355.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 355
sliceNames[355] = "R_1_t00_MASK_CELL356f";

// Process mask 356: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL356.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL356.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL356.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL356.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 356
sliceNames[356] = "R_1_t00_MASK_CELL357f";

// Process mask 357: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL357.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL357.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL357.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL357.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 357
sliceNames[357] = "R_1_t00_MASK_CELL358f";

// Process mask 358: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL358.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL358.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL358.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL358.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 358
sliceNames[358] = "R_1_t00_MASK_CELL359f";

// Process mask 359: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL359.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL359.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL359.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL359.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 359
sliceNames[359] = "R_1_t00_MASK_CELL360f";

// Process mask 360: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL360.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL360.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL360.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL360.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 360
sliceNames[360] = "R_1_t00_MASK_CELL361f";

// Process mask 361: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL361.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL361.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL361.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL361.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 361
sliceNames[361] = "R_1_t00_MASK_CELL362f";

// Process mask 362: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL362.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL362.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL362.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL362.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 362
sliceNames[362] = "R_1_t00_MASK_CELL363f";

// Process mask 363: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL363.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL363.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL363.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL363.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 363
sliceNames[363] = "R_1_t00_MASK_CELL364f";

// Process mask 364: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL364.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL364.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL364.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL364.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 364
sliceNames[364] = "R_1_t00_MASK_CELL365f";

// Process mask 365: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL365.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL365.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL365.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL365.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 365
sliceNames[365] = "R_1_t00_MASK_CELL366f";

// Process mask 366: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL366.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL366.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL366.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL366.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 366
sliceNames[366] = "R_1_t00_MASK_CELL367f";

// Process mask 367: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL367.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL367.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL367.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL367.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 367
sliceNames[367] = "R_1_t00_MASK_CELL368f";

// Process mask 368: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL368.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL368.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL368.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL368.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 368
sliceNames[368] = "R_1_t00_MASK_CELL369f";

// Process mask 369: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL369.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL369.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL369.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL369.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 369
sliceNames[369] = "R_1_t00_MASK_CELL370f";

// Process mask 370: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL370.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL370.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL370.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL370.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 370
sliceNames[370] = "R_1_t00_MASK_CELL371f";

// Process mask 371: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL371.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL371.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL371.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL371.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 371
sliceNames[371] = "R_1_t00_MASK_CELL372f";

// Process mask 372: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL372.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL372.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL372.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL372.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 372
sliceNames[372] = "R_1_t00_MASK_CELL373f";

// Process mask 373: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL373.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL373.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL373.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL373.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 373
sliceNames[373] = "R_1_t00_MASK_CELL374f";

// Process mask 374: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL374.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL374.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL374.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL374.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 374
sliceNames[374] = "R_1_t00_MASK_CELL375f";

// Process mask 375: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL375.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL375.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL375.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL375.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 375
sliceNames[375] = "R_1_t00_MASK_CELL376f";

// Process mask 376: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL376.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL376.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL376.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL376.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 376
sliceNames[376] = "R_1_t00_MASK_CELL377f";

// Process mask 377: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL377.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL377.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL377.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL377.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 377
sliceNames[377] = "R_1_t00_MASK_CELL378f";

// Process mask 378: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL378.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL378.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL378.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL378.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 378
sliceNames[378] = "R_1_t00_MASK_CELL379f";

// Process mask 379: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL379.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL379.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL379.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL379.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 379
sliceNames[379] = "R_1_t00_MASK_CELL380f";

// Process mask 380: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL380.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL380.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL380.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL380.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 380
sliceNames[380] = "R_1_t00_MASK_CELL381f";

// Process mask 381: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL381.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL381.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL381.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL381.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 381
sliceNames[381] = "R_1_t00_MASK_CELL382f";

// Process mask 382: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL382.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL382.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL382.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL382.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 382
sliceNames[382] = "R_1_t00_MASK_CELL383f";

// Process mask 383: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL383.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL383.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL383.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL383.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 383
sliceNames[383] = "R_1_t00_MASK_CELL384f";

// Process mask 384: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL384.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL384.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL384.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL384.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 384
sliceNames[384] = "R_1_t00_MASK_CELL385f";

// Process mask 385: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL385.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL385.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL385.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL385.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 385
sliceNames[385] = "R_1_t00_MASK_CELL386f";

// Process mask 386: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL386.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL386.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL386.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL386.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 386
sliceNames[386] = "R_1_t00_MASK_CELL387f";

// Process mask 387: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL387.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL387.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL387.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL387.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 387
sliceNames[387] = "R_1_t00_MASK_CELL388f";

// Process mask 388: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL388.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL388.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL388.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL388.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 388
sliceNames[388] = "R_1_t00_MASK_CELL389f";

// Process mask 389: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL389.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL389.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL389.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL389.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 389
sliceNames[389] = "R_1_t00_MASK_CELL390f";

// Process mask 390: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL390.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL390.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL390.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL390.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 390
sliceNames[390] = "R_1_t00_MASK_CELL391f";

// Process mask 391: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL391.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL391.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL391.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL391.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 391
sliceNames[391] = "R_1_t00_MASK_CELL392f";

// Process mask 392: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL392.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL392.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL392.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL392.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 392
sliceNames[392] = "R_1_t00_MASK_CELL393f";

// Process mask 393: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL393.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL393.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL393.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL393.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 393
sliceNames[393] = "R_1_t00_MASK_CELL394f";

// Process mask 394: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL394.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL394.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL394.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL394.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 394
sliceNames[394] = "R_1_t00_MASK_CELL395f";

// Process mask 395: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL395.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL395.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL395.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL395.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 395
sliceNames[395] = "R_1_t00_MASK_CELL396f";

// Process mask 396: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL396.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL396.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL396.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL396.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 396
sliceNames[396] = "R_1_t00_MASK_CELL397f";

// Process mask 397: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL397.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL397.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL397.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL397.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 397
sliceNames[397] = "R_1_t00_MASK_CELL398f";

// Process mask 398: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL398.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL398.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL398.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL398.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 398
sliceNames[398] = "R_1_t00_MASK_CELL399f";

// Process mask 399: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL399.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL399.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL399.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL399.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 399
sliceNames[399] = "R_1_t00_MASK_CELL400f";

// Process mask 400: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL400.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL400.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL400.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL400.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 400
sliceNames[400] = "R_1_t00_MASK_CELL401f";

// Process mask 401: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL401.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL401.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL401.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL401.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 401
sliceNames[401] = "R_1_t00_MASK_CELL402f";

// Process mask 402: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL402.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL402.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL402.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL402.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 402
sliceNames[402] = "R_1_t00_MASK_CELL403f";

// Process mask 403: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL403.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL403.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL403.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL403.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 403
sliceNames[403] = "R_1_t00_MASK_CELL404f";

// Process mask 404: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL404.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL404.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL404.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL404.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 404
sliceNames[404] = "R_1_t00_MASK_CELL405f";

// Process mask 405: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL405.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL405.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL405.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL405.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 405
sliceNames[405] = "R_1_t00_MASK_CELL406f";

// Process mask 406: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL406.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL406.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL406.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL406.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 406
sliceNames[406] = "R_1_t00_MASK_CELL407f";

// Process mask 407: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL407.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL407.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL407.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL407.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 407
sliceNames[407] = "R_1_t00_MASK_CELL408f";

// Process mask 408: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL408.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL408.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL408.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL408.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 408
sliceNames[408] = "R_1_t00_MASK_CELL409f";

// Process mask 409: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL409.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL409.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL409.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL409.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 409
sliceNames[409] = "R_1_t00_MASK_CELL410f";

// Process mask 410: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL410.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL410.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL410.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL410.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 410
sliceNames[410] = "R_1_t00_MASK_CELL411f";

// Process mask 411: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL411.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL411.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL411.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL411.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 411
sliceNames[411] = "R_1_t00_MASK_CELL412f";

// Process mask 412: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL412.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL412.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL412.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL412.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 412
sliceNames[412] = "R_1_t00_MASK_CELL413f";

// Process mask 413: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL413.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL413.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL413.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL413.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 413
sliceNames[413] = "R_1_t00_MASK_CELL414f";

// Process mask 414: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL414.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL414.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL414.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL414.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 414
sliceNames[414] = "R_1_t00_MASK_CELL415f";

// Process mask 415: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL415.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL415.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL415.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL415.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 415
sliceNames[415] = "R_1_t00_MASK_CELL416f";

// Process mask 416: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL416.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL416.tiff");
open("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL416.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/masks/Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout/R_1_t00/MASK_CELL416.tiff");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-04-11_analysis_Dish_2/analysis/masks_Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout_R_1_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-04-11_analysis_Dish_2/analysis/masks_Dish_2_+Wash_LSG1-Halo_mTQ2-G3BP1_A549_60min_Washout_LSG1-Halo_70min_Washout_R_1_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
