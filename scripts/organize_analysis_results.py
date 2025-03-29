#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Organize Analysis Results

This script organizes the results from the single-cell analysis workflow,
creating a structured output of analysis files, summaries, and visualization data.
"""

import os
import sys
import argparse
import pandas as pd
import numpy as np
import logging
import glob
import json
import shutil
from pathlib import Path
import re
from datetime import datetime
import matplotlib.pyplot as plt
import seaborn as sns

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler("results_organization.log"),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger("ResultsOrganization")

def create_directory_structure(base_dir, experiment_name=None):
    """
    Create the directory structure for organized results.
    
    Args:
        base_dir (str): Base directory for organized results
        experiment_name (str): Name of the experiment (optional)
        
    Returns:
        dict: Dictionary of created directories
    """
    if experiment_name is None:
        # Use current date as experiment name if not provided
        experiment_name = f"experiment_{datetime.now().strftime('%Y%m%d')}"
    
    # Create main directories
    dirs = {
        'root': os.path.join(base_dir, experiment_name),
        'data': os.path.join(base_dir, experiment_name, 'data'),
        'figures': os.path.join(base_dir, experiment_name, 'figures'),
        'tables': os.path.join(base_dir, experiment_name, 'tables'),
        'reports': os.path.join(base_dir, experiment_name, 'reports'),
        'metadata': os.path.join(base_dir, experiment_name, 'metadata')
    }
    
    # Create subdirectories for different data types
    data_subdirs = {
        'raw': os.path.join(dirs['data'], 'raw'),
        'processed': os.path.join(dirs['data'], 'processed'),
        'combined': os.path.join(dirs['data'], 'combined')
    }
    dirs.update(data_subdirs)
    
    # Create subdirectories for different figure types
    figure_subdirs = {
        'distribution': os.path.join(dirs['figures'], 'distribution'),
        'timecourse': os.path.join(dirs['figures'], 'timecourse'),
        'correlation': os.path.join(dirs['figures'], 'correlation'),
        'comparison': os.path.join(dirs['figures'], 'comparison')
    }
    dirs.update(figure_subdirs)
    
    # Create all directories
    for dir_path in dirs.values():
        os.makedirs(dir_path, exist_ok=True)
        logger.info(f"Created directory: {dir_path}")
    
    return dirs

def collect_cell_data(input_dir, output_dirs, conditions=None, regions=None, timepoints=None):
    """
    Collect and organize cell data from analysis results.
    
    Args:
        input_dir (str): Input directory containing analysis results
        output_dirs (dict): Dictionary of output directories
        conditions (list): List of conditions to include (optional)
        regions (list): List of regions to include (optional)
        timepoints (list): List of timepoints to include (optional)
        
    Returns:
        pd.DataFrame: Combined cell data
    """
    logger.info(f"Collecting cell data from {input_dir}")
    
    # Find all cell data files
    cell_files = []
    for root, dirs, files in os.walk(input_dir):
        for file in files:
            if file.endswith("_processed.csv") or file.endswith("_enhanced.csv"):
                cell_files.append(os.path.join(root, file))
    
    logger.info(f"Found {len(cell_files)} cell data files")
    
    # Load and combine all cell data
    all_cells = []
    for file in cell_files:
        try:
            df = pd.read_csv(file)
            
            # Filter by condition if specified
            if conditions and 'condition' in df.columns:
                df = df[df['condition'].isin(conditions)]
            
            # Filter by region if specified
            if regions and 'region' in df.columns:
                df = df[df['region'].isin(regions)]
            
            # Filter by timepoint if specified
            if timepoints and 'timepoint' in df.columns:
                df = df[df['timepoint'].isin(timepoints)]
            
            # Add source file info
            df['source_file'] = os.path.basename(file)
            
            # Add to collection
            if not df.empty:
                all_cells.append(df)
                
                # Copy original file to raw data directory
                dest_file = os.path.join(output_dirs['raw'], os.path.basename(file))
                shutil.copy2(file, dest_file)
                logger.info(f"Copied {file} to {dest_file}")
        
        except Exception as e:
            logger.error(f"Error processing {file}: {e}")
    
    # Combine all data if any was collected
    if all_cells:
        combined_df = pd.concat(all_cells, ignore_index=True)
        logger.info(f"Combined data for {len(combined_df)} cells from {len(all_cells)} files")
        
        # Save combined dataset
        combined_output = os.path.join(output_dirs['combined'], "all_cells.csv")
        combined_df.to_csv(combined_output, index=False)
        logger.info(f"Saved combined cell data to {combined_output}")
        
        return combined_df
    else:
        logger.warning("No cell data was collected")
        return None

def generate_summary_statistics(cell_data, output_dirs):
    """
    Generate summary statistics for cell data.
    
    Args:
        cell_data (pd.DataFrame): Combined cell data
        output_dirs (dict): Dictionary of output directories
    """
    if cell_data is None or cell_data.empty:
        logger.warning("No cell data available for summary statistics")
        return
    
    logger.info("Generating summary statistics")
    
    # Determine available grouping columns
    groupby_cols = []
    for col in ['condition', 'region', 'timepoint']:
        if col in cell_data.columns:
            groupby_cols.append(col)
    
    if not groupby_cols:
        logger.warning("No grouping columns (condition, region, timepoint) found in data")
        return
    
    # Generate summaries at different levels of grouping
    for i in range(1, len(groupby_cols) + 1):
        for combo in [groupby_cols[:i]]:  # Just use sequential combinations
            group_name = "_".join(combo)
            logger.info(f"Generating {group_name} summary")
            
            # Select numeric columns for statistics
            numeric_cols = cell_data.select_dtypes(include=[np.number]).columns.tolist()
            
            # Generate summaries
            summary = cell_data.groupby(combo)[numeric_cols].agg(['count', 'mean', 'std', 'min', 'max', 'median'])
            
            # Flatten multi-index columns
            summary.columns = ['_'.join(col).strip() for col in summary.columns.values]
            summary = summary.reset_index()
            
            # Save summary
            summary_file = os.path.join(output_dirs['tables'], f"summary_by_{group_name}.csv")
            summary.to_csv(summary_file, index=False)
            logger.info(f"Saved summary to {summary_file}")
            
            # Generate summary plots for key metrics
            key_metrics = ['Area_mean', 'circularity_mean', 'aspect_ratio_mean'] if 'Area_mean' in summary.columns else []
            
            if key_metrics:
                for metric in key_metrics:
                    if metric in summary.columns:
                        plt.figure(figsize=(10, 6))
                        
                        # Plot type depends on grouping
                        if len(combo) == 1:
                            ax = sns.barplot(x=combo[0], y=metric, data=summary)
                            ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')
                        else:
                            # For multiple grouping variables, create a grouped bar plot
                            last_group = combo[-1]
                            other_groups = combo[:-1]
                            data_pivot = summary.pivot(index=other_groups, columns=last_group, values=metric)
                            ax = data_pivot.plot(kind='bar', figsize=(12, 6))
                            ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')
                        
                        plt.title(f'{metric} by {", ".join(combo)}')
                        plt.tight_layout()
                        
                        # Save the figure
                        metric_name = metric.split('_')[0]
                        fig_file = os.path.join(output_dirs['distribution'], f"{metric_name}_by_{group_name}.png")
                        plt.savefig(fig_file, dpi=300)
                        plt.close()
                        logger.info(f"Saved figure to {fig_file}")

def generate_time_course_plots(cell_data, output_dirs):
    """
    Generate time course plots if time point data is available.
    
    Args:
        cell_data (pd.DataFrame): Combined cell data
        output_dirs (dict): Dictionary of output directories
    """
    if cell_data is None or cell_data.empty or 'timepoint' not in cell_data.columns:
        logger.warning("No time course data available")
        return
    
    logger.info("Generating time course plots")
    
    # Extract timepoint as numeric value for proper ordering
    cell_data['timepoint_num'] = cell_data['timepoint'].str.extract(r't(\d+)').astype(int)
    
    # Determine if we have condition data
    has_condition = 'condition' in cell_data.columns
    
    # Select key metrics to plot
    metrics = ['Area', 'circularity', 'aspect_ratio']
    available_metrics = [m for m in metrics if m in cell_data.columns]
    
    for metric in available_metrics:
        plt.figure(figsize=(12, 6))
        
        if has_condition:
            # Group by condition and timepoint
            summary = cell_data.groupby(['condition', 'timepoint_num'])[metric].agg(['mean', 'std']).reset_index()
            
            # Plot each condition as a separate line
            for condition in summary['condition'].unique():
                condition_data = summary[summary['condition'] == condition]
                plt.errorbar(condition_data['timepoint_num'], condition_data['mean'], 
                             yerr=condition_data['std'], label=condition, marker='o')
            
            plt.legend(title='Condition')
        else:
            # Just group by timepoint
            summary = cell_data.groupby(['timepoint_num'])[metric].agg(['mean', 'std']).reset_index()
            plt.errorbar(summary['timepoint_num'], summary['mean'], yerr=summary['std'], marker='o')
        
        plt.xlabel('Time point')
        plt.ylabel(f'Mean {metric}')
        plt.title(f'{metric} over time')
        
        # Use integer ticks for timepoints
        plt.xticks(summary['timepoint_num'].unique())
        
        plt.tight_layout()
        
        # Save the figure
        fig_file = os.path.join(output_dirs['timecourse'], f"{metric}_timecourse.png")
        plt.savefig(fig_file, dpi=300)
        plt.close()
        logger.info(f"Saved time course figure to {fig_file}")

def generate_correlation_plots(cell_data, output_dirs):
    """
    Generate correlation plots between key metrics.
    
    Args:
        cell_data (pd.DataFrame): Combined cell data
        output_dirs (dict): Dictionary of output directories
    """
    if cell_data is None or cell_data.empty:
        logger.warning("No cell data available for correlation plots")
        return
    
    logger.info("Generating correlation plots")
    
    # Select key metrics for correlation analysis
    metrics = ['Area', 'circularity', 'aspect_ratio', 'Perim.', 'Mean']
    available_metrics = [m for m in metrics if m in cell_data.columns]
    
    if len(available_metrics) < 2:
        logger.warning("Not enough metrics available for correlation analysis")
        return
    
    # Create correlation matrix
    corr_matrix = cell_data[available_metrics].corr()
    
    # Plot correlation heatmap
    plt.figure(figsize=(10, 8))
    sns.heatmap(corr_