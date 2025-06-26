# Microscopy Analysis for Single-Cell Imaging - Technical Documentation

End-to-end single-cell analysis workflow for fluorescence microscopy datasets exported from LASX.

This workflow uses Cellpose for single-cell segmentation, groups cells according to similar expression levels, and uses ImageJ for assisted intensity-based auto thresholding to generate binary masks for particle analysis. The workflow saves all processed files, including raw .tifs, ROIs of individual cells, .tifs of individual cells, binary masks of thresholded data as individual cells and complete tile-scans, and particle analysis results.

This workflow was optimized for quantifying stress granules and other cytoplasmic biomolecular condensates.

## Table of Contents

1. [Overview](#overview)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [File Format and Naming Conventions](#file-format-and-naming-conventions)
6. [Workflow Integration](#workflow-integration)
7. [Directory Structure](#directory-structure)
8. [Key Components](#key-components)
9. [Recent Updates](#recent-updates)
10. [Troubleshooting](#troubleshooting)
11. [License](#license)

## Overview

This project provides an end-to-end pipeline for analyzing single-cell microscopy data across multiple timepoints and experimental conditions. It handles:

- Dynamic directory setup based on selected data subsets
- Preprocessing of microscopy images
- Cell segmentation and ROI generation
- Cell tracking across timepoints (optional)
- Mask creation and processing
- Quantitative analysis of cell features

## Installation

### Prerequisites

#### Required Software (macOS)

1. **Python 3.11**
   - Check: `python3.11 --version`
   - Install via [python.org](https://www.python.org/downloads/) or Homebrew: `brew install python@3.11`

2. **ImageJ or Fiji**
   - **Recommended: Fiji** - Download from [fiji.sc](https://fiji.sc/)
   - Alternative: ImageJ from [imagej.nih.gov](https://imagej.nih.gov/ij/download.html)
   - Install to `/Applications/` for automatic detection

### Quick Installation

#### 1. Clone the Repository

```bash
git clone https://github.com/marcusjoshm/microscopy-analysis-single-cell.git
cd microscopy-analysis-single-cell
```

#### 2. Run the Installation Script

The installation script will:
- Create two separate virtual environments:
  - `venv` for the main workflow
  - `cellpose_venv` for Cellpose
- Install all required dependencies in each environment
- Verify the installations

Make the script executable (required only once):
```bash
chmod +x install.sh
```

Then run the installation script:
```bash
./install.sh
```

#### 3. Configure the Workflow

After installation, create and configure your workflow settings:

```bash
# Activate the main workflow environment
source venv/bin/activate

# Create configuration file with automatic software detection
python setup_workflow.py --create-config --force
```

This will:
- Automatically detect ImageJ/Fiji and Cellpose installations
- Create a `config.json` file with the correct paths
- Set up the workflow configuration for your system

### Manual Installation

If you prefer to install manually or the script fails, follow these steps:

#### 1. Main Workflow Environment

```bash
# Create and activate the main workflow environment
python3.11 -m venv venv
source venv/bin/activate

# Install main workflow dependencies
pip install --upgrade pip
pip install -r requirements.txt
```

#### 2. Cellpose Environment

```bash
# Create and activate the Cellpose environment
python3.11 -m venv cellpose_venv
source cellpose_venv/bin/activate

# Install Cellpose and its dependencies
pip install --upgrade pip
pip install -r requirements_cellpose.txt
```

### Environment Structure

The workflow uses two separate virtual environments:

1. **Main Workflow Environment** (`venv/`)
   - Contains all dependencies for the main analysis pipeline
   - Used for running `single_cell_workflow.py` and other analysis scripts

2. **Cellpose Environment** (`cellpose_venv/`)
   - Dedicated environment for Cellpose and its dependencies
   - Uses NumPy < 2.0.0 for compatibility
   - Automatically activated when needed by the workflow

### Testing Cellpose Installation

To verify your Cellpose installation is working correctly:

1. Activate your Cellpose environment:
   ```bash
   source cellpose_venv/bin/activate
   ```

2. Launch the Cellpose GUI:
   ```bash
   python -m cellpose
   ```

## Configuration

### Automatic Configuration

The workflow includes automatic software detection and configuration:

```bash
python setup_workflow.py --create-config
```

This will:
- Detect ImageJ/Fiji installation paths
- Configure Cellpose environment paths
- Create a `config.json` file with proper settings
- Validate all software paths

## Usage

### Running the Complete Workflow

The complete workflow can be run with:

```bash
python single_cell_workflow.py --config config.json --input /path/to/input --output /path/to/output
```

### Optional Arguments

- `--skip`: Skip specific steps by name (e.g., `--skip interactive_segmentation`).
- `--start-from`: Start the workflow from a specific step name
- `--datatype`: Specify `single_timepoint` or `multi_timepoint`
- `--conditions`: Analyze only specified conditions
- `--channels`: Analyze only specified channels
- `--timepoints`: Analyze only specified timepoints
- `--regions`: Analyze only specified regions
- `--bins`: Specify the number of bins for grouping cells (default: 5)
- `--setup-only`: Only create the directory structure and copy raw data

### Example Usage

```bash
# Example: Analyze specific conditions and regions for channel 1
python single_cell_workflow.py \
    --config config.json \
    --input /path/to/input \
    --output /path/to/output \
    --conditions "Dish_1_Control" "Dish_2_Treatment" \
    --regions "R_1" "R_3" \
    --channels "ch01"
```

## File Format and Naming Conventions

The workflow expects microscopy data with the following naming conventions:
- Regions: `R_X` (where X is a number)
- Timepoints: `tXX` (e.g., `t00`, `t03`)
- Channels: `chXX` (e.g., `ch00`, `ch01`)

Example: `Dish_1_Control/Some_Subfolder/R_1_Merged_t00_ch01.tif`

## Workflow Integration

### ImageJ and Cellpose Integration

This workflow combines ImageJ automation for several steps and Cellpose for cell segmentation:

1. **ImageJ Steps**: Uses dedicated macro templates with parameter injection for clean, maintainable code.

2. **Cellpose Steps**: Cell segmentation is performed using Cellpose, which requires its own environment.

3. **Workflow Configuration**: The `config.json` file orchestrates these tools by specifying paths and parameters.

## Directory Structure

The workflow generates the following structure in the specified output directory:

```
/experiment_analysis/       # Specified output directory
├── raw_data/             # Copied raw data for selected conditions
├── preprocessed/         # Binned/preprocessed images
├── ROIs/                 # Region of interest files
├── cells/                # Extracted single cell images
├── grouped_cells/        # Cells grouped by intensity
├── grouped_masks/        # Masks for grouped cells
├── combined_masks/       # Combined masks from different groups
├── masks/                # Individual cell masks
├── analysis/             # Analysis results and measurements
├── .workflow_state.json  # Record of workflow progress and selections
```

## Key Components

1. **`single_cell_workflow.py`**: Main workflow orchestrator
2. **`config.json`**: Defines the sequence of steps, their types, paths, and arguments
3. **`scripts/`**: Contains individual Python and shell scripts executed by the workflow
4. **`macros/`**: Directory containing ImageJ macros used by the workflow

## Recent Updates

- **Clean Architecture Implementation**: Transformed all ImageJ-related scripts to use dedicated macro templates
- **Legacy Code Cleanup**: Removed over 2,700 lines of unused legacy infrastructure
- **Encoding Error Fixes**: Added robust CSV reading with multiple encoding support
- **Adaptive Cell Grouping**: Interactive capability to increase cell groups during thresholding
- **Improved Cell Grouping**: Enhanced algorithm with log transformation and K-means fallback
- **Configurable Grouping Bins**: Added `--bins` parameter (default: 5)

## Troubleshooting

### Installation Issues

1. **Python Version Issues**
   - Ensure Python 3.11 is installed: `python3.11 --version`
   - Install via Homebrew: `brew install python@3.11`

2. **Virtual Environment Issues**
   - Remove corrupted environments and reinstall:
     ```bash
     rm -rf venv cellpose_venv
     ./install.sh
     ```

3. **Path Detection Issues**
   - Run setup script: `python setup_workflow.py --create-config`

### Cellpose Integration Issues

1. **Cellpose Not Found**
   - Verify environment: `source cellpose_venv/bin/activate`
   - Check installation: `pip list | grep cellpose`

2. **Numpy Version Errors**
   - Fix with: `pip install "numpy<2" --force-reinstall`

3. **Memory Issues**
   - Process fewer images at a time or use smaller models

### Workflow Issues

1. **Encoding Errors**
   - Workflow automatically handles various encodings and filters macOS metadata files

2. **Missing Dependencies**
   - Activate environment: `source venv/bin/activate`
   - Install packages: `pip install -r requirements.txt`

3. **ImageJ Path Issues**
   - Run configuration: `python setup_workflow.py --create-config`

## Updating

To update the workflow:

1. Pull latest changes: `git pull`
2. Run installation script: `./install.sh`

## License

This project is licensed under the MIT License - see the LICENSE file for details.
