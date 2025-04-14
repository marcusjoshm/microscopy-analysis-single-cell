// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(172);


// Store slice name at index 0
sliceNames[0] = "TS2_50min_t00_MASK_CELL1f";

// Process mask 1: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL1.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "TS2_50min_t00_MASK_CELL2f";

// Process mask 2: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL2.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "TS2_50min_t00_MASK_CELL3f";

// Process mask 3: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL3.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "TS2_50min_t00_MASK_CELL4f";

// Process mask 4: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL4.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "TS2_50min_t00_MASK_CELL5f";

// Process mask 5: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL5.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "TS2_50min_t00_MASK_CELL6f";

// Process mask 6: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL6.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "TS2_50min_t00_MASK_CELL7f";

// Process mask 7: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL7.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "TS2_50min_t00_MASK_CELL8f";

// Process mask 8: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL8.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "TS2_50min_t00_MASK_CELL9f";

// Process mask 9: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL9.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "TS2_50min_t00_MASK_CELL10f";

// Process mask 10: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL10.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "TS2_50min_t00_MASK_CELL11f";

// Process mask 11: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL11.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "TS2_50min_t00_MASK_CELL12f";

// Process mask 12: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL12.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL12.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "TS2_50min_t00_MASK_CELL13f";

// Process mask 13: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL13.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL13.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL13.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL13.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "TS2_50min_t00_MASK_CELL14f";

// Process mask 14: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL14.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL14.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL14.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL14.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "TS2_50min_t00_MASK_CELL15f";

// Process mask 15: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL15.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL15.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL15.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL15.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "TS2_50min_t00_MASK_CELL16f";

// Process mask 16: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL16.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL16.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL16.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL16.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "TS2_50min_t00_MASK_CELL17f";

// Process mask 17: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL17.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL17.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL17.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL17.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "TS2_50min_t00_MASK_CELL18f";

// Process mask 18: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL18.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL18.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL18.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL18.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "TS2_50min_t00_MASK_CELL19f";

// Process mask 19: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL19.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL19.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL19.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL19.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "TS2_50min_t00_MASK_CELL20f";

// Process mask 20: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL20.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL20.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL20.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL20.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "TS2_50min_t00_MASK_CELL21f";

// Process mask 21: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL21.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL21.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL21.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL21.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "TS2_50min_t00_MASK_CELL22f";

// Process mask 22: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL22.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL22.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL22.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL22.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "TS2_50min_t00_MASK_CELL23f";

// Process mask 23: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL23.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL23.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL23.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL23.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "TS2_50min_t00_MASK_CELL24f";

// Process mask 24: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL24.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL24.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL24.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL24.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "TS2_50min_t00_MASK_CELL25f";

// Process mask 25: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL25.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL25.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL25.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL25.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "TS2_50min_t00_MASK_CELL26f";

// Process mask 26: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL26.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL26.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL26.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL26.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "TS2_50min_t00_MASK_CELL27f";

// Process mask 27: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL27.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL27.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL27.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL27.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "TS2_50min_t00_MASK_CELL28f";

// Process mask 28: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL28.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL28.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL28.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL28.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "TS2_50min_t00_MASK_CELL29f";

// Process mask 29: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL29.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL29.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL29.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL29.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "TS2_50min_t00_MASK_CELL30f";

// Process mask 30: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL30.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL30.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL30.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL30.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "TS2_50min_t00_MASK_CELL31f";

// Process mask 31: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL31.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL31.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL31.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL31.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "TS2_50min_t00_MASK_CELL32f";

// Process mask 32: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL32.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL32.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL32.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL32.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "TS2_50min_t00_MASK_CELL33f";

// Process mask 33: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL33.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL33.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL33.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL33.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "TS2_50min_t00_MASK_CELL34f";

// Process mask 34: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL34.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL34.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL34.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL34.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "TS2_50min_t00_MASK_CELL35f";

// Process mask 35: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL35.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL35.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL35.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL35.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "TS2_50min_t00_MASK_CELL36f";

