// ImageJ macro for analyzing cell masks
// This macro processes segmented cell masks to extract measurements and features

// Set batch mode to speed up processing
setBatchMode(true);

// Function to get parameters from arguments
function getArgument(args, key) {
    // Parse argument string (format: key1=value1 key2=value2)
    args = split(args, " ");
    for (i = 0; i < args.length; i++) {
        arg = split(args[i], "=");
        if (arg[0] == key) {
            return arg[1];
        }
    }
    return "";
}

// Get parameters from macro arguments
args = getArgument();
input_dir = getArgument(args, "input_dir");
output_dir = getArgument(args, "output_dir");
regions = getArgument(args, "regions");
timepoints = getArgument(args, "timepoints");

// Default values if not provided
if (input_dir == "") input_dir = getDirectory("Choose input masks directory");
if (output_dir == "") output_dir = getDirectory("Choose output directory");

// Parse regions and timepoints if provided
regions_array = newArray();
if (regions != "") {
    regions_array = split(regions, ",");
}

timepoints_array = newArray();
if (timepoints != "") {
    timepoints_array = split(timepoints, ",");
}

// Process all conditions if no specific regions/timepoints provided
conditions = getFileList(input_dir);

// Log macro start
print("Starting mask analysis macro");
print("Input directory: " + input_dir);
print("Output directory: " + output_dir);
if (regions != "") print("Regions to process: " + regions);
if (timepoints != "") print("Timepoints to process: " + timepoints);

// Create output directory if it doesn't exist
File.makeDirectory(output_dir);

// Process each condition
for (i = 0; i < conditions.length; i++) {
    condition_name = conditions[i];
    // Skip non-directories and hidden files
    if (!File.isDirectory(input_dir + condition_name) || startsWith(condition_name, ".")) {
        continue;
    }
    
    condition_dir = input_dir + condition_name;
    print("Processing condition: " + condition_name);
    
    // Create corresponding output directory
    File.makeDirectory(output_dir + condition_name);
    
    // Find all mask files - either process all or filter by region/timepoint
    mask_files = getFileList(condition_dir);
    
    for (j = 0; j < mask_files.length; j++) {
        mask_file = mask_files[j];
        
        // Check if it's a file and a mask file
        if (!endsWith(mask_file, ".tif") && !endsWith(mask_file, ".tiff")) {
            continue;
        }
        
        // If regions specified, check if this file matches
        if (regions_array.length > 0) {
            matches_region = false;
            for (k = 0; k < regions_array.length; k++) {
                if (indexOf(mask_file, regions_array[k]) >= 0) {
                    matches_region = true;
                    break;
                }
            }
            if (!matches_region) continue;
        }
        
        // If timepoints specified, check if this file matches
        if (timepoints_array.length > 0) {
            matches_timepoint = false;
            for (k = 0; k < timepoints_array.length; k++) {
                if (indexOf(mask_file, timepoints_array[k]) >= 0) {
                    matches_timepoint = true;
                    break;
                }
            }
            if (!matches_timepoint) continue;
        }
        
        // Process the mask file
        print("  Processing mask: " + mask_file);
        
        // Open the mask image
        open(condition_dir + mask_file);
        original_id = getImageID();
        
        // Get base filename without extension for saving results
        dot_index = lastIndexOf(mask_file, ".");
        base_name = substring(mask_file, 0, dot_index);
        
        // Create duplicates for processing
        run("Duplicate...", "title=watershed");
        watershed_id = getImageID();
        
        // Apply watershed algorithm to separate touching cells
        run("Watershed");
        
        // Set measurements to perform
        run("Set Measurements...", "area mean standard modal min centroid center perimeter bounding fit shape feret's integrated median skewness kurtosis area_fraction stack redirect=None decimal=3");
        
        // Analyze particles to get measurements
        run("Analyze Particles...", "size=50-Infinity pixel show=Masks display clear include summarize");
        
        // Get the results table
        results_count = nResults;
        print("    Found " + results_count + " cells");
        
        // Save results table
        saveAs("Results", output_dir + condition_name + "/" + base_name + "_measurements.csv");
        
        // Save the watershed mask
        selectImage(watershed_id);
        saveAs("Tiff", output_dir + condition_name + "/" + base_name + "_watershed.tif");
        
        // Save the ROIs if any were created
        if (results_count > 0) {
            roiManager("Save", output_dir + condition_name + "/" + base_name + "_ROIs.zip");
            roiManager("Reset");
        }
        
        // Close all open images
        close("*");
    }
}

// Exit batch mode
setBatchMode(false);

print("Mask analysis complete!");