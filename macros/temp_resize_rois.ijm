
// Resize ROIs Macro for Single Cell Analysis Workflow
// Input and output directories
input_dir = "/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/preprocessed";
output_dir = "/Users/leelab/Documents/2025-05-16_analysis_Control_WT-VAPB_40minWash_/ROIs";

print("Input directory: " + input_dir);
print("Output directory: " + output_dir);

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

    // Get all subdirectories in the condition directory
    subdirs = getFileList(condition_path);
    
    // Process each subdirectory
    for (s = 0; s < subdirs.length; s++) {
        subdir = subdirs[s];
        if (!File.isDirectory(condition_path + "/" + subdir) || indexOf(subdir, ".") == 0) {
            continue;
        }

        // Full path to the subdirectory
        subdir_path = condition_path + "/" + subdir;
        print("Processing subdirectory: " + subdir_path);

        // Get all ROI zip files in the subdirectory
        subdir_files = getFileList(subdir_path);
        for (i = 0; i < subdir_files.length; i++) {
            roi_file = subdir_files[i];
            
            // Process only files ending with _rois.zip
            if (!endsWith(roi_file, "_rois.zip")) {
                continue;
            }

            // Find corresponding image file
            base_name = substring(roi_file, 0, indexOf(roi_file, "_rois.zip"));
            image_file = base_name + ".tif";
            image_path = subdir_path + "/" + image_file;

            if (!File.exists(image_path)) {
                print("Image file not found: " + image_path);
                continue;
            }

            roi_path = subdir_path + "/" + roi_file;
            
            // Create output ROI file name
            // Remove 'bin4x4_' prefix if present
            if (startsWith(base_name, "bin4x4_")) {
                new_base_name = substring(base_name, lengthOf("bin4x4_"), lengthOf(base_name));
            } else {
                new_base_name = base_name;
            }
            
            new_roi_file = "ROIs_" + new_base_name + "_rois.zip";
            new_roi_path = output_condition_dir + "/" + new_roi_file;

            print("Processing: " + base_name);
            print("  ROI file: " + roi_path);
            print("  Image file: " + image_path);
            print("  Output ROI file: " + new_roi_path);

            // ----- Process the Image and ROIs -----
            print("  Opening image: " + image_path);
            open(image_path);
            image_title = getTitle();
            
            // No transformations needed - Cellpose invocation method fixed the orientation issue
            print("  Image dimensions: " + getWidth() + " x " + getHeight());
            
            print("  Opening ROI file: " + roi_path);
            // Initialize ROI Manager
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
            
            // Close the original binned image
            selectWindow(image_title);
            close();
            
            // Reset ROI Manager for next round
            roiManager("reset");
            
            num_processed++;
        }
    }
}

print("Completed processing " + num_processed + " ROI files");
print("Resized ROIs saved to " + output_dir);
    
// Close ImageJ when done
eval("script", "System.exit(0);");
