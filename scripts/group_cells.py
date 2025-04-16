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
try:
    # Try to import skimage for better TIFF reading
    from skimage import io as skio
    HAVE_SKIMAGE = True
except ImportError:
    HAVE_SKIMAGE = False
try:
    # Import tifffile for preserving metadata when writing TIFF files
    import tifffile
    HAVE_TIFFFILE = True
except ImportError:
    HAVE_TIFFFILE = False
from sklearn.mixture import GaussianMixture
from sklearn.cluster import KMeans

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

def read_image(image_path, verbose=False):
    """
    Read an image file with better handling of different TIFF formats.
    Tries multiple methods to ensure proper reading.
    
    Args:
        image_path (str): Path to the image file
        verbose (bool): Whether to print diagnostic information
        
    Returns:
        tuple: The loaded image and any metadata if available, or (None, None) if failed
    """
    metadata = None
    
    # Try tifffile first if available (best for metadata preservation)
    if HAVE_TIFFFILE:
        try:
            with tifffile.TiffFile(image_path) as tif:
                img = tif.asarray()
                # Try to extract resolution information
                if hasattr(tif, 'pages') and len(tif.pages) > 0:
                    page = tif.pages[0]
                    if hasattr(page, 'tags'):
                        # Extract resolution information if available
                        metadata = {}
                        if 'XResolution' in page.tags:
                            metadata['XResolution'] = page.tags['XResolution'].value
                        if 'YResolution' in page.tags:
                            metadata['YResolution'] = page.tags['YResolution'].value
                        if 'ResolutionUnit' in page.tags:
                            metadata['ResolutionUnit'] = page.tags['ResolutionUnit'].value
                        # Also check for ImageJ metadata
                        if hasattr(page, 'imagej_tags') and page.imagej_tags:
                            metadata.update(page.imagej_tags)
                
                # Convert to grayscale if image has multiple channels
                if len(img.shape) > 2:
                    img = np.mean(img, axis=2).astype(img.dtype)
                
                if verbose:
                    logger.info(f"Read image {image_path} with tifffile")
                    logger.info(f"  Shape: {img.shape}, Type: {img.dtype}")
                    logger.info(f"  Min: {np.min(img)}, Max: {np.max(img)}, Mean: {np.mean(img):.2f}")
                    logger.info(f"  Sum: {np.sum(img)}")
                    if metadata:
                        logger.info(f"  Metadata: {metadata}")
                
                return img, metadata
        except Exception as e:
            logger.warning(f"tifffile failed to read {image_path}: {e}")
    
    # Next try scikit-image if available
    if HAVE_SKIMAGE:
        try:
            img = skio.imread(image_path)
            # Convert to grayscale if image has multiple channels
            if len(img.shape) > 2:
                img = np.mean(img, axis=2).astype(img.dtype)
            
            if verbose:
                logger.info(f"Read image {image_path} with skimage")
                logger.info(f"  Shape: {img.shape}, Type: {img.dtype}")
                logger.info(f"  Min: {np.min(img)}, Max: {np.max(img)}, Mean: {np.mean(img):.2f}")
                logger.info(f"  Sum: {np.sum(img)}")
            
            return img, None
        except Exception as e:
            logger.warning(f"skimage failed to read {image_path}: {e}")
    
    # Fallback to OpenCV
    try:
        # Try reading as-is
        img = cv2.imread(str(image_path), cv2.IMREAD_UNCHANGED)
        if img is None:
            # If failed, try grayscale
            img = cv2.imread(str(image_path), cv2.IMREAD_GRAYSCALE)
            
        if img is not None:
            if verbose:
                logger.info(f"Read image {image_path} with OpenCV")
                logger.info(f"  Shape: {img.shape}, Type: {img.dtype}")
                logger.info(f"  Min: {np.min(img)}, Max: {np.max(img)}, Mean: {np.mean(img):.2f}")
                logger.info(f"  Sum: {np.sum(img)}")
                
            return img, None
        else:
            logger.warning(f"OpenCV failed to read {image_path}")
            return None, None
    except Exception as e:
        logger.warning(f"OpenCV error reading {image_path}: {e}")
        return None, None

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

