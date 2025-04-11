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
- Cellpose for cell segmentation

### Installation

1. Clone this repository
2. Create a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. Install required packages:
   ```
   pip install numpy scipy pandas matplotlib scikit-image opencv-python tqdm scikit-learn read-roi
   ```

### Cellpose Installation and Setup

This workflow relies on [Cellpose](https://github.com/mouseland/cellpose) for cell segmentation. Cellpose should be installed in a separate dedicated environment:

#### Option 1: Using conda (recommended)

1. Create a dedicated conda environment for Cellpose:
   ```
   conda create -n cellpose python=3.9
   conda activate cellpose
   ```

2. Install numpy<2 (required for Cellpose compatibility):
   ```
   pip install "numpy<2"
   ```

3. Install Cellpose with GUI support:
   ```
   python -m pip install cellpose[gui]
   ```

4. (Optional) For GPU acceleration (requires NVIDIA GPU):
   ```
   conda install pytorch pytorch-cuda=11.6 -c pytorch -c nvidia
   ```

#### Option 2: Using venv

1. Create a dedicated virtual environment for Cellpose:
   ```
   python -m venv cellpose_env
   source cellpose_env/bin/activate  # On Windows: cellpose_env\Scripts\activate
   ```

2. Install numpy<2 (required for Cellpose compatibility):
   ```
   pip install "numpy<2"
   ```

3. Install Cellpose with GUI support:
   ```
   python -m pip install cellpose[gui]
   ```

#### Testing Cellpose Installation

To verify your Cellpose installation is working correctly:

1. Activate your Cellpose environment:
   ```
   conda activate cellpose  # or source cellpose_env/bin/activate
   ```

2. Launch the Cellpose GUI:
   ```
   python -m cellpose
   ```

#### Integrating Cellpose with the Workflow

The workflow config file (`workflow_config.json`) should include paths to activate your Cellpose environment. Update the paths in your configuration:

1. For conda environments (example for Linux/Mac):
   ```json
   {
     "steps": [
       {
         "name": "interactive_segmentation",
         "type": "script",
         "path": "/path/to/your/conda/installation/bin/conda",
         "args": ["run", "-n", "cellpose", "python", "-m", "cellpose", "--dir", "{grouped_cells_dir}", "--chan", "0", "--save_png"]
       }
     ]
   }
   ```

2. For venv environments (example for Linux/Mac):
   ```json
   {
     "steps": [
       {
         "name": "interactive_segmentation",
         "type": "script",
         "path": "/bin/bash",
         "args": ["-c", "source /path/to/cellpose_env/bin/activate && python -m cellpose --dir {grouped_cells_dir} --chan 0 --save_png"]
       }
     ]
   }
   ```

For Windows users, adjust paths accordingly using appropriate command syntax.

### Workflow Integration with ImageJ and Cellpose

This workflow combines ImageJ automation for several steps and Cellpose for cell segmentation. The integration works as follows:

1. **ImageJ Steps**: The workflow uses ImageJ for preprocessing, ROI extraction, and mask processing. These steps generate `.ijm` macro files that are executed by ImageJ in headless mode or with GUI interaction as needed.

2. **Cellpose Steps**: Cell segmentation is performed using Cellpose, which requires its own environment. The workflow can be configured to call Cellpose either:
   - Interactively through the GUI for manual supervision
   - In headless mode for automated processing

3. **Workflow Configuration**: The `workflow_config.json` file orchestrates these tools by specifying:
   - The path to your ImageJ installation
   - The command to activate and run Cellpose
   - Parameters for each processing step

When setting up the workflow on a new system, ensure both ImageJ and Cellpose are correctly installed and their paths are properly configured in the workflow configuration file.

### Customizing the Cellpose Launch Script

The workflow includes a launch script for Cellpose integration (`scripts/launch_segmentation_tools.sh`). You'll need to customize this script for your specific environment:

1. Open the launch script:
   ```
   nano scripts/launch_segmentation_tools.sh
   ```

2. Update the following paths to match your installation:
   ```bash
   # Path to Cellpose installation
   CELLPOSE_DIR="/path/to/your/cellpose"  # Directory containing Cellpose environment
   
   # Path to FIJI/ImageJ executable
   IMAGEJ_PATH="/path/to/your/Fiji.app/ImageJ-xyz"  # Your ImageJ executable path
   ```

3. If using conda instead of venv, modify the environment activation:
   ```bash
   # Replace this line:
   source venv/bin/activate
   
   # With this for conda:
   conda activate cellpose
   ```

Example for conda environment on Windows:
```bash
#!/bin/bash
# Path to Cellpose installation (where conda is installed)
CELLPOSE_DIR="C:/Users/username/miniconda3"

# Path to FIJI/ImageJ executable
IMAGEJ_PATH="C:/Program Files/Fiji.app/ImageJ-win64.exe"

# Activate conda environment
eval "$('C:/Users/username/miniconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
conda activate cellpose

# Continue with script...
```

For fully automated workflows, you can also modify the workflow configuration to run Cellpose in headless mode:

```json
{
  "name": "interactive_segmentation",
  "type": "script",
  "path": "/bin/bash",
  "args": ["-c", "source /path/to/cellpose_env/bin/activate && python -m cellpose --dir {preprocessed_dir} --pretrained_model cyto --chan 2 --chan2 3 --diameter 30 --flow_threshold 0.4 --no_npy --verbose"],
  "description": "Run Cellpose segmentation in headless mode"
}
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

### Optional Arguments

- `--skip`: Skip specific steps by name (e.g., `--skip interactive_segmentation`).
- `--start-from`: Start the workflow from a specific step name, automatically skipping all preceding steps (e.g., `--start-from threshold_grouped_cells`).
- `--datatype`: Specify `single_timepoint` or `multi_timepoint` to override manual selection.
- `--conditions`: Analyze only specified conditions (e.g., `--conditions "Dish_1" "Dish_2"`).
- `--channels`: Analyze only specified channels (e.g., `--channels "ch00" "ch01"`).
- `--timepoints`: Analyze only specified timepoints (e.g., `--timepoints "t00" "t03"`).
- `--regions`: Analyze only specified regions (e.g., `--regions "R_1" "R_2"`).
- `--bins`: Specify the number of bins for grouping cells (default: 3). For example, `--bins 5` will create 5 intensity-based cell groups.
- `--setup-only`: Only create the directory structure and copy raw data; do not run any processing steps.

### Example Usage with Optional Arguments

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

To use 5 bins for cell grouping instead of the default 3:

```
python single_cell_workflow.py \
    --config workflow_config.json \
    --input /path/to/input \
    --output /path/to/output \
    --bins 5
```

### Single Timepoint Data

For datasets that only contain a single timepoint (or if you only want to process one), ensure the files have a timepoint identifier (e.g., `t00`). The workflow will automatically detect this as `single_timepoint` data.

Run the workflow normally. The `roi_tracking` step (designed for multi-timepoint data) can optionally be skipped if not needed:

```
python single_cell_workflow.py --config workflow_config.json --input /path/to/input --output /path/to/output --skip roi_tracking
```

### Adaptive Cell Grouping

The workflow now supports adaptive cell grouping, which allows you to interactively increase the number of groups if you find that the current grouping doesn't properly separate cell populations with different expression levels.

During the `threshold_grouped_cells` step, you'll be presented with a dialog asking if you want to add more bins. If you choose "Add more bins":

1. The workflow will increment the bin count by 1
2. Automatically restart from the `group_cells` step with the new bin count
3. Reprocess the cell grouping and continue with the workflow

This adaptive approach is particularly useful when:
- You're unsure how many bins to use initially
- The cell population has subtle expression level differences that may require fine-tuning
- You discover during visualization that the current grouping is insufficient

You can repeat this process multiple times if needed, incrementally adding bins until you achieve optimal separation.

### Configuration

The workflow is configured through a JSON file (`workflow_config.json`). You can customize:
- ImageJ path
- Processing steps and their parameters

### Temporary Macro Files

During the workflow execution, temporary ImageJ macro files (`temp_*.ijm`) may be generated in the `macros/` directory. These files contain the specific parameters and file paths used for certain ImageJ-based steps during that particular run (e.g., `temp_extract_cells.ijm`, `temp_resize_rois.ijm`).

While these files are technically temporary for a single execution, they are included in the repository to provide concrete examples of the macro content generated by the Python scripts under specific conditions. They can be helpful for understanding or debugging the macro generation logic.

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

- **Adaptive Cell Grouping:** Added interactive capability to increase the number of cell groups during thresholding:
  - Users can now request more bins for better separation when viewing grouped cell images
  - The workflow will automatically restart the cell grouping step with an increased bin count
  - This feature helps to iteratively refine cell grouping without manually restarting the workflow
- **Improved Cell Grouping:** Enhanced cell grouping algorithm to better handle varying intensity distributions:
  - Added log transformation for wide dynamic ranges
  - Implemented K-means fallback when GMM clustering struggles
  - Added quantile-based binning for even distribution
  - Improved diagnostic logging to help troubleshoot clustering issues
- **Configurable Grouping Bins:** Added `--bins` parameter to specify the number of intensity groups (default: 3)
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

## Troubleshooting

### Cellpose Integration Issues

1. **Cellpose Not Found:**
   - Verify your Cellpose environment is correctly activated before running `python -m cellpose`
   - Check that Cellpose is installed in the environment with `pip list | grep cellpose`

2. **GPU Not Detected:**
   - If you have a CUDA-compatible GPU but Cellpose isn't using it, verify CUDA installation with `nvidia-smi`
   - Check pytorch installation with `python -c "import torch; print(torch.cuda.is_available())"`
   - Reinstall pytorch with CUDA support if needed

3. **Numpy Version Errors:**
   - Cellpose requires numpy version less than 2.0
   - If you encounter errors like `AttributeError: module 'numpy' has no attribute 'float'`, check your numpy version with `pip list | grep numpy`
   - Fix by running: `pip install "numpy<2" --force-reinstall`

4. **ImageJ and Cellpose Communication:**
   - Ensure ROI files are being saved in a format both tools can read
   - For manual segmentation, export from Cellpose as ROIs and verify they can be opened in ImageJ

5. **Memory Issues:**
   - If Cellpose crashes due to memory limitations, try:
     - Processing fewer images at a time
     - Using a smaller model (like `cyto` instead of `cyto2`)
     - Setting a smaller diameter parameter

For further assistance with Cellpose, refer to the [official Cellpose documentation](https://github.com/mouseland/cellpose).
