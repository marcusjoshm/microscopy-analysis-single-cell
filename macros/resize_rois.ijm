// Resize ROIs Macro for Single Cell Analysis Workflow
// This macro takes ROIs from the preprocessed directory, resizes them to match the original images,
// and saves them to the ROI directory.

// Get input and output directories from macro arguments
#@ String input_dir
#@ String output_dir

// Enable batch mode for headless operation
setBatchMode(true);

// ----- Helper Functions -----
function endsWith(str, suffix) {
    result = substring(str, lengthOf(str) - lengthOf(suffix), lengthOf(str));
    if (result == suffix)
        return 1;
    else
        return 0;
}

function startsWith(str, prefix) {
    result = substring(str, 0, lengthOf(prefix));
    if (result == prefix)
        return 1;
    else
        return 0;
}

// Use provided directories or default
if (input_dir == "") {
    exit("Error: Input directory not specified");
}

if (output_dir == "") {
    exit("Error: Output directory not specified");
}

// Ensure output directory exists
if (!File.exists(output_dir)) {
    File.makeDirectory(output_dir);
}

// Strip trailing slashes if present
if (endsWith(input_dir, "/")) {
    input_dir = substring(input_dir, 0, lengthOf(input_dir)-1);
}
if (endsWith(output_dir, "/")) {
    output_dir = substring(output_dir, 0, lengthOf(output_dir)-1);
}

print("Input directory: " + input_dir);
print("Output directory: " + output_dir);

// Define the regions and timepoints to process, or scan for them automatically
regions = newArray("R_1", "R_2", "R_3");
timepoints = newArray("t00", "t03");

// Process all condition directories in input directory
condition_dirs = getFileList(input_dir);
num_processed = 0;

for (c = 0; c < condition_dirs.length; c++) {
    condition_name = condition_dirs[c];

    // Skip non-directories and hidden folders
    if (!File.isDirectory(input_dir + "/" + condition_name) || indexOf(condition_name, ".") == 0) {
        continue;
    }

    condition_path = input_dir + "/" + condition_name;
    print("Processing condition: " + condition_name);

    // Create corresponding output directory
    output_condition_dir = output_dir + "/" + condition_name;
    if (!File.exists(output_condition_dir)) {
        File.makeDirectory(output_condition_dir);
    }

    // Look for the "45-60min_washout" subdirectory
    subdirs = getFileList(condition_path);
    washout_dir = "";
    for (s = 0; s < subdirs.length; s++) {
        if (endsWith(subdirs[s], "/") && indexOf(subdirs[s], "washout") >= 0) {
            washout_dir = subdirs[s];
            break;
        }
    }

    if (washout_dir == "") {
        print("No washout directory found in " + condition_name);
        continue;
    }

    // Full path to the washout directory
    washout_path = condition_path + "/" + washout_dir;
    print("Found washout directory: " + washout_path);

    // Get all files in the washout directory
    washout_files = getFileList(washout_path);

    // Loop through all regions and timepoints
    for (r = 0; r < regions.length; r++) {
        for (t = 0; t < timepoints.length; t++) {
            region = regions[r];
            tp = timepoints[t];
            
            // Look for ROI files that match the pattern
            roi_file = "";
            for (i = 0; i < washout_files.length; i++) {
                file_name = washout_files[i];
                if (endsWith(file_name, "_rois.zip") && 
                    indexOf(file_name, region) != -1 && 
                    indexOf(file_name, tp) != -1) {
                    roi_file = file_name;
                    break;
                }
            }

            if (roi_file == "") {
                print("No ROI zip file found for " + condition_name + " " + region + " " + tp);
                continue;
            }

            // Find corresponding image file
            base_name = substring(roi_file, 0, indexOf(roi_file, "_rois.zip"));
            image_file = base_name + ".tif";
            image_path = washout_path + "/" + image_file;

            if (!File.exists(image_path)) {
                print("Image file not found: " + image_path);
                continue;
            }

            roi_path = washout_path + "/" + roi_file;
            
            // Create output ROI file name
            // Remove 'bin4x4_' prefix if present
            if (startsWith(base_name, "bin4x4_")) {
                new_base_name = substring(base_name, lengthOf("bin4x4_"), lengthOf(base_name));
            } else {
                new_base_name = base_name;
            }
            
            new_roi_file = "ROIs_" + new_base_name + "_rois.zip";
            new_roi_path = output_condition_dir + "/" + new_roi_file;

            print("Processing: " + region + " - " + tp);
            print("  ROI file: " + roi_path);
            print("  Image file: " + image_path);
            print("  Output ROI file: " + new_roi_path);

            // ----- Process the Image and ROIs -----
            print("  Opening image: " + image_path);
            open(image_path);
            image_title = getTitle();

            print("  Opening ROI file: " + roi_path);
            // Use batch mode to avoid headless exceptions
            setBatchMode(true);
            
            // Initialize ROI Manager without a GUI
            roiManager("reset");
            
            // Open ROIs
            roiManager("open", roi_path);

            num_original_rois = roiManager("count");
            print("  Found " + num_original_rois + " ROIs to process");

            for (j = 0; j < num_original_rois; j++) {
                // Select the input image and ROI
                selectWindow(image_title);
                // Duplicate the image and create a mask
                run("Duplicate...", "title=makeMask");
                selectWindow("makeMask");
                roiManager("Select", j);

                // Create a mask from the ROI
                run("Create Mask");
                
                // Resize the mask to match original image (4x larger since we binned 4x4)
                orig_width = getWidth();
                orig_height = getHeight();
                new_width = orig_width * 4;
                new_height = orig_height * 4;
                run("Size...", "width=" + new_width + " height=" + new_height + " interpolation=None");

                // Create a selection from the resized mask
                run("Create Selection");
                roiManager("Add");

                // Close the duplicate and mask windows
                close(); // Close mask
                close(); // Close duplicate
            }

            // Remove the original ROIs (they're at the beginning of the list)
            for (j = 0; j < num_original_rois; j++) {
                roiManager("Select", 0);
                roiManager("Delete");
            }

            // Save the new ROIs
            print("  Saving " + (roiManager("count")) + " resized ROIs to: " + new_roi_path);
            roiManager("Save", new_roi_path);
            
            // Close the image
            selectWindow(image_title);
            close();
            
            // Reset ROI Manager for next round
            roiManager("reset");
            
            // Turn off batch mode
            setBatchMode(false);
            
            num_processed++;
        }
    }
}

print("Completed processing " + num_processed + " ROI files");
print("Resized ROIs saved to " + output_dir);

// Turn off batch mode
setBatchMode(false);