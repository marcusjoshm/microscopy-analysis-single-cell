
    // Otsu thresholding macro for grouped cell bin images
    input_dir = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/grouped_cells";
    output_dir = "/Volumes/NX-01-A/2025-06-10_analysis_TEST/grouped_masks";
    
    // Create output directory if it doesn't exist
    File.makeDirectory(output_dir);
    
    // Get list of condition directories
    condition_list = getFileList(input_dir);
    
    // Process each condition directory
    for (c = 0; c < condition_list.length; c++) {
        condition_name = condition_list[c];
        
        // Skip files, only process directories
        if (!File.isDirectory(input_dir + File.separator + condition_name)) {
            continue;
        }
        
        condition_path = input_dir + File.separator + condition_name;
        
        // Get list of region/channel/timepoint directories
        region_list = getFileList(condition_path);
        
        // Process each region directory
        for (r = 0; r < region_list.length; r++) {
            region_name = region_list[r];
            
            // Skip files, only process directories
            if (!File.isDirectory(condition_path + File.separator + region_name)) {
                continue;
            }
            
            
        // Check if this directory matches any of the specified channels
        channel_match = false;
        if (indexOf(region_name, "ch00") >= 0 || indexOf(region_name, "ch02") >= 0) {
            channel_match = true;
        }
        if (!channel_match) {
            continue; // Skip this directory if it doesn't match specified channels
        }
        
            
            region_path = condition_path + File.separator + region_name;
            
            // Get list of files in this region directory
            file_list = getFileList(region_path);
            
            // Process only the bin image files
            for (f = 0; f < file_list.length; f++) {
                file_name = file_list[f];
                
                // Process only bin TIFF files (skip CSV and txt files)
                if (endsWith(file_name, ".tif") && indexOf(file_name, "_bin_") >= 0) {
                    // Open image
                    file_path = region_path + File.separator + file_name;
                    open(file_path);
                    
                    // Get image name without extension
                    image_name = replace(file_name, ".tif", "");
                    
                    // Apply Otsu thresholding
                    run("Auto Threshold", "method=Otsu");
                    
                    // Create corresponding output directory structure
                    output_condition_dir = output_dir + File.separator + condition_name;
                    File.makeDirectory(output_condition_dir);
                    
                    output_region_dir = output_condition_dir + File.separator + region_name;
                    File.makeDirectory(output_region_dir);
                    
                    // Save thresholded image with MASK_ prefix
                    output_path = output_region_dir + File.separator + "MASK_" + image_name + ".tif";
                    saveAs("Tiff", output_path);
                    
                    // Close image
                    close();
                    
                    print("Processed: " + file_path + " -> " + output_path);
                }
            }
        }
    }
    
    print("Otsu thresholding completed for all specified channels.");
    
    // Close ImageJ if auto_close is enabled
    if (false) {
        eval("script", "System.exit(0);");
    }
    