// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(56);


// Store slice name at index 0
sliceNames[0] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL1";

// Process mask 1: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL1.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL1.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL1.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL1.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL2";

// Process mask 2: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL2.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL2.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL2.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL2.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL3";

// Process mask 3: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL3.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL3.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL3.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL3.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL4";

// Process mask 4: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL4.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL4.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL4.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL4.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL5";

// Process mask 5: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL5.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL5.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL5.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL5.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL6";

// Process mask 6: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL6.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL6.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL6.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL6.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL7";

// Process mask 7: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL7.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL7.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL7.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL7.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL8";

// Process mask 8: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL8.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL8.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL8.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL8.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL9";

// Process mask 9: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL9.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL9.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL9.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL9.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL10";

// Process mask 10: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL10.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL10.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL10.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL10.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL11";

// Process mask 11: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL11.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL11.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL11.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL11.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL12";

// Process mask 12: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL12.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL12.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL12.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL12.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL13";

// Process mask 13: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL13.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL13.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL13.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL13.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL14";

// Process mask 14: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL14.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL14.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL14.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL14.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL15";

// Process mask 15: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL15.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL15.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL15.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL15.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL16";

// Process mask 16: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL16.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL16.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL16.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL16.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL17";

// Process mask 17: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL17.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL17.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL17.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL17.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL18";

// Process mask 18: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL18.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL18.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL18.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL18.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL19";

// Process mask 19: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL19.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL19.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL19.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL19.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL20";

// Process mask 20: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL20.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL20.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL20.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL20.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL21";

// Process mask 21: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL21.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL21.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL21.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL21.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL22";

// Process mask 22: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL22.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL22.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL22.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL22.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL23";

// Process mask 23: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL23.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL23.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL23.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL23.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL24";

// Process mask 24: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL24.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL24.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL24.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL24.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL25";

// Process mask 25: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL25.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL25.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL25.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL25.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL26";

// Process mask 26: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL26.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL26.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL26.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL26.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL27";

// Process mask 27: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL27.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL27.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL27.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL27.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL28";

// Process mask 28: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL28.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL28.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL28.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL28.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL29";

// Process mask 29: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL29.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL29.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL29.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL29.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL30";

// Process mask 30: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL30.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL30.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL30.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL30.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL31";

// Process mask 31: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL31.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL31.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL31.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL31.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL32";

// Process mask 32: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL32.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL32.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL32.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL32.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL33";

// Process mask 33: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL33.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL33.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL33.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL33.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL34";

// Process mask 34: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL34.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL34.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL34.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL34.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL35";

// Process mask 35: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL35.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL35.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL35.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL35.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL36";

// Process mask 36: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL36.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL36.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL36.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL36.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL37";

// Process mask 37: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL37.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL37.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL37.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL37.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL38";

// Process mask 38: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL38.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL38.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL38.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL38.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL39";

// Process mask 39: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL39.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL39.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL39.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL39.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL40";

// Process mask 40: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL40.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL40.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL40.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL40.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL41";

// Process mask 41: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL41.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL41.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL41.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL41.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL42";

// Process mask 42: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL42.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL42.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL42.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL42.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL43";

// Process mask 43: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL43.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL43.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL43.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL43.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL44";

// Process mask 44: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL44.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL44.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL44.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL44.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL45";

// Process mask 45: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL45.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL45.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL45.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL45.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL46";

// Process mask 46: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL46.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL46.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL46.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL46.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL47";

// Process mask 47: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL47.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL47.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL47.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL47.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL48";

// Process mask 48: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL48.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL48.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL48.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL48.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL49";

// Process mask 49: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL49.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL49.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL49.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL49.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL50";

// Process mask 50: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL50.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL50.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL50.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL50.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL51";

// Process mask 51: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL51.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL51.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL51.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL51.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL52";

// Process mask 52: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL52.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL52.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL52.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL52.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL53";

// Process mask 53: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL53.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL53.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL53.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL53.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL54";

// Process mask 54: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL54.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL54.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL54.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL54.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL55";

// Process mask 55: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL55.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL55.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL55.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL55.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "R_3_Merged_Processed001_ch00_t00_MASK_CELL56";

// Process mask 56: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL56.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL56.tif");
open("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL56.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/masks/U2OS_TAOK2-WT_transfection_washout/R_3_Merged_Processed001_ch00_t00/MASK_CELL56.tif");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/analysis/masks_U2OS_TAOK2-WT_transfection_washout_R_3_Merged_Processed001_ch00_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-06-18_analysis_U2OS_transfection_washout_TAOK2-WT/analysis/masks_U2OS_TAOK2-WT_transfection_washout_R_3_Merged_Processed001_ch00_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
