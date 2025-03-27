#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Cell Tracking Script for Single-Cell Analysis Workflow

This script matches ROIs between two time points by finding the optimal assignment
that minimizes the total distance between cell centroids. It reorders the ROIs in the 
second time point to match the order of ROIs in the first time point, which allows for
tracking the same cells across multiple time points.

The script can be run in two modes:
1. Individual file mode: Match ROIs between two specific files
2. Batch mode: Process all matching ROI files in a directory
"""

import os
import sys
import glob
import argparse
import numpy as np
import zipfile
from scipy.optimize import linear_sum_assignment
from read_roi import read_roi_zip
import logging
from pathlib import Path
import re

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger("ROITracker")

def load_roi_dict(zip_file_path):
    """
    Load ROI dictionaries from an ImageJ ROI .zip file using read_roi_zip.
    Returns a dictionary mapping ROI file names (without extension) to ROI dictionaries.
    
    Args:
        zip_file_path (str): Path to the ROI zip file
        
    Returns:
        dict: Dictionary mapping ROI names to ROI dictionaries
    """
    try:
        return read_roi_zip(zip_file_path)
    except Exception as e:
        logger.error(f"Error loading ROI file {zip_file_path}: {e}")
        return None

def load_roi_bytes(zip_file_path):
    """
    Load raw ROI file bytes from an ImageJ ROI .zip file.
    Returns a dictionary mapping ROI file names (without extension) to raw bytes.
    
    Args:
        zip_file_path (str): Path to the ROI zip file
        
    Returns:
        dict: Dictionary mapping ROI names to raw bytes
    """
    roi_bytes = {}
    try:
        with zipfile.ZipFile(zip_file_path, 'r') as z:
            for name in z.namelist():
                # Remove '.roi' extension (case-insensitive) if present
                key = name
                if name.lower().endswith('.roi'):
                    key = name[:-4]
                roi_bytes[key] = z.read(name)
        return roi_bytes
    except Exception as e:
        logger.error(f"Error loading ROI bytes from {zip_file_path}: {e}")
        return None

def polygon_centroid(x, y):
    """
    Compute the centroid of a polygon given vertex coordinate lists x and y.
    Uses the shoelace formula; if the computed area is nearly zero, falls back to arithmetic mean.
    Assumes the polygon is closed (first vertex == last vertex).
    
    Args:
        x (list): List of x-coordinates
        y (list): List of y-coordinates
        
    Returns:
        tuple: (x, y) coordinates of the centroid
    """
    A = 0.0
    Cx = 0.0
    Cy = 0.0
    n = len(x) - 1  # because the polygon is closed
    for i in range(n):
        cross = x[i] * y[i+1] - x[i+1] * y[i]
        A += cross
        Cx += (x[i] + x[i+1]) * cross
        Cy += (y[i] + y[i+1]) * cross
    A *= 0.5
    if abs(A) < 1e-8:
        return (sum(x[:-1]) / n, sum(y[:-1]) / n)
    Cx /= (6 * A)
    Cy /= (6 * A)
    return (Cx, Cy)

def get_roi_center(roi):
    """
    Compute the centroid of an ROI dictionary.
    
    If the ROI contains 'x' and 'y' keys (lists of vertex coordinates), compute the centroid using the shoelace formula.
    Otherwise, fall back to rectangular ROI parameters if available.
    
    Args:
        roi (dict): ROI dictionary from read_roi_zip
        
    Returns:
        tuple: (x, y) coordinates of the ROI center
        
    Raises:
        ValueError: If the ROI dictionary does not have expected keys
    """
    if 'x' in roi and 'y' in roi:
        x = list(roi['x'])
        y = list(roi['y'])
        # Ensure the polygon is closed
        if x[0] != x[-1] or y[0] != y[-1]:
            x.append(x[0])
            y.append(y[0])
        return polygon_centroid(x, y)
    elif all(k in roi for k in ['left', 'top', 'width', 'height']):
        return (roi['left'] + roi['width'] / 2, roi['top'] + roi['height'] / 2)
    elif all(k in roi for k in ['left', 'top', 'right', 'bottom']):
        w = roi['right'] - roi['left']
        h = roi['bottom'] - roi['top']
        return (roi['left'] + w / 2, roi['top'] + h / 2)
    else:
        raise ValueError("ROI dictionary does not have expected keys.")

def match_rois(roi_list1, roi_list2):
    """
    Given two lists of ROI dictionaries, compute the optimal matching indices (for roi_list2)
    that minimizes the total Euclidean distance between centroids.
    
    Args:
        roi_list1 (list): List of ROI dictionaries for first time point
        roi_list2 (list): List of ROI dictionaries for second time point
        
    Returns:
        list: List of indices that map ROIs in roi_list2 to match roi_list1
    """
    n1 = len(roi_list1)
    n2 = len(roi_list2)
    
    # If the lists have different lengths, use the smaller one as the size
    # and only match that many ROIs
    n = min(n1, n2)
    
    # Use a subset of ROIs if necessary
    roi_subset1 = roi_list1[:n]
    roi_subset2 = roi_list2[:n]
    
    cost_matrix = np.zeros((n, n))
    centers1 = [get_roi_center(roi) for roi in roi_subset1]
    centers2 = [get_roi_center(roi) for roi in roi_subset2]
    
    for i in range(n):
        for j in range(n):
            cost_matrix[i, j] = np.linalg.norm(np.array(centers1[i]) - np.array(centers2[j]))
    
    row_ind, col_ind = linear_sum_assignment(cost_matrix)
    
    # If the second list is longer, pad the matching with additional indices
    if n2 > n1:
        extra_indices = list(range(n, n2))
        return list(col_ind) + extra_indices
    
    return col_ind

def save_zip_from_bytes(roi_bytes_list, output_zip_path):
    """
    Save a list of raw ROI bytes to a zip file.
    Each ROI file is written with a sequential name (e.g. ROI_001.roi).
    
    Args:
        roi_bytes_list (list): List of raw ROI byte data
        output_zip_path (str): Path to save the zip file
    """
    try:
        with zipfile.ZipFile(output_zip_path, 'w') as z:
            for i, data in enumerate(roi_bytes_list):
                name = f"ROI_{i+1:03d}.roi"
                z.writestr(name, data)
        logger.info(f"Saved reordered ROIs to {output_zip_path}")
    except Exception as e:
        logger.error(f"Error saving zip file {output_zip_path}: {e}")
        return False
    return True

def process_roi_pair(zip_file1, zip_file2):
    """
    Process a pair of ROI zip files, reordering the second to match the first.
    
    Args:
        zip_file1 (str): Path to the first ROI zip file (reference)
        zip_file2 (str): Path to the second ROI zip file (to be reordered)
        
    Returns:
        bool: True if successful, False otherwise
    """
    logger.info(f"Processing ROI pair: {os.path.basename(zip_file1)} -> {os.path.basename(zip_file2)}")
    
    # Load ROI dictionaries from each zip file
    roi_dict1 = load_roi_dict(zip_file1)
    roi_dict2 = load_roi_dict(zip_file2)
    
    if roi_dict1 is None or roi_dict2 is None:
        logger.error("Failed to load ROI dictionaries.")
        return False
    
    # Load raw ROI file bytes from the second zip file
    roi_bytes2 = load_roi_bytes(zip_file2)
    
    if roi_bytes2 is None:
        logger.error("Failed to load ROI bytes.")
        return False
    
    # Convert dictionaries to lists while preserving the ROI file names
    roi_items1 = list(roi_dict1.items())  # list of (filename, roi_dict)
    roi_items2 = list(roi_dict2.items())
    
    # Extract ROI dictionaries and file names
    rois1 = [item[1] for item in roi_items1]
    rois2 = [item[1] for item in roi_items2]
    names2 = [item[0] for item in roi_items2]
    
    logger.info(f"Found {len(rois1)} ROIs in first file and {len(rois2)} ROIs in second file")
    
    if len(rois1) == 0 or len(rois2) == 0:
        logger.error("One or both ROI files contain no ROIs")
        return False
    
    # Compute matching: get indices for rois2 that best match rois1
    matching_indices = match_rois(rois1, rois2)
    
    # Reorder the raw bytes from the second zip using the matching
    reordered_bytes = []
    for idx in matching_indices:
        if idx < len(names2):  # Ensure index is valid
            key = names2[idx]
            reordered_bytes.append(roi_bytes2[key])
    
    # Make a backup of the original file
    backup_file = zip_file2 + ".bak"
    try:
        if not os.path.exists(backup_file):
            os.replace(zip_file2, backup_file)
            logger.info(f"Created backup: {backup_file}")
    except Exception as e:
        logger.error(f"Failed to create backup file: {e}")
        return False
    
    # Save over the second zip file
    return save_zip_from_bytes(reordered_bytes, zip_file2)

def find_matching_roi_files(directory, pattern_t0="*t00*_rois.zip", pattern_t1="*t03*_rois.zip"):
    """
    Find matching pairs of ROI files in a directory.
    
    Args:
        directory (str): Directory to search
        pattern_t0 (str): Glob pattern for the first time point
        pattern_t1 (str): Glob pattern for the second time point
        
    Returns:
        list: List of tuples (t0_file, t1_file) with matching ROI files
    """
    # First, get all ROI files
    t0_files = glob.glob(os.path.join(directory, pattern_t0))
    t1_files = glob.glob(os.path.join(directory, pattern_t1))
    
    # Group files by region and condition
    pairs = []
    for t0_file in t0_files:
        t0_name = os.path.basename(t0_file)
        # Replace t00 with t03 to find the matching t1 file
        expected_t1_name = t0_name.replace("t00", "t03")
        t1_file = os.path.join(os.path.dirname(t0_file), expected_t1_name)
        
        if os.path.exists(t1_file):
            pairs.append((t0_file, t1_file))
    
    return pairs

def find_roi_files_recursive(directory, t0_pattern="*t00*_rois.zip", t1_pattern="*t03*_rois.zip"):
    """
    Recursively find matching pairs of ROI files in a directory and all subdirectories.
    
    Args:
        directory (str): Root directory to search
        t0_pattern (str): Glob pattern for the first time point
        t1_pattern (str): Glob pattern for the second time point
        
    Returns:
        list: List of tuples (t0_file, t1_file) with matching ROI files
    """
    all_pairs = []
    
    # Walk through all subdirectories
    for root, _, _ in os.walk(directory):
        pairs = find_matching_roi_files(root, t0_pattern, t1_pattern)
        all_pairs.extend(pairs)
    
    return all_pairs

def batch_process_directory(directory, t0_pattern="*t00*_rois.zip", t1_pattern="*t03*_rois.zip", recursive=True):
    """
    Process all matching ROI file pairs in a directory.
    
    Args:
        directory (str): Directory to process
        t0_pattern (str): Glob pattern for the first time point
        t1_pattern (str): Glob pattern for the second time point
        recursive (bool): Whether to search recursively in subdirectories
        
    Returns:
        int: Number of successfully processed pairs
    """
    logger.info(f"Scanning for ROI files in: {directory} (recursive={recursive})")
    
    if recursive:
        pairs = find_roi_files_recursive(directory, t0_pattern, t1_pattern)
    else:
        pairs = find_matching_roi_files(directory, t0_pattern, t1_pattern)
    
    logger.info(f"Found {len(pairs)} ROI file pairs to process")
    
    successful = 0
    for t0_file, t1_file in pairs:
        if process_roi_pair(t0_file, t1_file):
            successful += 1
    
    logger.info(f"Successfully processed {successful} out of {len(pairs)} ROI file pairs")
    return successful

def main():
    """Main entry point for the script."""
    parser = argparse.ArgumentParser(description='Match and reorder ImageJ ROI files for cell tracking')
    
    parser.add_argument('--input', '-i', type=str, help='Input directory containing ROI zip files')
    parser.add_argument('--t0-pattern', type=str, default="*t00*_rois.zip", help='Glob pattern for first time point ROI files')
    parser.add_argument('--t1-pattern', type=str, default="*t03*_rois.zip", help='Glob pattern for second time point ROI files')
    parser.add_argument('--recursive', '-r', action='store_true', help='Search recursively in subdirectories')
    
    # For individual file processing
    parser.add_argument('--file1', type=str, help='First ROI zip file (reference)')
    parser.add_argument('--file2', type=str, help='Second ROI zip file (to be reordered)')
    
    args = parser.parse_args()
    
    # Process individual files if specified
    if args.file1 and args.file2:
        if os.path.exists(args.file1) and os.path.exists(args.file2):
            success = process_roi_pair(args.file1, args.file2)
            sys.exit(0 if success else 1)
        else:
            logger.error(f"One or both specified files do not exist")
            sys.exit(1)
    
    # Process directory
    elif args.input:
        if os.path.isdir(args.input):
            successful = batch_process_directory(
                args.input, 
                args.t0_pattern,
                args.t1_pattern,
                args.recursive
            )
            sys.exit(0 if successful > 0 else 1)
        else:
            logger.error(f"Input directory does not exist: {args.input}")
            sys.exit(1)
    
    else:
        parser.print_help()
        sys.exit(1)

if __name__ == "__main__":
    main()