def group_and_sum_cells(cell_dir, output_dir, num_bins, method='gmm', force_clusters=False, verbose=False):
    """
    Group cell images by expression level and create summed images.
    
    Args:
        cell_dir (Path): Directory containing cell images
        output_dir (Path): Directory to save output summed images
        num_bins (int): Number of groups to cluster cells into
        method (str): Clustering method ('gmm' or 'kmeans')
        force_clusters (bool): Force creation of num_bins clusters even with similar data
        verbose (bool): Whether to print verbose diagnostic information
        
    Returns:
        bool: True if successful, False otherwise
    """
    # Get all cell image files
    image_files = list(cell_dir.glob("CELL*.tif"))
    
    if not image_files:
        logger.warning(f"No cell images found in {cell_dir}")
        return False
    
    logger.info(f"Processing {len(image_files)} cells from {cell_dir}")
    
    # List to store tuples of (filename, auc, image, metadata)
    image_data = []
    zero_count = 0
    nonzero_count = 0
    
    # Variable to store metadata - we'll use the first non-empty one
    reference_metadata = None
    
    for image_file in image_files:
        # Use the enhanced image reading function
        img, metadata = read_image(str(image_file), verbose=verbose)
        
        if img is None:
            logger.warning(f"Unable to read {image_file}. Skipping.")
            continue
        
        # Store the first metadata we find for reference
        if metadata is not None and reference_metadata is None:
            reference_metadata = metadata
            if verbose:
                logger.info(f"Using metadata from {image_file} as reference")
                logger.info(f"Reference metadata: {reference_metadata}")
            
        auc_value = compute_auc(img)
        
        # Track zero vs. non-zero images for diagnostics
        if auc_value == 0:
            zero_count += 1
            if verbose:
                logger.warning(f"Image {image_file} has zero sum (all black)")
        else:
            nonzero_count += 1
            
        image_data.append((str(image_file), auc_value, img, metadata))
    
    if not image_data:
        logger.warning(f"No valid images to process in {cell_dir}")
        return False
        
    # Report zero vs non-zero statistics
    logger.info(f"Found {zero_count} images with zero intensity and {nonzero_count} with non-zero intensity")
    
    if zero_count == len(image_data):
        logger.error("All images have zero intensity. Check image format or file corruption.")
        # Even with all zeros, we'll continue with forced binning if requested
        if not force_clusters:
            logger.info("Try using --force-clusters to create bins with equal cell counts")
    
    # Prepare an array of AUC values for clustering
    auc_values = np.array([data[1] for data in image_data]).reshape(-1, 1)
    
    # Apply log transformation to better handle wide dynamic ranges of intensity
    if np.min(auc_values) > 0:  # Only apply log if all values are positive
        auc_values_log = np.log1p(auc_values)  # log(1+x) to handle small values better
    else:
        auc_values_log = auc_values
        
    # Show some statistics about the intensity values
    if len(auc_values) > 0:
        min_val = np.min(auc_values)
        max_val = np.max(auc_values) 
        mean_val = np.mean(auc_values)
        median_val = np.median(auc_values)
        logger.info(f"Intensity stats - Min: {min_val}, Max: {max_val}, Mean: {mean_val:.2f}, Median: {median_val:.2f}")
    
    # Check if all values are the same or very close
    intensity_range = max_val - min_val if len(auc_values) > 0 else 0
    if intensity_range < 1e-6 and not force_clusters:
        logger.warning("All images have nearly identical intensity. Clustering may not be effective.")
        logger.info("Try using --force-clusters to create bins with equal cell counts")
    
    # Ensure we don't try to create more clusters than we have samples
    actual_num_bins = min(num_bins, len(auc_values))
    if actual_num_bins < num_bins:
        logger.warning(f"Reducing bins from {num_bins} to {actual_num_bins} due to limited samples")
    
    # If all values are zero or identical and force_clusters is enabled, 
    # bypass clustering and just divide evenly
    if (zero_count == len(image_data) or intensity_range < 1e-6) and force_clusters:
        logger.info("Using forced equal distribution due to identical intensity values")
        # Divide cells evenly among the requested bins
        sorted_indices = np.argsort(auc_values.flatten())  # Sort by intensity
        cells_per_cluster = len(auc_values) // actual_num_bins
        remainder = len(auc_values) % actual_num_bins
        
        labels = np.zeros(len(image_data), dtype=int)
        start_idx = 0
        for i in range(actual_num_bins):
            cluster_size = cells_per_cluster + (1 if i < remainder else 0)
            end_idx = start_idx + cluster_size
            labels[sorted_indices[start_idx:end_idx]] = i
            start_idx = end_idx
            
        # Calculate cluster means
        cluster_means = {}
        for label in range(actual_num_bins):
            cluster_values = auc_values[labels == label]
            cluster_means[label] = cluster_values.mean() if len(cluster_values) > 0 else 0
    
    # Use quantile-based binning if force_clusters is enabled and we have a wide range of intensities
    elif force_clusters and intensity_range > 1e-6:
        logger.info(f"Using quantile-based binning to force {actual_num_bins} equally sized groups")
        
        # Sort cells by intensity
        sorted_indices = np.argsort(auc_values.flatten())
        
        # Divide into equal-sized groups
        cells_per_cluster = len(auc_values) // actual_num_bins
        remainder = len(auc_values) % actual_num_bins
        
        labels = np.zeros(len(image_data), dtype=int)
        start_idx = 0
        for i in range(actual_num_bins):
            cluster_size = cells_per_cluster + (1 if i < remainder else 0)
            end_idx = start_idx + cluster_size
            labels[sorted_indices[start_idx:end_idx]] = i
            start_idx = end_idx
        
        # Calculate cluster means
        cluster_means = {}
        for label in range(actual_num_bins):
            cluster_values = auc_values[labels == label]
            cluster_means[label] = cluster_values.mean() if len(cluster_values) > 0 else 0
            
    # Otherwise, proceed with the selected clustering method
    elif method.lower() == 'gmm':
        # Gaussian Mixture Model with improved parameters
        gmm = GaussianMixture(
            n_components=actual_num_bins, 
            random_state=0,
            n_init=10,  # Multiple initializations for better convergence
            max_iter=300,  # More iterations
            reg_covar=1e-4,  # Regularization to improve numerical stability
            init_params='kmeans'  # Use K-means for initialization
        )
        
        # Use the log-transformed values for better clustering with wide dynamic ranges
        gmm.fit(auc_values_log)
        labels = gmm.predict(auc_values_log)
        
        # Get unique labels actually assigned
        unique_labels = np.unique(labels)
        
        # Print convergence information
        logger.info(f"GMM convergence: {gmm.converged_}")
        if not gmm.converged_:
            logger.warning("GMM did not converge. Consider using K-means or forced clustering.")
            
        # Print cluster sizes to diagnose uneven distributions
        for label in unique_labels:
            count = np.sum(labels == label)
            logger.info(f"GMM cluster {label} has {count} cells ({count/len(labels)*100:.1f}%)")
        
        # Calculate cluster means using original values
        cluster_means = {}
        for label in unique_labels:
            cluster_values = auc_values[labels == label]
            cluster_means[label] = cluster_values.mean() if len(cluster_values) > 0 else 0
        
        # If all cells are in one cluster or forcing clusters and some clusters are empty
        if len(unique_labels) == 1 or (force_clusters and len(unique_labels) < actual_num_bins):
            logger.warning(f"GMM only found {len(unique_labels)} clusters but {actual_num_bins} were requested. "
                           f"Falling back to K-means.")
            
            # Fall back to K-means clustering
            method = 'kmeans'  # Set method to kmeans to use the kmeans code path
    
    # Default: Use K-means clustering (either as primary method or as fallback from GMM)
    if method.lower() == 'kmeans':
        # Use K-means clustering with multiple initializations and iterations for robustness
        kmeans = KMeans(
            n_clusters=actual_num_bins, 
            random_state=0, 
            n_init=10,  # Multiple initializations to avoid bad starting conditions
            max_iter=300,  # More iterations to ensure convergence
        )
        # Use the log-transformed values for better clustering with wide dynamic ranges
        labels = kmeans.fit_predict(auc_values_log)
        
        # Get cluster centers for sorting
        centers = kmeans.cluster_centers_.flatten()
        # Get unique labels actually assigned (in case some clusters are empty)
        unique_labels = np.unique(labels)
        cluster_means = {label: centers[label] for label in unique_labels}
        
        # Print cluster sizes to diagnose distribution
        for label in unique_labels:
            count = np.sum(labels == label)
            logger.info(f"K-means cluster {label} has {count} cells ({count/len(labels)*100:.1f}%)")
        
        # If forcing clusters and some clusters are empty
        if force_clusters and len(unique_labels) < actual_num_bins:
            logger.warning(f"K-means only found {len(unique_labels)} clusters but {actual_num_bins} were requested. "
                           f"Redistributing data to force {actual_num_bins} clusters.")
            
            # Force redistribution by manually assigning to n clusters
            # Sort data by intensity
            sorted_indices = np.argsort(auc_values.flatten())
            # Calculate number of cells per cluster for even distribution
            cells_per_cluster = len(auc_values) // actual_num_bins
            remainder = len(auc_values) % actual_num_bins
            
            # Assign new labels based on sorted indices
            new_labels = np.zeros_like(labels)
            start_idx = 0
            for i in range(actual_num_bins):
                # Give an extra cell to first 'remainder' clusters if division isn't even
                cluster_size = cells_per_cluster + (1 if i < remainder else 0)
                end_idx = start_idx + cluster_size
                new_labels[sorted_indices[start_idx:end_idx]] = i
                start_idx = end_idx
            
            # Replace original labels with new forced distribution
            labels = new_labels
            
            # Recalculate cluster means
            cluster_means = {}
            for label in range(actual_num_bins):
                cluster_values = auc_values[labels == label]
                cluster_means[label] = cluster_values.mean() if len(cluster_values) > 0 else 0
        
        # If K-means doesn't find the right number of clusters (which shouldn't happen in practice)
        if len(unique_labels) < actual_num_bins:
            logger.warning(f"K-means failed to find {actual_num_bins} clusters (found {len(unique_labels)}). "
                           f"Falling back to quantile-based binning.")
            
            # Fall back to quantile-based binning as last resort
            sorted_indices = np.argsort(auc_values.flatten())
            cells_per_cluster = len(auc_values) // actual_num_bins
            remainder = len(auc_values) % actual_num_bins
            
            new_labels = np.zeros_like(labels)
            start_idx = 0
            for i in range(actual_num_bins):
                cluster_size = cells_per_cluster + (1 if i < remainder else 0)
                end_idx = start_idx + cluster_size
                new_labels[sorted_indices[start_idx:end_idx]] = i
                start_idx = end_idx
            
            labels = new_labels
            
            # Recalculate cluster means
            cluster_means = {}
            for label in range(actual_num_bins):
                cluster_values = auc_values[labels == label]
                cluster_means[label] = cluster_values.mean() if len(cluster_values) > 0 else 0
    
    # Sort clusters by mean intensity for consistent binning
    sorted_clusters = sorted(cluster_means, key=lambda k: cluster_means[k])
    label_mapping = {old_label: new_label for new_label, old_label in enumerate(sorted_clusters)}
    
    # Initialize list to hold summed images for each group
    sum_images = [None] * actual_num_bins
    cell_counts = [0] * actual_num_bins
    
    # Group images using the mapped labels and sum them
    for idx, (filename, auc_value, img, metadata) in enumerate(image_data):
        original_label = labels[idx]
        # Only use label mapping if we have the original label in the mapping
        if original_label in label_mapping:
            mapped_label = label_mapping[original_label]
        else:
            # This shouldn't happen, but just in case
            mapped_label = original_label % actual_num_bins
            
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
        
        # Remove the cell count from the filename to ensure files get overwritten when rerunning with more bins
        output_file = output_subdir / f"{cell_dir.name}_bin_{i+1}.tif"
        
        # Use tifffile to save with metadata if available
        if HAVE_TIFFFILE and reference_metadata is not None:
            try:
                # Prepare metadata dictionary
                metadata_dict = {}
                
                # Try to use the original resolution metadata
                if reference_metadata:
                    # Check for ImageJ tags
                    if 'unit' in reference_metadata and 'resolution' in reference_metadata:
                        # These are common ImageJ metadata for units and scale
                        resolution = reference_metadata.get('resolution', 1.0)
                        unit = reference_metadata.get('unit', 'µm')
                        metadata_dict['resolution'] = resolution
                        metadata_dict['unit'] = unit
                        logger.info(f"Using ImageJ scale information: {resolution} pixels/{unit}")
                    
                    # Standard TIFF resolution tags
                    if 'XResolution' in reference_metadata and 'YResolution' in reference_metadata:
                        metadata_dict['XResolution'] = reference_metadata['XResolution']
                        metadata_dict['YResolution'] = reference_metadata['YResolution']
                        if 'ResolutionUnit' in reference_metadata:
                            metadata_dict['ResolutionUnit'] = reference_metadata['ResolutionUnit']
                
                # Save with metadata
                tifffile.imwrite(
                    str(output_file), 
                    norm_img, 
                    imagej=True,  # Use ImageJ format
                    resolution=(metadata_dict.get('XResolution'), metadata_dict.get('YResolution')),
                    metadata={'unit': 'um'}  # Using 'um' instead of 'µm' to avoid encoding issues
                )
                logger.info(f"Saved summed image with metadata for group {i+1} with {cell_counts[i]} cells: {output_file}")
            except Exception as e:
                logger.warning(f"Failed to save with tifffile, falling back to OpenCV: {e}")
                cv2.imwrite(str(output_file), norm_img)
        else:
            # Fallback to OpenCV (doesn't preserve scale/units)
            cv2.imwrite(str(output_file), norm_img)
            logger.info(f"Saved summed image for group {i+1} with {cell_counts[i]} cells: {output_file}")
            if not HAVE_TIFFFILE:
                logger.warning("tifffile library not available - scale information not preserved. Install with: pip install tifffile")
    
    # Save a text file with information about the grouping
    with open(output_subdir / f"{cell_dir.name}_grouping_info.txt", 'w') as f:
        f.write(f"Cell directory: {cell_dir}\n")
        f.write(f"Number of cells: {len(image_data)}\n")
        f.write(f"Clustering method: {method}\n")
        f.write(f"Force clusters: {force_clusters}\n")
        f.write(f"Number of groups: {actual_num_bins}\n")
        f.write(f"Images with zero intensity: {zero_count}\n")
        f.write(f"Images with non-zero intensity: {nonzero_count}\n")
        f.write(f"Intensity range: {intensity_range:.2f}\n\n")
        
        for i in range(actual_num_bins):
            f.write(f"Group {i+1}:\n")
            f.write(f"  Cells: {cell_counts[i]}\n")
            original_label = next((l for l, m in label_mapping.items() if m == i), i)
            if original_label in cluster_means:
                f.write(f"  Mean intensity: {cluster_means[original_label]:.2f}\n")
            f.write("\n")
    
    return True

