// Analyze Particles Batch Macro
setBatchMode(true);

// Create an array to store slice names
var sliceNames = newArray(90);


// Store slice name at index 0
sliceNames[0] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL58f";

// Process mask 1: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL58.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL58.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL58.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL58.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 1
sliceNames[1] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL8f";

// Process mask 2: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL8.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL8.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL8.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL8.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 2
sliceNames[2] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL19f";

// Process mask 3: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL19.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL19.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL19.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL19.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 3
sliceNames[3] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL62f";

// Process mask 4: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL62.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL62.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL62.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL62.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 4
sliceNames[4] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL35f";

// Process mask 5: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL35.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL35.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL35.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL35.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 5
sliceNames[5] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL23f";

// Process mask 6: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL23.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL23.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL23.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL23.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 6
sliceNames[6] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL74f";

// Process mask 7: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL74.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL74.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL74.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL74.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 7
sliceNames[7] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL54f";

// Process mask 8: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL54.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL54.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL54.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL54.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 8
sliceNames[8] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL42f";

// Process mask 9: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL42.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL42.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL42.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL42.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 9
sliceNames[9] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL4f";

// Process mask 10: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL4.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL4.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL4.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL4.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 10
sliceNames[10] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL15f";

// Process mask 11: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL15.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL15.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL15.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL15.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 11
sliceNames[11] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL81f";

// Process mask 12: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL81.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL81.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL81.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL81.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 12
sliceNames[12] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL39f";

// Process mask 13: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL39.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL39.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL39.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL39.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 13
sliceNames[13] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL78f";

// Process mask 14: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL78.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL78.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL78.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL78.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 14
sliceNames[14] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL79f";

// Process mask 15: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL79.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL79.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL79.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL79.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 15
sliceNames[15] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL38f";

// Process mask 16: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL38.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL38.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL38.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL38.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 16
sliceNames[16] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL80f";

// Process mask 17: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL80.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL80.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL80.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL80.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 17
sliceNames[17] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL14f";

// Process mask 18: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL14.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL14.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL14.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL14.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 18
sliceNames[18] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL5f";

// Process mask 19: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL5.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL5.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL5.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL5.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 19
sliceNames[19] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL43f";

// Process mask 20: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL43.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL43.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL43.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL43.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 20
sliceNames[20] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL55f";

// Process mask 21: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL55.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL55.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL55.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL55.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 21
sliceNames[21] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL75f";

// Process mask 22: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL75.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL75.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL75.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL75.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 22
sliceNames[22] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL22f";

// Process mask 23: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL22.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL22.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL22.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL22.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 23
sliceNames[23] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL34f";

// Process mask 24: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL34.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL34.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL34.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL34.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 24
sliceNames[24] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL63f";

// Process mask 25: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL63.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL63.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL63.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL63.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 25
sliceNames[25] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL18f";

// Process mask 26: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL18.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL18.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL18.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL18.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 26
sliceNames[26] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL9f";

// Process mask 27: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL9.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL9.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL9.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL9.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 27
sliceNames[27] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL59f";

// Process mask 28: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL59.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL59.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL59.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL59.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 28
sliceNames[28] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL52f";

// Process mask 29: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL52.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL52.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL52.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL52.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 29
sliceNames[29] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL44f";

// Process mask 30: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL44.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL44.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL44.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL44.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 30
sliceNames[30] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL2f";

// Process mask 31: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL2.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL2.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL2.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL2.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 31
sliceNames[31] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL13f";

// Process mask 32: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL13.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL13.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL13.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL13.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 32
sliceNames[32] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL87f";

// Process mask 33: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL87.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL87.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL87.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL87.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 33
sliceNames[33] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL68f";

// Process mask 34: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL68.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL68.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL68.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL68.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 34
sliceNames[34] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL29f";

// Process mask 35: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL29.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL29.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL29.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL29.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 35
sliceNames[35] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL48f";

// Process mask 36: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL48.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL48.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL48.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL48.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 36
sliceNames[36] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL64f";

// Process mask 37: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL64.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL64.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL64.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL64.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 37
sliceNames[37] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL33f";

// Process mask 38: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL33.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL33.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL33.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL33.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 38
sliceNames[38] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL25f";

// Process mask 39: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL25.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL25.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL25.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL25.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 39
sliceNames[39] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL72f";

// Process mask 40: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL72.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL72.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL72.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL72.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 40
sliceNames[40] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL73f";

// Process mask 41: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL73.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL73.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL73.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL73.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 41
sliceNames[41] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL24f";

// Process mask 42: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL24.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL24.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL24.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL24.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 42
sliceNames[42] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL32f";

// Process mask 43: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL32.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL32.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL32.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL32.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 43
sliceNames[43] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL65f";

// Process mask 44: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL65.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL65.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL65.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL65.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 44
sliceNames[44] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL49f";

// Process mask 45: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL49.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL49.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL49.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL49.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 45
sliceNames[45] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL90f";

// Process mask 46: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL90.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL90.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL90.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL90.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 46
sliceNames[46] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL28f";

// Process mask 47: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL28.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL28.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL28.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL28.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 47
sliceNames[47] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL86f";

// Process mask 48: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL86.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL86.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL86.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL86.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 48
sliceNames[48] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL69f";

// Process mask 49: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL69.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL69.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL69.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL69.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 49
sliceNames[49] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL12f";

