# Microscopy Analysis for Single-Cell Imaging

A comprehensive workflow for analyzing microscopy data at the single-cell level, including segmentation, tracking, mask creation, and quantitative analysis.

## Overview

This project provides an end-to-end pipeline for analyzing single-cell microscopy data across multiple timepoints and experimental conditions. It handles:

- Preprocessing of microscopy images
- Cell segmentation and ROI generation
- Cell tracking across timepoints
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

The workflow expects and generates the following directory structure:

```
/experiment_analysis/
├── raw_data/          # Original microscopy data
├── preprocessed/      # Binned/preprocessed images
├── ROIs/              # Region of interest files
├── cells/             # Extracted single cell images
├── grouped_cells/     # Cells grouped by intensity
├── grouped_masks/     # Masks for grouped cells
├── combined_masks/    # Combined masks from different groups
├── masks/             # Individual cell masks
└── analysis/          # Analysis results and measurements
```

## Usage

### Running the Complete Workflow

The complete workflow can be run with:

```
python single_cell_workflow.py --config workflow_config.json --input /path/to/input --output /path/to/output --regions R_1 --timepoints "t00 t03"
```

### Single Timepoint Data

For datasets that only contain a single timepoint (e.g., only t00 files), you should skip the roi_tracking step:

```
python single_cell_workflow.py --config workflow_config.json --input /path/to/input --output /path/to/output --skip roi_tracking
```

This bypasses the cell tracking step which is designed to match ROIs between different timepoints and is unnecessary for single timepoint data.

### Configuration

The workflow is configured through a JSON file (`workflow_config.json`). You can customize:
- Input/output paths
- ImageJ path
- Processing steps
- Analysis parameters

### Optional Parameters

- `--regions`: Specify regions to analyze (e.g., "R_1 R_2 R_3")
- `--timepoints`: Specify timepoints to analyze (e.g., "t00 t03")
- `--skip`: Skip specific workflow steps (e.g., "roi_tracking" for single timepoint data)

## File Format and Naming Conventions

The workflow expects microscopy data with the following naming conventions:
- Regions: R_X (where X is a number)
- Timepoints: tXX (e.g., t00, t03)
- Channels: chXX (e.g., ch00, ch01)

Example: `R_1_t00_ch01.tif`

## Key Components

1. `single_cell_workflow.py`: Main workflow orchestrator
2. `scripts/bin_images.py`: Preprocessing images for segmentation
3. `scripts/extract_cells.py`: Extracting individual cells using ROIs
4. `scripts/create_cell_masks.py`: Creating masks for individual cells
5. `scripts/analyze_cell_masks.py`: Analyzing cell masks and extracting measurements

## Recent Updates

- Fixed timepoint parsing in `analyze_cell_masks.py` to properly handle space-separated timepoint inputs
- Standardized timepoint formatting to use 'tXX' format throughout the workflow
- Improved directory structure handling with consistent region and timepoint formatting
- Enhanced error handling and logging for better debugging
- Added support for single timepoint datasets by skipping the roi_tracking step

## License

This project is licensed under the MIT License - see the LICENSE file for details.
