// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(112);


// Store slice name at index 0
sliceNames[0] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL1";

// Process mask 1: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL1.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL1.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL1.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL1.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL2";

// Process mask 2: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL2.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL2.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL2.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL2.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL3";

// Process mask 3: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL3.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL3.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL3.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL3.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL4";

// Process mask 4: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL4.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL4.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL4.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL4.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL5";

// Process mask 5: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL5.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL5.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL5.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL5.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL6";

// Process mask 6: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL6.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL6.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL6.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL6.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL7";

// Process mask 7: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL7.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL7.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL7.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL7.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL8";

// Process mask 8: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL8.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL8.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL8.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL8.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL9";

// Process mask 9: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL9.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL9.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL9.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL9.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL10";

// Process mask 10: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL10.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL10.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL10.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL10.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL11";

// Process mask 11: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL11.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL11.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL11.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL11.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL12";

// Process mask 12: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL12.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL12.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL12.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL12.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL13";

// Process mask 13: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL13.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL13.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL13.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL13.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL14";

// Process mask 14: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL14.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL14.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL14.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL14.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL15";

// Process mask 15: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL15.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL15.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL15.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL15.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL16";

// Process mask 16: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL16.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL16.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL16.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL16.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL17";

// Process mask 17: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL17.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL17.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL17.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL17.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL18";

// Process mask 18: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL18.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL18.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL18.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL18.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL19";

// Process mask 19: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL19.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL19.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL19.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL19.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL20";

// Process mask 20: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL20.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL20.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL20.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL20.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL21";

// Process mask 21: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL21.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL21.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL21.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL21.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL22";

// Process mask 22: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL22.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL22.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL22.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL22.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL23";

// Process mask 23: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL23.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL23.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL23.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL23.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL24";

// Process mask 24: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL24.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL24.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL24.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL24.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL25";

// Process mask 25: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL25.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL25.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL25.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL25.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL26";

// Process mask 26: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL26.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL26.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL26.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL26.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL27";

// Process mask 27: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL27.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL27.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL27.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL27.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL28";

// Process mask 28: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL28.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL28.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL28.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL28.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL29";

// Process mask 29: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL29.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL29.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL29.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL29.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL30";

// Process mask 30: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL30.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL30.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL30.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL30.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL31";

// Process mask 31: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL31.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL31.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL31.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL31.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL32";

// Process mask 32: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL32.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL32.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL32.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL32.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL33";

// Process mask 33: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL33.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL33.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL33.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL33.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL34";

// Process mask 34: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL34.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL34.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL34.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL34.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL35";

// Process mask 35: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL35.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL35.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL35.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL35.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL36";

// Process mask 36: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL36.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL36.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL36.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL36.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL37";

// Process mask 37: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL37.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL37.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL37.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL37.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL38";

// Process mask 38: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL38.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL38.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL38.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL38.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL39";

// Process mask 39: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL39.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL39.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL39.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL39.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL40";

// Process mask 40: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL40.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL40.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL40.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL40.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL41";

// Process mask 41: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL41.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL41.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL41.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL41.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL42";

// Process mask 42: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL42.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL42.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL42.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL42.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL43";

// Process mask 43: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL43.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL43.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL43.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL43.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL44";

// Process mask 44: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL44.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL44.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL44.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL44.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL45";

// Process mask 45: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL45.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL45.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL45.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL45.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL46";

// Process mask 46: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL46.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL46.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL46.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL46.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL47";

// Process mask 47: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL47.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL47.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL47.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL47.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL48";

// Process mask 48: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL48.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL48.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL48.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL48.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL49";

// Process mask 49: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL49.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL49.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL49.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL49.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL50";

// Process mask 50: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL50.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL50.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL50.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL50.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL51";

// Process mask 51: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL51.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL51.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL51.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL51.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL52";

// Process mask 52: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL52.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL52.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL52.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL52.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL53";

// Process mask 53: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL53.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL53.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL53.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL53.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL54";

// Process mask 54: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL54.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL54.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL54.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL54.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL55";

// Process mask 55: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL55.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL55.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL55.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL55.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL56";

// Process mask 56: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL56.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL56.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL56.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL56.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 56
sliceNames[56] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL57";

// Process mask 57: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL57.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL57.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL57.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL57.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 57
sliceNames[57] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL58";

// Process mask 58: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL58.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL58.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL58.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL58.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 58
sliceNames[58] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL59";

// Process mask 59: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL59.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL59.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL59.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL59.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 59
sliceNames[59] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL60";

// Process mask 60: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL60.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL60.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL60.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL60.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 60
sliceNames[60] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL61";

// Process mask 61: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL61.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL61.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL61.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL61.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 61
sliceNames[61] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL62";

// Process mask 62: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL62.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL62.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL62.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL62.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 62
sliceNames[62] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL63";

// Process mask 63: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL63.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL63.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL63.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL63.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 63
sliceNames[63] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL64";

// Process mask 64: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL64.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL64.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL64.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL64.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 64
sliceNames[64] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL65";

// Process mask 65: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL65.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL65.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL65.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL65.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 65
sliceNames[65] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL66";

// Process mask 66: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL66.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL66.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL66.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL66.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 66
sliceNames[66] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL67";

// Process mask 67: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL67.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL67.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL67.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL67.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 67
sliceNames[67] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL68";

