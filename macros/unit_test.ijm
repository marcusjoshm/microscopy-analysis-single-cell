// Enable batch mode
setBatchMode(true);

// Set paths - adjust these for your actual paths
inputMaskPath = "/Volumes/NX-01-A/2025-04-15_analysis_Dish_1/combined_masks/Dish_1_DMSO_+_Washout_+_DMSO/MASK_R_1_t00.tif";
outputPath = "/Volumes/NX-01-A/2025-04-15_analysis_Dish_1/test_scale_preservation.tiff";

// Open the mask image
print("Opening mask file: " + inputMaskPath);
open(inputMaskPath);

// Check if opened
if (nImages == 0) {
    print("ERROR: Failed to open image");
    exit();
}

// Get the original scale information
getPixelSize(unit, pixelWidth, pixelHeight);
print("Original scale: pixelWidth = " + pixelWidth + " " + unit + "/pixel");
print("Original scale: pixelHeight = " + pixelHeight + " " + unit + "/pixel");

// Duplicate the image
run("Duplicate...", "title=test_image");

// Check the scale on the duplicate
getPixelSize(unit2, pixelWidth2, pixelHeight2);
print("Duplicate scale: pixelWidth = " + pixelWidth2 + " " + unit2 + "/pixel");
print("Duplicate scale: pixelHeight = " + pixelHeight2 + " " + unit2 + "/pixel");

// Save the duplicate using native saveAs
print("Saving to: " + outputPath);
saveAs("Tiff", outputPath);

// Close everything and exit
close("*");
print("Test complete."); 