// Process mask 36: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL36.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL36.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL36.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL36.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "TS2_50min_t00_MASK_CELL37f";

// Process mask 37: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL37.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL37.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL37.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL37.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "TS2_50min_t00_MASK_CELL38f";

// Process mask 38: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL38.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL38.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL38.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL38.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "TS2_50min_t00_MASK_CELL39f";

// Process mask 39: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL39.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL39.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL39.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL39.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "TS2_50min_t00_MASK_CELL40f";

// Process mask 40: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL40.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL40.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL40.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL40.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "TS2_50min_t00_MASK_CELL41f";

// Process mask 41: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL41.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL41.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL41.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL41.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "TS2_50min_t00_MASK_CELL42f";

// Process mask 42: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL42.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL42.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL42.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL42.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "TS2_50min_t00_MASK_CELL43f";

// Process mask 43: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL43.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL43.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL43.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL43.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "TS2_50min_t00_MASK_CELL44f";

// Process mask 44: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL44.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL44.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL44.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL44.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "TS2_50min_t00_MASK_CELL45f";

// Process mask 45: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL45.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL45.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL45.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL45.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "TS2_50min_t00_MASK_CELL46f";

// Process mask 46: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL46.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL46.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL46.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL46.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "TS2_50min_t00_MASK_CELL47f";

// Process mask 47: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL47.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL47.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL47.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL47.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "TS2_50min_t00_MASK_CELL48f";

// Process mask 48: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL48.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL48.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL48.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL48.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "TS2_50min_t00_MASK_CELL49f";

// Process mask 49: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL49.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL49.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL49.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL49.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "TS2_50min_t00_MASK_CELL50f";

// Process mask 50: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL50.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL50.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL50.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL50.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "TS2_50min_t00_MASK_CELL51f";

// Process mask 51: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL51.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL51.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL51.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL51.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "TS2_50min_t00_MASK_CELL52f";

// Process mask 52: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL52.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL52.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL52.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL52.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "TS2_50min_t00_MASK_CELL53f";

// Process mask 53: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL53.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL53.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL53.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL53.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "TS2_50min_t00_MASK_CELL54f";

// Process mask 54: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL54.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL54.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL54.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL54.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "TS2_50min_t00_MASK_CELL55f";

// Process mask 55: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL55.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL55.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL55.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL55.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "TS2_50min_t00_MASK_CELL56f";

// Process mask 56: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL56.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL56.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL56.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL56.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 56
sliceNames[56] = "TS2_50min_t00_MASK_CELL57f";

// Process mask 57: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL57.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL57.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL57.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL57.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 57
sliceNames[57] = "TS2_50min_t00_MASK_CELL58f";

// Process mask 58: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL58.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL58.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL58.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL58.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 58
sliceNames[58] = "TS2_50min_t00_MASK_CELL59f";

// Process mask 59: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL59.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL59.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL59.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL59.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 59
sliceNames[59] = "TS2_50min_t00_MASK_CELL60f";

// Process mask 60: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL60.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL60.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL60.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL60.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 60
sliceNames[60] = "TS2_50min_t00_MASK_CELL61f";

// Process mask 61: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL61.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL61.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL61.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL61.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 61
sliceNames[61] = "TS2_50min_t00_MASK_CELL62f";

// Process mask 62: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL62.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL62.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL62.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL62.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 62
sliceNames[62] = "TS2_50min_t00_MASK_CELL63f";

// Process mask 63: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL63.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL63.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL63.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL63.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 63
sliceNames[63] = "TS2_50min_t00_MASK_CELL64f";

// Process mask 64: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL64.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL64.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL64.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL64.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 64
sliceNames[64] = "TS2_50min_t00_MASK_CELL65f";

// Process mask 65: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL65.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL65.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL65.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL65.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 65
sliceNames[65] = "TS2_50min_t00_MASK_CELL66f";

// Process mask 66: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL66.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL66.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL66.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL66.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 66
sliceNames[66] = "TS2_50min_t00_MASK_CELL67f";