// Process mask 68: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL68.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL68.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL68.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL68.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 68
sliceNames[68] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL69";

// Process mask 69: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL69.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL69.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL69.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL69.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 69
sliceNames[69] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL70";

// Process mask 70: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL70.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL70.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL70.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL70.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 70
sliceNames[70] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL71";

// Process mask 71: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL71.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL71.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL71.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL71.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 71
sliceNames[71] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL72";

// Process mask 72: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL72.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL72.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL72.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL72.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 72
sliceNames[72] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL73";

// Process mask 73: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL73.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL73.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL73.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL73.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 73
sliceNames[73] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL74";

// Process mask 74: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL74.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL74.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL74.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL74.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 74
sliceNames[74] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL75";

// Process mask 75: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL75.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL75.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL75.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL75.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 75
sliceNames[75] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL76";

// Process mask 76: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL76.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL76.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL76.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL76.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 76
sliceNames[76] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL77";

// Process mask 77: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL77.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL77.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL77.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL77.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 77
sliceNames[77] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL78";

// Process mask 78: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL78.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL78.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL78.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL78.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 78
sliceNames[78] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL79";

// Process mask 79: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL79.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL79.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL79.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL79.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 79
sliceNames[79] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL80";

// Process mask 80: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL80.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL80.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL80.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL80.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 80
sliceNames[80] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL81";

// Process mask 81: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL81.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL81.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL81.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL81.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 81
sliceNames[81] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL82";

// Process mask 82: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL82.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL82.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL82.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL82.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 82
sliceNames[82] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL83";

// Process mask 83: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL83.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL83.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL83.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL83.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 83
sliceNames[83] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL84";

// Process mask 84: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL84.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL84.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL84.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL84.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 84
sliceNames[84] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL85";

// Process mask 85: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL85.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL85.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL85.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL85.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 85
sliceNames[85] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL86";

// Process mask 86: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL86.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL86.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL86.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL86.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 86
sliceNames[86] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL87";

// Process mask 87: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL87.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL87.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL87.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL87.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 87
sliceNames[87] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL88";

// Process mask 88: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL88.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL88.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL88.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL88.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 88
sliceNames[88] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL89";

// Process mask 89: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL89.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL89.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL89.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL89.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 89
sliceNames[89] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL90";

// Process mask 90: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL90.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL90.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL90.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL90.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 90
sliceNames[90] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL91";

// Process mask 91: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL91.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL91.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL91.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL91.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 91
sliceNames[91] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL92";

// Process mask 92: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL92.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL92.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL92.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL92.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 92
sliceNames[92] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL93";

// Process mask 93: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL93.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL93.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL93.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL93.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 93
sliceNames[93] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL94";

// Process mask 94: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL94.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL94.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL94.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL94.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 94
sliceNames[94] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL95";

// Process mask 95: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL95.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL95.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL95.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL95.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 95
sliceNames[95] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL96";

// Process mask 96: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL96.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL96.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL96.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL96.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 96
sliceNames[96] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL97";

// Process mask 97: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL97.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL97.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL97.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL97.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 97
sliceNames[97] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL98";

// Process mask 98: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL98.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL98.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL98.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL98.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 98
sliceNames[98] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL99";

// Process mask 99: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL99.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL99.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL99.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL99.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 99
sliceNames[99] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL100";

// Process mask 100: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL100.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL100.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL100.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL100.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 100
sliceNames[100] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL101";

// Process mask 101: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL101.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL101.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL101.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL101.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 101
sliceNames[101] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL102";

// Process mask 102: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL102.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL102.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL102.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL102.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 102
sliceNames[102] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL103";

// Process mask 103: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL103.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL103.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL103.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL103.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 103
sliceNames[103] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL104";

// Process mask 104: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL104.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL104.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL104.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL104.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 104
sliceNames[104] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL105";

// Process mask 105: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL105.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL105.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL105.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL105.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 105
sliceNames[105] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL106";

// Process mask 106: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL106.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL106.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL106.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL106.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 106
sliceNames[106] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL107";

// Process mask 107: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL107.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL107.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL107.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL107.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 107
sliceNames[107] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL108";

// Process mask 108: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL108.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL108.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL108.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL108.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 108
sliceNames[108] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL109";

// Process mask 109: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL109.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL109.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL109.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL109.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 109
sliceNames[109] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL110";

// Process mask 110: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL110.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL110.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL110.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL110.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 110
sliceNames[110] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL111";

// Process mask 111: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL111.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL111.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL111.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL111.tif");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 111
sliceNames[111] = "A549 Control_Merged_Processed001_ch02_t00_MASK_CELL112";

// Process mask 112: /Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL112.tif
print("ANALYSIS_START:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL112.tif");
open("/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL112.tif");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Volumes/NX-01-A/2025-06-10_analysis_TEST/masks/U2OS vs A549 SG Disassembly Rep 4/A549 Control_Merged_Processed001_ch02_t00/MASK_CELL112.tif");

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
    print("Saving summary to: /Volumes/NX-01-A/2025-06-10_analysis_TEST/analysis/masks_U2OS vs A549 SG Disassembly Rep 4_A549 Control_Merged_Processed001_ch02_t00_summary.csv");
    Table.save("/Volumes/NX-01-A/2025-06-10_analysis_TEST/analysis/masks_U2OS vs A549 SG Disassembly Rep 4_A549 Control_Merged_Processed001_ch02_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
