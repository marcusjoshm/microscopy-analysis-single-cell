#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Group Cells by Expression Level Script for Single Cell Analysis Workflow

This script takes the individual cell images, groups them based on their 
expression level (using integrated intensity) with Gaussian Mixture Model clustering,
and creates summed images for each group.
"""

import os
import sys
import argparse
import logging
import glob
from pathlib import Path
import numpy as np
import cv2
from sklearn.mixture import GaussianMixture

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("CellGrouper")

def compute_auc(img):
    """
    Compute the area under the histogram curve of the image.
    Using integrated intensity (sum of pixel values) as a proxy for AUC.
    
    Args:
        img (numpy.ndarray): Input grayscale image
        
    Returns:
        float: The sum of all pixel values
    """
    return np.sum(img)

def find_cell_directories(cells_dir):
    """
    Find all directories containing cell images.
    
    Args:
        cells_dir (str): Base directory containing cell subdirectories
        
    Returns:
        list: List of tuples (condition_name, region_dir_path)
    """
    cell_dirs = []
    
    # Find all condition directories (first level)
    for condition_dir in Path(cells_dir).glob("*"):
        if not condition_dir.is_dir() or condition_dir.name.startswith('.'):
            continue
            
        condition_name = condition_dir.name
        
        # Find all region/timepoint directories within each condition
        for region_dir in condition_dir.glob("*"):
            if not region_dir.is_dir() or region_dir.name.startswith('.'):
                continue
                
            # Check if this directory contains cell images
            cell_images = list(region_dir.glob("CELL*.tif"))
            if cell_images:
                cell_dirs.append((condition_name, region_dir))
    
    return cell_dirs

def group_and_sum_cells(cell_dir, output_dir, num_bins):
    """
    Group cell images by expression level and create summed images.
    
    Args:
        cell_dir (Path): Directory containing cell images
        output_dir (Path): Directory to save output summed images
        num_bins (int): Number of groups to cluster cells into
        
    Returns:
        bool: True if successful, False otherwise
    """
    # Get all cell image files
    image_files = list(cell_dir.glob("CELL*.tif"))
    
    if not image_files:
        logger.warning(f"No cell images found in {cell_dir}")
        return False
    
    logger.info(f"Processing {len(image_files)} cells from {cell_dir}")
    
    # List to store tuples of (filename, auc, image)
    image_data = []
    for image_file in image_files:
        img = cv2.imread(str(image_file), cv2.IMREAD_GRAYSCALE)
        if img is None:
            logger.warning(f"Unable to read {image_file}. Skipping.")
            continue
        auc_value = compute_auc(img)
        image_data.append((str(image_file), auc_value, img))
    
    if not image_data:
        logger.warning(f"No valid images to process in {cell_dir}")
        return False
    
    # Prepare an array of AUC values for GMM clustering
    auc_values = np.array([data[1] for data in image_data]).reshape(-1, 1)
    
    # Ensure we don't try to create more clusters than we have samples
    actual_num_bins = min(num_bins, len(auc_values))
    if actual_num_bins < num_bins:
        logger.warning(f"Reducing bins from {num_bins} to {actual_num_bins} due to limited samples")
    
    # Fit Gaussian Mixture Model to cluster images based on AUC
    gmm = GaussianMixture(n_components=actual_num_bins, random_state=0)
    gmm.fit(auc_values)
    labels = gmm.predict(auc_values)
    
    # Remap cluster labels so that they are ordered by increasing AUC
    cluster_means = {}
    for label in range(actual_num_bins):
        cluster_values = auc_values[labels == label]
        if len(cluster_values) > 0:
            cluster_means[label] = cluster_values.mean()
        else:
            cluster_means[label] = float('inf')
    sorted_clusters = sorted(cluster_means, key=lambda k: cluster_means[k])
    label_mapping = {old_label: new_label for new_label, old_label in enumerate(sorted_clusters)}
    
    # Initialize list to hold summed images for each group
    sum_images = [None] * actual_num_bins
    cell_counts = [0] * actual_num_bins
    
    # Group images using the mapped labels and sum them
    for idx, (filename, auc_value, img) in enumerate(image_data):
        original_label = labels[idx]
        mapped_label = label_mapping[original_label]
        if sum_images[mapped_label] is None:
            sum_images[mapped_label] = np.zeros_like(img, dtype=np.float64)
        sum_images[mapped_label] += img.astype(np.float64)
        cell_counts[mapped_label] += 1
    
    # Create output directory if it doesn't exist
    output_subdir = output_dir / cell_dir.parent.name / cell_dir.name
    output_subdir.mkdir(parents=True, exist_ok=True)
    
    # Save the summed images as 16-bit TIFF files
    for i, sum_img in enumerate(sum_images):
        if sum_img is None:
            logger.warning(f"No images in group {i+1}")
            continue
        
        # Normalize the summed image to 0-65535 for a 16-bit image
        norm_img = cv2.normalize(sum_img, None, 0, 65535, cv2.NORM_MINMAX)
        norm_img = norm_img.astype(np.uint16)
        
        output_file = output_subdir / f"{cell_dir.name}_bin_{i+1}_n{cell_counts[i]}.tif"
        cv2.imwrite(str(output_file), norm_img)
        logger.info(f"Saved summed image for group {i+1} with {cell_counts[i]} cells: {output_file}")
    
    # Save a text file with information about the grouping
    with open(output_subdir / f"{cell_dir.name}_grouping_info.txt", 'w') as f:
        f.write(f"Cell directory: {cell_dir}\n")
        f.write(f"Number of cells: {len(image_data)}\n")
        f.write(f"Number of groups: {actual_num_bins}\n\n")
        
        for i in range(actual_num_bins):
            f.write(f"Group {i+1}:\n")
            f.write(f"  Cells: {cell_counts[i]}\n")
            if i in cluster_means:
                f.write(f"  Mean intensity: {cluster_means[sorted_clusters[i]]:.2f}\n")
            f.write("\n")
    
    return True

def main():
    """Main function to group cells by expression level."""
    parser = argparse.ArgumentParser(description='Group cells by expression level using GMM clustering')
    
    parser.add_argument('--cells-dir', '-c', required=True,
                        help='Directory containing cell images (output from extract_cells.py)')
    parser.add_argument('--output-dir', '-o', required=True,
                        help='Directory to save grouped cell images')
    parser.add_argument('--bins', '-b', type=int, default=3,
                        help='Number of groups to cluster cells into (default: 3)')
    
    args = parser.parse_args()
    
    cells_dir = Path(args.cells_dir)
    output_dir = Path(args.output_dir)
    
    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Find all directories containing cell images
    cell_dirs = find_cell_directories(cells_dir)
    
    if not cell_dirs:
        logger.error(f"No cell directories found in {cells_dir}")
        return 1
    
    logger.info(f"Found {len(cell_dirs)} cell directories to process")
    
    # Process each cell directory
    successful = 0
    for condition_name, cell_dir in cell_dirs:
        logger.info(f"Processing {condition_name} - {cell_dir.name}")
        if group_and_sum_cells(cell_dir, output_dir, args.bins):
            successful += 1
    
    logger.info(f"Successfully processed {successful} out of {len(cell_dirs)} cell directories")
    
    if successful == 0:
        logger.error("No cell directories were successfully processed")
        return 1
    
    return 0

if __name__ == "__main__":
    sys.exit(main())