// Process mask 67: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL67.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL67.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL67.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL67.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 67
sliceNames[67] = "TS2_50min_t00_MASK_CELL68f";

// Process mask 68: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL68.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL68.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL68.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL68.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 68
sliceNames[68] = "TS2_50min_t00_MASK_CELL69f";

// Process mask 69: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL69.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL69.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL69.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL69.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 69
sliceNames[69] = "TS2_50min_t00_MASK_CELL70f";

// Process mask 70: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL70.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL70.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL70.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL70.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 70
sliceNames[70] = "TS2_50min_t00_MASK_CELL71f";

// Process mask 71: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL71.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL71.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL71.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL71.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 71
sliceNames[71] = "TS2_50min_t00_MASK_CELL72f";

// Process mask 72: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL72.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL72.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL72.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL72.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 72
sliceNames[72] = "TS2_50min_t00_MASK_CELL73f";

// Process mask 73: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL73.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL73.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL73.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL73.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 73
sliceNames[73] = "TS2_50min_t00_MASK_CELL74f";

// Process mask 74: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL74.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL74.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL74.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL74.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 74
sliceNames[74] = "TS2_50min_t00_MASK_CELL75f";

// Process mask 75: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL75.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL75.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL75.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL75.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 75
sliceNames[75] = "TS2_50min_t00_MASK_CELL76f";

// Process mask 76: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL76.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL76.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL76.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL76.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 76
sliceNames[76] = "TS2_50min_t00_MASK_CELL77f";

// Process mask 77: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL77.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL77.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL77.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL77.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 77
sliceNames[77] = "TS2_50min_t00_MASK_CELL78f";

// Process mask 78: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL78.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL78.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL78.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL78.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 78
sliceNames[78] = "TS2_50min_t00_MASK_CELL79f";

// Process mask 79: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL79.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL79.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL79.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL79.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 79
sliceNames[79] = "TS2_50min_t00_MASK_CELL80f";

// Process mask 80: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL80.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL80.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL80.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL80.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 80
sliceNames[80] = "TS2_50min_t00_MASK_CELL81f";

// Process mask 81: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL81.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL81.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL81.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL81.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 81
sliceNames[81] = "TS2_50min_t00_MASK_CELL82f";

// Process mask 82: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL82.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL82.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL82.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL82.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 82
sliceNames[82] = "TS2_50min_t00_MASK_CELL83f";

// Process mask 83: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL83.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL83.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL83.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL83.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 83
sliceNames[83] = "TS2_50min_t00_MASK_CELL84f";

// Process mask 84: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL84.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL84.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL84.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL84.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 84
sliceNames[84] = "TS2_50min_t00_MASK_CELL85f";

// Process mask 85: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL85.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL85.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL85.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL85.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 85
sliceNames[85] = "TS2_50min_t00_MASK_CELL86f";

// Process mask 86: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL86.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL86.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL86.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL86.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 86
sliceNames[86] = "TS2_50min_t00_MASK_CELL87f";

// Process mask 87: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL87.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL87.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL87.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL87.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 87
sliceNames[87] = "TS2_50min_t00_MASK_CELL88f";

// Process mask 88: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL88.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL88.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL88.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL88.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 88
sliceNames[88] = "TS2_50min_t00_MASK_CELL89f";

// Process mask 89: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL89.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL89.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL89.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL89.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 89
sliceNames[89] = "TS2_50min_t00_MASK_CELL90f";

// Process mask 90: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL90.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL90.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL90.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL90.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 90
sliceNames[90] = "TS2_50min_t00_MASK_CELL91f";

// Process mask 91: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL91.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL91.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL91.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL91.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 91
sliceNames[91] = "TS2_50min_t00_MASK_CELL92f";

// Process mask 92: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL92.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL92.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL92.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL92.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 92
sliceNames[92] = "TS2_50min_t00_MASK_CELL93f";

// Process mask 93: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL93.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL93.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL93.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL93.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 93
sliceNames[93] = "TS2_50min_t00_MASK_CELL94f";