// Process mask 50: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL12.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL12.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL12.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL12.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 50
sliceNames[50] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL3f";

// Process mask 51: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL3.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL3.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL3.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL3.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 51
sliceNames[51] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL45f";

// Process mask 52: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL45.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL45.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL45.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL45.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 52
sliceNames[52] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL53f";

// Process mask 53: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL53.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL53.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL53.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL53.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 53
sliceNames[53] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL85f";

// Process mask 54: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL85.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL85.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL85.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL85.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 54
sliceNames[54] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL11f";

// Process mask 55: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL11.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL11.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL11.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL11.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 55
sliceNames[55] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL46f";

// Process mask 56: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL46.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL46.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL46.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL46.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 56
sliceNames[56] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL50f";

// Process mask 57: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL50.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL50.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL50.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL50.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 57
sliceNames[57] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL70f";

// Process mask 58: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL70.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL70.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL70.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL70.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 58
sliceNames[58] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL27f";

// Process mask 59: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL27.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL27.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL27.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL27.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 59
sliceNames[59] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL31f";

// Process mask 60: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL31.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL31.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL31.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL31.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 60
sliceNames[60] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL66f";

// Process mask 61: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL66.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL66.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL66.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL66.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 61
sliceNames[61] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL89f";

// Process mask 62: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL89.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL89.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL89.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL89.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 62
sliceNames[62] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL67f";

// Process mask 63: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL67.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL67.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL67.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL67.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 63
sliceNames[63] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL88f";

// Process mask 64: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL88.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL88.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL88.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL88.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 64
sliceNames[64] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL30f";

// Process mask 65: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL30.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL30.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL30.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL30.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 65
sliceNames[65] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL26f";

// Process mask 66: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL26.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL26.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL26.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL26.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 66
sliceNames[66] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL71f";

// Process mask 67: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL71.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL71.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL71.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL71.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 67
sliceNames[67] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL51f";

// Process mask 68: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL51.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL51.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL51.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL51.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 68
sliceNames[68] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL47f";

// Process mask 69: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL47.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL47.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL47.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL47.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 69
sliceNames[69] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL1f";

// Process mask 70: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL1.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL1.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL1.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL1.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 70
sliceNames[70] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL10f";

// Process mask 71: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL10.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL10.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL10.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL10.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 71
sliceNames[71] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL84f";

// Process mask 72: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL84.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL84.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL84.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL84.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 72
sliceNames[72] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL76f";

// Process mask 73: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL76.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL76.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL76.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL76.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 73
sliceNames[73] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL21f";

// Process mask 74: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL21.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL21.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL21.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL21.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 74
sliceNames[74] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL37f";

// Process mask 75: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL37.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL37.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL37.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL37.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 75
sliceNames[75] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL60f";

// Process mask 76: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL60.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL60.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL60.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL60.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 76
sliceNames[76] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL83f";

// Process mask 77: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL83.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL83.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL83.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL83.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 77
sliceNames[77] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL17f";

// Process mask 78: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL17.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL17.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL17.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL17.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 78
sliceNames[78] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL6f";

// Process mask 79: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL6.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL6.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL6.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL6.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 79
sliceNames[79] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL40f";

// Process mask 80: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL40.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL40.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL40.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL40.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 80
sliceNames[80] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL56f";

// Process mask 81: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL56.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL56.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL56.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL56.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 81
sliceNames[81] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL57f";

// Process mask 82: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL57.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL57.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL57.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL57.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 82
sliceNames[82] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL41f";

// Process mask 83: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL41.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL41.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL41.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL41.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 83
sliceNames[83] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL7f";

// Process mask 84: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL7.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL7.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL7.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL7.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 84
sliceNames[84] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL16f";

// Process mask 85: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL16.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL16.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL16.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL16.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 85
sliceNames[85] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL82f";

// Process mask 86: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL82.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL82.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL82.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL82.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 86
sliceNames[86] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL61f";

// Process mask 87: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL61.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL61.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL61.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL61.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 87
sliceNames[87] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL36f";

// Process mask 88: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL36.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL36.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL36.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL36.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 88
sliceNames[88] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL20f";

// Process mask 89: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL20.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL20.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL20.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL20.tiff");

// Close all open images
while (nImages > 0) {
    selectImage(nImages);
    close();
}

// Store slice name at index 89
sliceNames[89] = "wtVAPB Wash40min A549_Merged_Processed001_t00_MASK_CELL77f";

// Process mask 90: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL77.tiff
print("ANALYSIS_START:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL77.tiff");
open("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL77.tiff");

// Run Analyze Particles with the exact specified parameters
run("Analyze Particles...", "size=0.10-Infinity summarize");

print("ANALYSIS_END:/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/masks/5-16-25 VAPB 40minWash IF A549/wtVAPB Wash40min A549_Merged_Processed001_t00/MASK_CELL77.tiff");

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
    print("Saving summary to: /Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/analysis/masks_5-16-25 VAPB 40minWash IF A549_wtVAPB Wash40min A549_Merged_Processed001_t00_summary.csv");
    Table.save("/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/analysis/masks_5-16-25 VAPB 40minWash IF A549_wtVAPB Wash40min A549_Merged_Processed001_t00_summary.csv", "Summary");
    close("Summary");
}

print("MACRO_COMPLETE");
setBatchMode(false);
run("Quit");
