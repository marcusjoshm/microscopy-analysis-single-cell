# Microscopy Analysis for Single-Cell Imaging

A comprehensive workflow for analyzing microscopy data at the single-cell level, including segmentation, tracking, mask creation, and quantitative analysis.

## Overview

This project provides an end-to-end pipeline for analyzing single-cell microscopy data across multiple timepoints and experimental conditions. It handles:

- Dynamic directory setup based on selected data subsets
- Preprocessing of microscopy images
- Cell segmentation and ROI generation
- Cell tracking across timepoints (optional)
- Mask creation and processing
- Quantitative analysis of cell features

## Setup

### Prerequisites

- Python 3.8 or higher
- ImageJ/FIJI with required plugins
- Required Python packages (see below)

### Installation

1. Clone this repository
2. Create a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. Install required packages:
   ```
   pip install numpy scipy pandas matplotlib scikit-image opencv-python tqdm
   ```

### Directory Structure

The workflow expects input data organized by condition (e.g., `Dish_X_...` folders) and generates the following structure in the specified output directory:

```
/experiment_analysis/       # Specified output directory
├── raw_data/             # Copied raw data for selected conditions
├── preprocessed/         # Binned/preprocessed images (for selected data)
├── ROIs/                 # Region of interest files (for selected data)
├── cells/                # Extracted single cell images (for selected data)
├── grouped_cells/        # Cells grouped by intensity (for selected data)
├── grouped_masks/        # Masks for grouped cells (for selected data)
├── combined_masks/       # Combined masks from different groups (for selected data)
├── masks/                # Individual cell masks (for selected data)
├── analysis/             # Analysis results and measurements (for selected data)
└── macros/               # ImageJ macro files generated during the workflow
└── workflow_state.json   # Record of workflow progress and selections
```

Note: Subdirectories within `raw_data`, `preprocessed`, `ROIs`, `cells`, `grouped_cells`, `grouped_masks`, `combined_masks`, and `masks` are created dynamically based on the selected (or all available) conditions, regions, and timepoints.

## Usage

### Running the Complete Workflow

The complete workflow can be run with:

```
python single_cell_workflow.py --config workflow_config.json --input /path/to/input --output /path/to/output
```

By default, this will process all conditions, regions, channels, and timepoints found in the input data.

To analyze a specific subset, use the optional selection parameters:

```
# Example: Analyze specific conditions, regions, and timepoints for channel 1
python single_cell_workflow.py \
    --config workflow_config.json \
    --input /path/to/input \
    --output /path/to/output \
    --conditions "Dish_1_Control" "Dish_2_Treatment" \
    --regions "R_1" "R_3" \
    --timepoints "t00" "t03" \
    --channels "ch01"
```

### Single Timepoint Data

For datasets that only contain a single timepoint (or if you only want to process one), ensure the files have a timepoint identifier (e.g., `t00`). The workflow will automatically detect this as `single_timepoint` data.

Run the workflow normally. The `roi_tracking` step (designed for multi-timepoint data) can optionally be skipped if not needed:

```
python single_cell_workflow.py --config workflow_config.json --input /path/to/input --output /path/to/output --skip roi_tracking
```

### Configuration

The workflow is configured through a JSON file (`workflow_config.json`). You can customize:
- ImageJ path
- Processing steps and their parameters

### Optional Parameters

- `--config`: Path to the configuration JSON file (required).
- `--input`: Path to the input data directory (required).
- `--output`: Path to the output analysis directory (required).
- `--conditions`: Specify specific conditions (directory names) to analyze. If omitted, all conditions found in the input directory are processed.
- `--channels`: Specify specific channels (e.g., `ch00` `ch01`) to analyze. If omitted, all channels found are processed.
- `--timepoints`: Specify specific timepoints (e.g., `t00` `t03`) to analyze. If omitted, all timepoints found are processed.
- `--regions`: Specify specific regions (e.g., `R_1` `R_2`) to analyze. If omitted, all regions found are processed.
- `--datatype`: Manually specify data type (`single_timepoint` or `multi_timepoint`). Overrides automatic detection and manual selection prompt.
- `--skip`: Skip specific workflow steps by name (e.g., `--skip roi_tracking interactive_segmentation`).
- `--setup-only`: Only perform the initial directory setup (copying raw data and creating analysis subdirectories based on selections) and then exit.

If selection parameters (`--conditions`, `--channels`, `--timepoints`, `--regions`, `--datatype`) are *not* provided via the command line, the workflow will prompt for manual selection during the initial steps.

## File Format and Naming Conventions

The workflow expects microscopy data with the following naming conventions within condition folders:
- Regions: `R_X` (where X is a number)
- Timepoints: `tXX` (e.g., `t00`, `t03`)
- Channels: `chXX` (e.g., `ch00`, `ch01`)

Example: `Dish_1_Control/Some_Subfolder/R_1_Merged_t00_ch01.tif`

## Key Components

1. `single_cell_workflow.py`: Main workflow orchestrator. Handles argument parsing, directory setup, step execution, and state management.
2. `workflow_config.json`: Defines the sequence of steps, their types, paths, and arguments.
3. `scripts/`: Contains the individual Python and shell scripts executed by the workflow (e.g., `bin_images.py`, `extract_cells.py`, `analyze_cell_masks.py`).
4. `macros/`: Directory where ImageJ macros used/generated by the workflow are stored.

## Recent Updates

- **Dynamic Directory Setup:** The initial directory structure setup is now based on user selections provided via command line (or defaults to all data if no selections are given).
- **Refined Selection Logic:** Command-line selections (`--conditions`, `--regions`, etc.) directly control the data subset processed throughout the workflow, bypassing manual prompts.
- **Removed Steps:** `manual_quality_check` step removed. Directory setup is now handled automatically at the start, not as a configurable step.
- **Reduced Logging:** Removed verbose, per-file logging from `combine_masks.py` and `analyze_cell_masks.py` for cleaner output.
- Fixed timepoint parsing in `analyze_cell_masks.py`.
- Standardized timepoint formatting to use `tXX`.
- Improved directory structure handling.
- Enhanced error handling and logging.
- Added support for single timepoint datasets by skipping `roi_tracking`.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