// Process mask 94: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL94.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL94.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL94.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL94.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 94
sliceNames[94] = "TS2_50min_t00_MASK_CELL95f";

// Process mask 95: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL95.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL95.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL95.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL95.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 95
sliceNames[95] = "TS2_50min_t00_MASK_CELL96f";

// Process mask 96: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL96.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL96.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL96.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL96.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 96
sliceNames[96] = "TS2_50min_t00_MASK_CELL97f";

// Process mask 97: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL97.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL97.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL97.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL97.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 97
sliceNames[97] = "TS2_50min_t00_MASK_CELL98f";

// Process mask 98: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL98.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL98.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL98.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL98.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 98
sliceNames[98] = "TS2_50min_t00_MASK_CELL99f";

// Process mask 99: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL99.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL99.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL99.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL99.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 99
sliceNames[99] = "TS2_50min_t00_MASK_CELL100f";

// Process mask 100: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL100.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL100.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL100.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL100.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 100
sliceNames[100] = "TS2_50min_t00_MASK_CELL101f";

// Process mask 101: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL101.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL101.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL101.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL101.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 101
sliceNames[101] = "TS2_50min_t00_MASK_CELL102f";

// Process mask 102: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL102.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL102.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL102.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL102.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 102
sliceNames[102] = "TS2_50min_t00_MASK_CELL103f";

// Process mask 103: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL103.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL103.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL103.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL103.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 103
sliceNames[103] = "TS2_50min_t00_MASK_CELL104f";

// Process mask 104: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL104.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL104.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL104.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL104.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 104
sliceNames[104] = "TS2_50min_t00_MASK_CELL105f";

// Process mask 105: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL105.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL105.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL105.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL105.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 105
sliceNames[105] = "TS2_50min_t00_MASK_CELL106f";

// Process mask 106: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL106.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL106.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL106.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL106.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 106
sliceNames[106] = "TS2_50min_t00_MASK_CELL107f";

// Process mask 107: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL107.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL107.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL107.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL107.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 107
sliceNames[107] = "TS2_50min_t00_MASK_CELL108f";

// Process mask 108: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL108.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL108.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL108.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL108.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 108
sliceNames[108] = "TS2_50min_t00_MASK_CELL109f";

// Process mask 109: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL109.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL109.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL109.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL109.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 109
sliceNames[109] = "TS2_50min_t00_MASK_CELL110f";

// Process mask 110: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL110.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL110.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL110.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL110.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 110
sliceNames[110] = "TS2_50min_t00_MASK_CELL111f";

// Process mask 111: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL111.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL111.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL111.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL111.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 111
sliceNames[111] = "TS2_50min_t00_MASK_CELL112f";

// Process mask 112: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL112.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL112.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL112.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL112.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 112
sliceNames[112] = "TS2_50min_t00_MASK_CELL113f";

// Process mask 113: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL113.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL113.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL113.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL113.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 113
sliceNames[113] = "TS2_50min_t00_MASK_CELL114f";

// Process mask 114: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL114.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL114.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL114.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL114.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 114
sliceNames[114] = "TS2_50min_t00_MASK_CELL115f";

// Process mask 115: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL115.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL115.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL115.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL115.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 115
sliceNames[115] = "TS2_50min_t00_MASK_CELL116f";

// Process mask 116: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL116.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL116.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL116.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL116.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 116
sliceNames[116] = "TS2_50min_t00_MASK_CELL117f";

// Process mask 117: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL117.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL117.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL117.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL117.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 117
sliceNames[117] = "TS2_50min_t00_MASK_CELL118f";

// Process mask 118: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL118.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL118.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL118.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL118.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 118
sliceNames[118] = "TS2_50min_t00_MASK_CELL119f";

// Process mask 119: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL119.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL119.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL119.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL119.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 119
sliceNames[119] = "TS2_50min_t00_MASK_CELL120f";

// Process mask 120: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL120.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL120.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL120.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL120.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 120
sliceNames[120] = "TS2_50min_t00_MASK_CELL121f";

