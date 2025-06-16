# Microscopy Analysis Workflow - Installation Guide

This guide covers the installation and setup of the microscopy analysis workflow with the new unified configuration system.

## Prerequisites

### Required Software (macOS)

1. **Python 3.11**
   - Check: `python3.11 --version`
   - Install via [python.org](https://www.python.org/downloads/) or Homebrew: `brew install python@3.11`

2. **ImageJ or Fiji**
   - **Recommended: Fiji** - Download from [fiji.sc](https://fiji.sc/)
   - Alternative: ImageJ from [imagej.nih.gov](https://imagej.nih.gov/ij/download.html)
   - Install to `/Applications/` for automatic detection

## Quick Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/microscopy-analysis-single-cell.git
cd microscopy-analysis-single-cell
```

### 2. Run the Installation Script

The installation script will:
- Create two separate virtual environments:
  - `venv` for the main workflow
  - `cellpose_venv` for Cellpose
- Install all required dependencies in each environment
- Verify the installations

```bash
./install.sh
```

## Manual Installation

If you prefer to install manually or the script fails, follow these steps:

### 1. Main Workflow Environment

```bash
# Create and activate the main workflow environment
python3.11 -m venv venv
source venv/bin/activate

# Install main workflow dependencies
pip install --upgrade pip
pip install -r requirements.txt
```

### 2. Cellpose Environment

```bash
# Create and activate the Cellpose environment
python3.11 -m venv cellpose_venv
source cellpose_venv/bin/activate

# Install Cellpose and its dependencies
pip install --upgrade pip
pip install -r requirements_cellpose.txt
```

## Environment Structure

The workflow uses two separate virtual environments:

1. **Main Workflow Environment** (`venv/`)
   - Contains all dependencies for the main analysis pipeline
   - Used for running `single_cell_workflow.py` and other analysis scripts
   - No version restrictions on NumPy

2. **Cellpose Environment** (`cellpose_venv/`)
   - Dedicated environment for Cellpose and its dependencies
   - Uses NumPy < 2.0.0 for compatibility
   - Automatically activated when needed by the workflow

## Usage

### Running the Workflow

1. Activate the main workflow environment:
   ```bash
   source venv/bin/activate
   ```

2. Run the workflow:
   ```bash
   python single_cell_workflow.py --config config.json --input /path/to/input --output /path/to/output
   ```

The workflow will automatically use the correct Cellpose environment when needed.

### Running Cellpose Directly

If you need to run Cellpose directly:

```bash
source cellpose_venv/bin/activate
cellpose --gui
```

## Troubleshooting

### Common Issues

1. **Python Version Issues**
   - Ensure Python 3.11 is installed: `python3.11 --version`
   - If not found, install via Homebrew: `brew install python@3.11`

2. **Virtual Environment Issues**
   - If environments are corrupted, remove them and run `install.sh` again:
     ```bash
     rm -rf venv cellpose_venv
     ./install.sh
     ```

3. **Cellpose Installation Issues**
   - If Cellpose fails to install, try installing in the cellpose environment:
     ```bash
     source cellpose_venv/bin/activate
     pip install "numpy<2"  # Install compatible NumPy first
     pip install "cellpose[gui]"
     ```

4. **Path Detection Issues**
   - Run the setup script to detect and configure paths:
     ```bash
     python setup_workflow.py --create-config
     ```

### Getting Help

If you encounter any issues:
1. Check the error messages in the terminal
2. Look for log files in the output directory
3. Ensure both virtual environments are properly set up
4. Verify that ImageJ/Fiji is installed and accessible

## Updating

To update the workflow:

1. Pull the latest changes:
   ```bash
   git pull
   ```

2. Run the installation script again:
   ```bash
   ./install.sh
   ```

This will update both environments with any new dependencies. 