def main():
    """Main function to group cells by expression level."""
    parser = argparse.ArgumentParser(description='Group cells by expression level using GMM clustering')
    
    parser.add_argument('--cells-dir', '-c', required=True,
                        help='Directory containing cell images (output from extract_cells.py)')
    parser.add_argument('--output-dir', '-o', required=True,
                        help='Directory to save grouped cell images')
    parser.add_argument('--bins', '-b', type=int, default=5,
                        help='Number of groups to cluster cells into (default: 5)')
    parser.add_argument('--clustering-method', '-m', choices=['gmm', 'kmeans'], default='kmeans',
                        help='Method to use for clustering (default: kmeans)')
    parser.add_argument('--force-clusters', '-f', action='store_true',
                        help='Force creation of exactly --bins clusters, even with similar data')
    parser.add_argument('--verbose', '-v', action='store_true',
                        help='Print verbose diagnostic information')
    parser.add_argument('--preserve-scale', action='store_true',
                        help='Ensure scale information is preserved in output TIFFs (requires tifffile)')
    
    args = parser.parse_args()
    
    # Check for tifffile if preserve-scale is requested
    if args.preserve_scale and not HAVE_TIFFFILE:
        logger.warning("tifffile library not available but --preserve-scale was requested.")
        logger.warning("Scale information may not be preserved. Install with: pip install tifffile")
    
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
        if group_and_sum_cells(
            cell_dir, 
            output_dir, 
            args.bins, 
            method=args.clustering_method,
            force_clusters=args.force_clusters,
            verbose=args.verbose
        ):
            successful += 1
    
    logger.info(f"Successfully processed {successful} out of {len(cell_dirs)} cell directories")
    
    if successful == 0:
        logger.error("No cell directories were successfully processed")
        return 1
    
    return 0

if __name__ == "__main__":
    sys.exit(main())