// Process mask 121: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL121.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL121.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL121.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL121.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 121
sliceNames[121] = "TS2_50min_t00_MASK_CELL122f";

// Process mask 122: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL122.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL122.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL122.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL122.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 122
sliceNames[122] = "TS2_50min_t00_MASK_CELL123f";

// Process mask 123: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL123.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL123.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL123.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL123.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 123
sliceNames[123] = "TS2_50min_t00_MASK_CELL124f";

// Process mask 124: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL124.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL124.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL124.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL124.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 124
sliceNames[124] = "TS2_50min_t00_MASK_CELL125f";

// Process mask 125: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL125.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL125.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL125.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL125.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 125
sliceNames[125] = "TS2_50min_t00_MASK_CELL126f";

// Process mask 126: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL126.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL126.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL126.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL126.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 126
sliceNames[126] = "TS2_50min_t00_MASK_CELL127f";

// Process mask 127: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL127.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL127.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL127.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL127.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 127
sliceNames[127] = "TS2_50min_t00_MASK_CELL128f";

// Process mask 128: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL128.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL128.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL128.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL128.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 128
sliceNames[128] = "TS2_50min_t00_MASK_CELL129f";

// Process mask 129: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL129.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL129.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL129.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL129.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 129
sliceNames[129] = "TS2_50min_t00_MASK_CELL130f";

// Process mask 130: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL130.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL130.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL130.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL130.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 130
sliceNames[130] = "TS2_50min_t00_MASK_CELL131f";

// Process mask 131: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL131.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL131.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL131.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL131.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 131
sliceNames[131] = "TS2_50min_t00_MASK_CELL132f";

// Process mask 132: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL132.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL132.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL132.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL132.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 132
sliceNames[132] = "TS2_50min_t00_MASK_CELL133f";

// Process mask 133: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL133.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL133.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL133.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL133.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 133
sliceNames[133] = "TS2_50min_t00_MASK_CELL134f";

// Process mask 134: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL134.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL134.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL134.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL134.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 134
sliceNames[134] = "TS2_50min_t00_MASK_CELL135f";

// Process mask 135: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL135.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL135.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL135.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL135.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 135
sliceNames[135] = "TS2_50min_t00_MASK_CELL136f";

// Process mask 136: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL136.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL136.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL136.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL136.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 136
sliceNames[136] = "TS2_50min_t00_MASK_CELL137f";

// Process mask 137: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL137.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL137.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL137.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL137.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 137
sliceNames[137] = "TS2_50min_t00_MASK_CELL138f";

// Process mask 138: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL138.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL138.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL138.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL138.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 138
sliceNames[138] = "TS2_50min_t00_MASK_CELL139f";

// Process mask 139: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL139.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL139.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL139.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL139.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 139
sliceNames[139] = "TS2_50min_t00_MASK_CELL140f";

// Process mask 140: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL140.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL140.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL140.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL140.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 140
sliceNames[140] = "TS2_50min_t00_MASK_CELL141f";

// Process mask 141: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL141.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL141.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL141.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL141.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 141
sliceNames[141] = "TS2_50min_t00_MASK_CELL142f";

// Process mask 142: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL142.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL142.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL142.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL142.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 142
sliceNames[142] = "TS2_50min_t00_MASK_CELL143f";

// Process mask 143: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL143.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL143.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL143.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL143.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 143
sliceNames[143] = "TS2_50min_t00_MASK_CELL144f";

// Process mask 144: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL144.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL144.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL144.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL144.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 144
sliceNames[144] = "TS2_50min_t00_MASK_CELL145f";

// Process mask 145: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL145.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL145.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL145.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL145.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 145
sliceNames[145] = "TS2_50min_t00_MASK_CELL146f";

// Process mask 146: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL146.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL146.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL146.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL146.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 146
sliceNames[146] = "TS2_50min_t00_MASK_CELL147f";

// Process mask 147: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL147.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL147.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL147.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL147.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 147
sliceNames[147] = "TS2_50min_t00_MASK_CELL148f";

