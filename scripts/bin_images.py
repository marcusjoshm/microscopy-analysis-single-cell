#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Bin microscopy images for cell segmentation.

This script recursively searches for t00_ch01.tif and t03_ch01.tif files in the specified
input directory, performs 4x4 binning and contrast enhancement, and saves the processed 
images to the output directory.
"""

import os
import argparse
import glob
from pathlib import Path
import numpy as np
from skimage import io, exposure
from skimage.transform import downscale_local_mean
import tifffile


def bin_image(image, bin_factor=4):
    """
    Bin an image by the specified factor using local mean.
    
    Args:
        image (numpy.ndarray): Input image
        bin_factor (int): Binning factor
        
    Returns:
        numpy.ndarray: Binned image
    """
    return downscale_local_mean(image, (bin_factor, bin_factor))


# Contrast enhancement function removed as requested


def process_images(input_dir, output_dir, bin_factor=4):
    """
    Process images in input directory and save to output directory.
    
    Args:
        input_dir (str): Input directory path
        output_dir (str): Output directory path
        bin_factor (int): Binning factor
        percentile (float): Percentage for contrast enhancement
    """
    input_path = Path(input_dir)
    output_path = Path(output_dir)
    
    # Create output directory if it doesn't exist
    output_path.mkdir(parents=True, exist_ok=True)
    
    # Find all t00_ch01.tif and t03_ch01.tif files recursively
    pattern1 = f"{input_path}/**/*t00_ch01.tif"
    pattern2 = f"{input_path}/**/*t03_ch01.tif"
    
    # Combine files from both patterns
    files = list(glob.glob(pattern1, recursive=True)) + list(glob.glob(pattern2, recursive=True))
    
    print(f"Found {len(files)} files to process.")
    
    for file_path in files:
        # Convert to Path object for easier manipulation
        file_path = Path(file_path)
        
        # Determine relative path to maintain directory structure
        rel_path = file_path.relative_to(input_path)
        output_file = output_path / rel_path.parent / f"bin4x4_{file_path.name}"
        
        # Create output directory if it doesn't exist
        output_file.parent.mkdir(parents=True, exist_ok=True)
        
        print(f"Processing {file_path}...")
        
        # Read the image
        image = io.imread(file_path)
        
        # Bin the image
        binned_image = bin_image(image, bin_factor=bin_factor)
        
        # Save the processed image (contrast enhancement removed)
        tifffile.imwrite(output_file, binned_image.astype(image.dtype))
        
        print(f"Saved to {output_file}")
    
    print("Image binning completed.")


def main():
    parser = argparse.ArgumentParser(description="Bin microscopy images for cell segmentation")
    parser.add_argument("--input", "-i", required=True, help="Input directory containing raw image data")
    parser.add_argument("--output", "-o", required=True, help="Output directory for binned images")
    parser.add_argument("--bin-factor", "-b", type=int, default=4, help="Binning factor (default: 4)")
    # Percentile parameter removed as contrast enhancement is no longer needed
    
    args = parser.parse_args()
    
    process_images(args.input, args.output, args.bin_factor)


if __name__ == "__main__":
    main()