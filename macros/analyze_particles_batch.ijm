// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(23);


// Store slice name at index 0
sliceNames[0] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL1";

// Process mask 1: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL1.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL1.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL1.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL1.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL2";

// Process mask 2: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL2.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL2.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL2.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL2.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL3";

// Process mask 3: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL3.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL3.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL3.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL3.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL4";

// Process mask 4: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL4.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL4.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL4.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL4.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL5";

// Process mask 5: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL5.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL5.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL5.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL5.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL6";

// Process mask 6: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL6.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL6.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL6.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL6.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL7";

// Process mask 7: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL7.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL7.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL7.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL7.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL8";

// Process mask 8: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL8.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL8.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL8.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL8.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL9";

// Process mask 9: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL9.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL9.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL9.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL9.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL10";

// Process mask 10: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL10.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL10.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL10.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL10.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL11";

// Process mask 11: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL11.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL11.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL11.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL11.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL12";

// Process mask 12: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL12.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL12.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL12.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL12.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL13";

// Process mask 13: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL13.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL13.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL13.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL13.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL14";

// Process mask 14: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL14.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL14.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL14.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL14.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL15";

// Process mask 15: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL15.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL15.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL15.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL15.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL16";

// Process mask 16: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL16.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL16.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL16.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL16.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL17";

// Process mask 17: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL17.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL17.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL17.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL17.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL18";

// Process mask 18: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL18.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL18.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL18.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL18.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL19";

// Process mask 19: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL19.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL19.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL19.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL19.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL20";

// Process mask 20: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL20.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL20.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL20.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL20.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL21";

// Process mask 21: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL21.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL21.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL21.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL21.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL22";

// Process mask 22: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL22.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL22.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL22.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL22.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "R_1_Merged_Processed001_ch00_t00_MASK_CELL23";

// Process mask 23: /Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL23.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL23.tif");
open("/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL23.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-24_test/masks/U2OS_TAOK2_transfection_washout_Rep_2_RTN4/R_1_Merged_Processed001_ch00_t00/MASK_CELL23.tif");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-06-24_test/analysis/masks_U2OS_TAOK2_transfection_washout_Rep_2_RTN4_R_1_Merged_Processed001_ch00_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-06-24_test/analysis/masks_U2OS_TAOK2_transfection_washout_Rep_2_RTN4_R_1_Merged_Processed001_ch00_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