// Process mask 148: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL148.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL148.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL148.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL148.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 148
sliceNames[148] = "TS2_50min_t00_MASK_CELL149f";

// Process mask 149: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL149.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL149.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL149.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL149.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 149
sliceNames[149] = "TS2_50min_t00_MASK_CELL150f";

// Process mask 150: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL150.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL150.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL150.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL150.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 150
sliceNames[150] = "TS2_50min_t00_MASK_CELL151f";

// Process mask 151: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL151.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL151.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL151.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL151.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 151
sliceNames[151] = "TS2_50min_t00_MASK_CELL152f";

// Process mask 152: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL152.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL152.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL152.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL152.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 152
sliceNames[152] = "TS2_50min_t00_MASK_CELL153f";

// Process mask 153: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL153.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL153.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL153.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL153.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 153
sliceNames[153] = "TS2_50min_t00_MASK_CELL154f";

// Process mask 154: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL154.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL154.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL154.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL154.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 154
sliceNames[154] = "TS2_50min_t00_MASK_CELL155f";

// Process mask 155: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL155.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL155.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL155.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL155.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 155
sliceNames[155] = "TS2_50min_t00_MASK_CELL156f";

// Process mask 156: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL156.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL156.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL156.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL156.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 156
sliceNames[156] = "TS2_50min_t00_MASK_CELL157f";

// Process mask 157: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL157.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL157.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL157.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL157.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 157
sliceNames[157] = "TS2_50min_t00_MASK_CELL158f";

// Process mask 158: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL158.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL158.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL158.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL158.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 158
sliceNames[158] = "TS2_50min_t00_MASK_CELL159f";

// Process mask 159: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL159.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL159.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL159.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL159.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 159
sliceNames[159] = "TS2_50min_t00_MASK_CELL160f";

// Process mask 160: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL160.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL160.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL160.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL160.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 160
sliceNames[160] = "TS2_50min_t00_MASK_CELL161f";

// Process mask 161: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL161.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL161.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL161.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL161.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 161
sliceNames[161] = "TS2_50min_t00_MASK_CELL162f";

// Process mask 162: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL162.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL162.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL162.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL162.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 162
sliceNames[162] = "TS2_50min_t00_MASK_CELL163f";

// Process mask 163: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL163.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL163.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL163.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL163.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 163
sliceNames[163] = "TS2_50min_t00_MASK_CELL164f";

// Process mask 164: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL164.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL164.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL164.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL164.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 164
sliceNames[164] = "TS2_50min_t00_MASK_CELL165f";

// Process mask 165: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL165.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL165.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL165.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL165.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 165
sliceNames[165] = "TS2_50min_t00_MASK_CELL166f";

// Process mask 166: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL166.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL166.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL166.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL166.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 166
sliceNames[166] = "TS2_50min_t00_MASK_CELL167f";

// Process mask 167: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL167.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL167.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL167.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL167.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 167
sliceNames[167] = "TS2_50min_t00_MASK_CELL168f";

// Process mask 168: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL168.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL168.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL168.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL168.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 168
sliceNames[168] = "TS2_50min_t00_MASK_CELL169f";

// Process mask 169: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL169.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL169.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL169.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL169.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 169
sliceNames[169] = "TS2_50min_t00_MASK_CELL170f";

// Process mask 170: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL170.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL170.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL170.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL170.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 170
sliceNames[170] = "TS2_50min_t00_MASK_CELL171f";

// Process mask 171: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL171.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL171.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL171.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL171.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 171
sliceNames[171] = "TS2_50min_t00_MASK_CELL172f";

// Process mask 172: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL172.tiff
print("ANALYSIS_START:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL172.tiff");
open("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL172.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/masks/Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549/TS2_50min_t00/MASK_CELL172.tiff");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-04-13_analysis_Dish_5/analysis/masks_Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549_TS2_50min_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-04-13_analysis_Dish_5/analysis/masks_Dish_5_+Wash_mTQ2-G3BP1_dCas9_A549_TS2_50min_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
