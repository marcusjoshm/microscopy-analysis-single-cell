# Microscopy Single Cell Analysis Workflow Protocol

## Introduction

This document provides step-by-step instructions for running our single cell analysis workflow on the lab Macbook Pro. Each section includes detailed explanations and commands you can copy and paste directly into your Terminal.

> **Note:** Terminal is Mac's command-line interface where you can type commands to interact with your computer.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Step 1: Remove Spaces from File Names](#step-1-remove-spaces-from-file-names)
3. [Step 2: Activate the Python Environment](#step-2-activate-the-python-environment)
4. [Step 3: Run the Analysis Workflow](#step-3-run-the-analysis-workflow)
5. [Step 4: Data Analysis Selection](#step-4-data-analysis-selection)
6. [Step 5: Cellpose Segmentation](#step-5-cellpose-segmentation)
7. [Step 6: Otsu Thresholding](#step-6-otsu-thresholding)
8. [Tips and Tricks](#Tips-and-Tricks)
9. [Troubleshooting](#troubleshooting)

## Getting Started

### Export Data from LASX

This workflow is designed to work seamlessly with data exported directly from LASX. It relies on the file naming and directory structure used by LASX when images are exported as .tiff files. From LASX, highlight the images you want to export from the `Open projects` tab. Right click and select "Export Image". Make a new folder in the E drive to export your data and click OK. Make sure "Export Channels" is checked and RAW image is selected, then click Save. Copy the export folder to the LEELAB surver from the microscope PC. You can now proceed to analysis on the lab Macbook Pro.

> **Important:** Avoid using a `+` when naming files. It will cause the workflow to fail.
> 
### Opening Terminal

1. Press Command + Space to open Spotlight Search
2. Type "Terminal"
3. Click on the Terminal application

Alternatively you can click on the Terminal app icon located in the doc at the bottom of the screen. It looks like a black square with >_ in the top left corner.

When Terminal opens, you'll see a prompt that looks something like `(base) ➜  ~`


## Step 1: Remove Spaces from File Names

Our analysis workflow requires file paths without spaces. Follow these steps to convert spaces in your file names to underscores:

1. Copy and paste the following command into Terminal:

```bash
cd ~/bash_scripts/
```

3. Press `Enter`.

2. Next, copy and paste this command:

```bash
./replace_spaces.sh
```

3. Drag the folder you want to analyze from Finder into the Terminal window. The file path will appear automatically.

4. Press `Enter`.

5. You will see a prompt that looks like this:

```
========================================================
  Space to Underscore Converter - Enhanced Version
========================================================
```

Followed by information about the directory you want to modify.

6. At the end, you will see:

```
Do you want to continue? (y/n)
```

7. Type `y` and press Enter to run the program.

8. When the process completes successfully, you will see:

```
[SUCCESS] Operation completed successfully!
```

This means the program has finished removing spaces from all file names in the directory and you're ready to proceed to the analysis workflow.

## Step 2: Activate the Python Environment

In the same Terminal window:

1. Copy and paste the following commands:

```bash
cd ~/microscopy-analysis-single-cell
venvact
```

2. Press `Enter`.

3. You should now see `(venv)` at the beginning of the command prompt line. This indicates that the Python virtual environment is activated and the program is ready to run.

Example of how your prompt should look:
```bash
(venv) (base) ➜  microscopy-analysis-single-cell git:(main) ✗
```

## Step 3: Run the Analysis Workflow

Now you'll run the single cell analysis script:

1. Copy and paste the following into Terminal:

```bash
python single_cell_workflow.py --config workflow_config.json
```

2. After pasting the above, press Space and type `--input` followed by another Space.

3. Drag the folder you want to analyze from Finder into the Terminal window. The absolute file path will appear.

4. Press Space and type `--output` followed by another Space.

5. Drag the same folder into Terminal again.

6. After the path appears, add `_analysis` followed by a description at the end of the folder name. Make sure there are no spaces in the file path.

Your final command should look something like this:
```bash
python single_cell_workflow.py --config workflow_config.json --input /Volumes/LEELAB/JL_Data/2025-05-08_export_max --output /Volumes/LEELAB/JL_Data/2025-05-08_analysis_Dish_1_Control_40minWash
```

7. Press `Enter` to start the analysis.

8. The script will create an output folder with the name you specified, containing all analysis results.

> **Important:** Remember that the output folder name can be anything you want as long as there are no spaces in it. Use underscores (_) instead of spaces.

## Step 4: Data Analysis Selection

After starting the analysis workflow, you'll need to make selections about your data:

### Selecting Data Type

The program will prompt you to select the type of data you're analyzing:

```
================================================================================
MANUAL STEP REQUIRED: select_datatype
================================================================================
Select the type of data: single_timepoint or multi_timepoint. You can specify the datatype when running the script with the --datatype option.

Detected datatype based on found timepoints: single_timepoint
Select data type:
1. single_timepoint
2. multi_timepoint
Enter selection (number or name, press Enter for detected default):
```

**Important:** 
- Choose `single_timepoint` (option 1) for immunofluorescence or single time-point live microscopy
- Choose `multi_timepoint` (option 2) for time-lapse microscopy data only

Make your selection by typing "1" or "2" followed by Enter. If the detected default is correct, you can simply press Enter.

### Selecting Condition

Next, you'll see a prompt to select the experimental condition for analysis:

```
================================================================================
MANUAL STEP REQUIRED: select_condition
================================================================================
```

"Condition" in this case will be the name of the .lif project file where data was exported. If you exported data from multiple project files, there will be a list of conditions to choose from, otherwise there will only be one. An example of a condition list looks something like this:

```
Available conditions:
1. Dish_1_Sec61b_Washout_+_DMSO
2. Dish_2_Sec61b_Washout_+_Rapa
3. Dish_3_RTN4_Washout_+_DMSO
4. Dish_4_RTN4_Washout_+_Rapa
5. Dish_5_CLIMP63_Washout_+_DMSO
6. Dish_6_CLIMP63_Washout_+_Rapa

Input options for conditions:
- Enter conditions as space-separated text (e.g., 'Dish_1_Sec61b_Washout_+_DMSO Dish_6_CLIMP63_Washout_+_Rapa')
- Enter numbers from the list (e.g., '1 6')
- Type 'all' to select all conditions

Enter your selection:
```

Type the number of the project file you would like to analyze. If you want to analyze multiple condition datasets at the same time, type the numbers separated by a space, or type "all" if you want to analyze everything. Then press `Enter`.

### Selecting Timepoints

Next, you'll see a prompt to select timepoints for analysis:

```
================================================================================
MANUAL STEP REQUIRED: select_timepoints
================================================================================
Review available timepoints in the raw data and decide which timepoints to use for analysis. Current experiment has timepoints: t00. Press Enter when you have made your selection. You can specify timepoints when running the script with --timepoints option.

Available timepoints:
1. t00

Input options for timepoints:
- Enter timepoints as space-separated text (e.g., 't00 t00')
- Enter numbers from the list (e.g., '1 1')
- Type 'all' to select all timepoints

Enter your selection:
```

For `single_timepoint` data, there will only be one option (1. t00). Simply type "1" and then Enter.

For `multi_timepoint` data, the program will list all available timepoints like this:
```
Available timepoints:
1. t00
2. t01
3. t02
4. t03
5. t04
```

The first timepoint will always be t00. You can:
- Type "all" to select all timepoints
- Enter specific timepoints separated by spaces

For example, to select only the first and last timepoints from the list above:
```
Enter your selection: 1 5
```

**Important for multi_timepoint data:** The program has a feature that tracks cells across timepoints, so each ROI number from a given dataset corresponds to the same cell throughout the analysis.

### Selecting Regions

After selecting timepoints, you'll be prompted to select regions for analysis:

```
================================================================================
MANUAL STEP REQUIRED: select_regions
================================================================================
Review available regions in the raw data and decide which regions to use for analysis. Current experiment has regions:
```

You'll see a list of available regions like this example:

```
Available regions:
1. Control_40minWash_TS1
2. Control_40minWash_TS2
3. Control_40minWash_TS3
4. Control_MG132_40minWash_TS1
5. Control_MG132_40minWash_TS2
6. Control_NaAsO2_TS1
7. Control_NaAsO2_TS2
...and so on
```

The region names will match the file names exported from LASX. The prompt will show:

```
Input options for regions:
- Enter regions as space-separated text (e.g., 'Control_40minWash_TS1 LSG1i_VCPi_40minWash_TS2')
- Enter numbers from the list (e.g., '1 21')
- Type 'all' to select all regions

Enter your selection: 
```

Make your selection by entering numbers separated by spaces. For example, to analyze all Control_40minWash tile-scans from the example above:

```
Enter your selection: 1 2 3
```

**Important:** Make sure all selected regions were captured with the same channels, or the program will terminate.

### Selecting Channels

After selecting regions, you'll be prompted to select channels:

```
================================================================================
MANUAL STEP REQUIRED: select_channels
================================================================================
Review available channels:

Available channels:
1. ch00
2. ch01

Input options for channels:
- Enter channels as space-separated text (e.g., 'ch00 ch01')
- Enter numbers from the list (e.g., '1 2')
- Type 'all' to select all channels

Enter your selection:
```

The channels will be in the order of capture settings configured in LASX:
- ch00 corresponds to the channel setting at the top
- ch01 is the second channel
- And so on

**Important:** Select only ONE channel at a time for analysis. For example, if you are analyzing stress granules, select the channel that corresponds to G3BP1.

Enter your channel selection and press Enter to continue with the analysis.

## Step 5: Cellpose Segmentation

After making all data selections, Cellpose and ImageJ will automatically open. Follow these steps to perform cell segmentation:

1. Click on the Cellpose GUI window. You should see "Python" at the top of the screen next to the Apple symbol.

2. Click on **File > Load image** and navigate to the output folder you specified when running the workflow.

3. Go into the **preprocessed** folder and navigate through the subdirectories to find files for segmentation:
   - The program separates files by condition and time-point
   - There will be two layers of folders before reaching the image files
   - Look for files starting with "bin4x4_"
   
   > **Note:** Cellpose cannot handle large tile-scans, so the program shrinks the files for segmentation purposes only.

4. Select the file you want to segment and click **Open**.

5. In the segmentation section on the left panel, find "additional settings" with an upward arrow. Click on the arrow to open the settings options.

6. Configure the segmentation parameters:
   - Next to **diameter:** enter a number in pixels that corresponds to the average size of a cell
     - A magenta circle at the bottom of the screen shows the relative size of your selection
     - Adjust the number until the circle roughly matches the size of your cells
     - Typically, cells are between 70 and 150 pixels depending on cell type and pixel size
   - Next to **niter dynamics:** enter "250"

7. Click the **run CPSAM** button to start segmentation.

8. When segmentation finishes, masks of different colors will appear.

9. Manually remove partial cells at the edges:
   - Go to the Drawing panel on the left
   - Under "delete multiple ROIs" click **click-select**
   - Click on the colored masks you want to delete
   - Selected masks will change color to grey
   - When all unwanted masks are selected, click **done** to delete them
   > **Note:** The program groups cells based on relative expression level. For this reason it is important to remove partial cells at the edge of the field or grouping may not work as expected. It is also good practive to avoid analyzing partial cells because this could scew results.

10. Fix incorrect segmentation if needed:
    > **Note:** The new Cellpose-SAM model (SAM stands for <u>S</u>egment <u>A</u>nything <u>M</u>odel) makes fewer mistakes but they do still occur sometimes
    - Delete problematic masks using the process above
    - Manually draw new masks by:
      - Holding down the space bar and clicking on the image
      - Moving the cursor (no need to hold the space bar) to draw a new mask
      - The mask will automatically display when the shape is completed

11. When segmentation is complete, click **File > Save outlines as .zip archive of ROI files for ImageJ**.

12. Repeat this process for all files you selected to analyze.

13. When finished with all files:
    - Close the Cellpose window
    - Click on the Terminal window
    - Press Enter to continue

At this point, ImageJ macros will run that:
- Resizes the segmented ROIs
- Creates files for the individually segmented cells

## Step 6: Otsu Thresholding

Once the ImageJ macros complete, ImageJ will launch again for guided thresholding:

1. The program groups cells with similar expression levels to allow large groups of cells to be thresholded at the same time.
   > **Note:** This is particularly useful for experiments with polyclonal over-expression.

2. A window will pop up with instructions:
   ```
   Please draw an oval ROI in a representative area for thresholding, then click OK.
   ```

3. An image will also appear showing individual cells with similar intensity levels.
   > **Note:** The default for the program is 5 groups.

4. Draw an oval around the area you want to threshold:
   - For example, if analyzing stress granules from a fluorescence image of G3BP1, draw an oval around some of the stress granules

5. To check how the Otsu thresholding will work with your ROI placement:
   - Press **Shift + T** to bring up the Threshold window
   - Select "Otsu" from the drop-down menu
   - Click **Reset** and then **Auto**
   - Areas identified by thresholding will appear in red
   
6. If the current ROI placement doesn't properly threshold all desired structures or is picking up undesired areas:
   - Draw a new ROI around a different region
   - Test again by clicking **Auto** from the thresholding window
   
7. When satisfied with the ROI placement, click **OK** on the pop-up window

> **Note:** If an acceptable ROI placement doesn't exist, draw an ROI anywhere and press `OK`. There will be options later to handle situations like this.

8. A new window titled "**Evaluate Cell Grouping**" will appear with the message:
   ```
   Based on what you see in this image, do you want to:
   Decision:
   ```
   
   Followed by a dropdown menu with two options:
   - Continue with thresholding
   - Go back and add one more group
   - Ignore thresholding for this group. There are no structures to threshold in the field

9. Choose the appropriate option:
   - If the image contains cells with equal expression levels and the Otsu auto thresholding accurately identifies desired structures, select **Continue with thresholding** and click **OK** (or simply press Enter)
   - If an image is difficult to threshold properly, select **Go back and add one more group** and click **OK**
   - If there aren’t any features in the image to threshold (for example, an image where none of the cells have stress granules or P-bodies), select **Ignore thresholding for this group. There are no structures to threshold in the field** and click **OK**

10. If you selected "Go back and add one more group":
    - A window will appear with the message:
      ```
      Your request for more bins has been recorded. The workflow will restart the cell grouping step with more bins. You can now close ImageJ.
      ```
    - Click **OK**
    - The program will repeat the grouping step with one more group than before
    - Continue this process until all images can be thresholded properly

11. Once all images have been thresholded successfully:
    - The ImageJ toolbar will appear
    - A message in the log window will read:
      ```
      Thresholding of grouped cells completed.
      ```

12. Close ImageJ:
    - Close the ImageJ toolbar directly, or
    - Select **File > Quit**

13. The program will automatically:
    - Resume processing
    - Segment the binary masks
    - Analyze particles in the background
    - Compile all results into a .csv file in the analysis folder of your output directory

14. When the process is complete, you'll see this message in the Terminal window:
    ```
    SingleCellWorkflow - INFO - Workflow completed successfully
    ```

At this point, your analysis is complete and the results are ready for review.

## Tips and Tricks

### Terminal Navigation

### Terminal Navigation

Here are some helpful tips for using the Terminal efficiently, saving you a lot of time when running this workflow. 

1. **Command History**:
   - Press the **Up Arrow** key to cycle through previously entered commands. The command for running the workflow is long, so by entering the command each time, you can press the **up** key and change the output folder name when analyzing a large dataset. 
   - Type part of a previous command and then press **Up Arrow** to search through history for commands that match what you've typed. Let's say you want to rerun the workflow but don't want to type out the entire command. However, someone used the Terminal before you, and the previous workflow commands are far back in history. You can type `python sing` and then press the **up** key, and the Terminal will only cycle through commands that start with `python sing`.
2. **Tab Completion**:
   - Press the **Tab** key to auto-complete file and directory names. This will save you lots of time if you prefer to type out commands rather than copy and paste from the protocol. For example, to remove spaces from file names without coping and pasting the commands from the protocol, you can type `cd ~/ba` then `tab`, and if there are no other directories that start with "ba," it will fill in `cd ~/bash_scripts`. Similarly, if your working directory is `/Users/leelab/bash_scripts` and you type `./r` followed by `tab`, it will fill in `./replace_spaces.sh`.
3. **Text Navigation**:
The following are useful commands for typing in the Terminal:
   - **Control + A**: Move cursor to the beginning of the line
   - **Control + E**: Move cursor to the end of the line
   - **Control + U**: Clear the line before the cursor
   - **Control + K**: Clear the line after the cursor
     
## Troubleshooting

### Common Errors and Solutions

I will include common errors in the workflow here, what to look for if there is an issue, and how to fix it. If you run into an unexpected error or issue, take a screenshot and document the issue.

#### Need Additional Help?

If you encounter persistent issues, please contact:
- IT Support: joshua.marcus@bcm.edu

 
 
 
 
 
 
# Microscopy Analysis for Single-Cell Imaging Documentation

End-to-end single-cell analysis workflow for fluorescence microscopy datasets exported from LASX.

It uses cellpose for single-cell segmentation. Then, cells are grouped according to similar expression levels. It uses imageJ for assisted intensity-based auto thresholding to generate binary masks for particle analysis. The workflow saves all the processed files, including:

- raw .tifs
- ROIs of the individual cells
- .tifs of the individual cells
- binary masks of the thresholded data as individual cells and the complete tile-scan
- particle analysis, including particle count and area per cell, saved as a .csv

This workflow was optimized for quantifying stress granules and other cytoplasmic biomolecular condensates. 

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

### Input Directory Structure

The workflow now automatically prepares and standardizes your input directory structure. It handles three common organizational patterns from LASX exports:

1. **Flat structure**: .tif files directly in the input directory
   - Creates `condition_1/timepoint_1/` structure
   - Moves all .tif files into the timepoint directory

2. **One-level structure**: Subdirectories containing .tif files 
   - Treats each subdirectory as a condition
   - Creates `timepoint_1/` under each condition
   - Moves .tif files into appropriate timepoint directories

3. **Two-level structure**: Conditions with timepoint subdirectories containing .tif files
   - Already properly formatted, no changes needed

This automatic preparation happens as the first step in the workflow, before any data selection or processing occurs.

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

- **Staged Directory Creation:** Implemented a more progressive directory creation process:
  - `setup_base_directories`: Creates only the top-level directories first
  - `setup_condition_directories`: Creates condition subdirectories right after condition selection
  - `setup_timepoint_directories`: Creates timepoint placeholder directories after timepoint selection
  - `setup_analysis_directories`: Creates final region-timepoint directories and copies only relevant files
  - This gives users visual feedback as they progress through selections
  - Ensures a cleaner directory structure with only needed subdirectories

- **Prepare Input Structure First:** Rearranged workflow to run prepare_input_structure.sh before any selection steps:
  - Input data is now properly organized before users make any selections
  - Enables proper metadata extraction from the standardized structure
  - Selection steps now present accurate condition/region/timepoint options

- **Automatic Input Structure Preparation:** Added preprocessing step to standardize data directories:
  - Automatically detects and handles three common input structure patterns from LASX exports
  - Removes unnecessary MetaData directories
  - Creates proper condition/timepoint directory hierarchy for any input organization
  - Runs before any other workflow steps to ensure compatibility
- **Improved Directory Setup Workflow:** Reorganized the workflow sequence:
  - First creates base directories regardless of selections
  - Performs datatype, condition, channel, timepoint, and region selections in sequence
  - Creates subdirectories based on selections after all choices are made
  - Better handles any directory structure without requiring "Dish_" naming convention
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
