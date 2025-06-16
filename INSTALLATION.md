# Microscopy Analysis Workflow - Installation Guide

This guide covers the installation and setup of the microscopy analysis workflow with the new unified configuration system.

## Prerequisites

### Required Software (macOS)

1. **Python 3.8+**
   - Check: `python3 --version`
   - Install via [python.org](https://www.python.org/downloads/) or Homebrew: `brew install python`

2. **ImageJ or Fiji**
   - **Recommended: Fiji** - Download from [fiji.sc](https://fiji.sc/)
   - Alternative: ImageJ from [imagej.nih.gov](https://imagej.nih.gov/ij/download.html)
   - Install to `/Applications/` for automatic detection

3. **Cellpose**
   - Install with GUI support: `python -m pip install 'cellpose[gui]'`
   - This includes all required dependencies for both command-line and GUI usage
   - Alternative: Install via conda: `conda install -c conda-forge cellpose`
   - Verify installation: `python -c "import cellpose; print(cellpose.__version__)"`

## Quick Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/microscopy-analysis-single-cell.git
cd microscopy-analysis-single-cell
```

### 2. Install Python Dependencies

```bash
pip install -r requirements.txt
```

*Note: If `requirements.txt` doesn't exist, install these packages:*
```bash
# Install core dependencies
pip install numpy pandas scipy scikit-learn matplotlib opencv-python

# Install Cellpose with GUI support
python -m pip install 'cellpose[gui]'
```

### 3. Run Setup

The new setup system will automatically detect your software installations:

```bash
python setup_workflow.py
```

This will:
- Automatically detect ImageJ/Fiji and Cellpose installations
- Create configuration files
- Validate all paths
- Report any missing software

### 4. Verify Installation

```bash
python setup_workflow.py --check
```

## Manual Configuration (if automatic detection fails)

If the automatic detection doesn't find your software:

### 1. Create Configuration Manually

```bash
python setup_workflow.py --create-config --force
```

### 2. Find Your Software Paths

**For ImageJ/Fiji:**
```bash
# If installed in Applications
ls /Applications/Fiji.app/Contents/MacOS/
ls /Applications/ImageJ.app/Contents/MacOS/

# If installed via Homebrew
which ImageJ
```

**For Cellpose:**
```bash
# Check if available in current environment
python -c "import cellpose; print(cellpose.__file__)"

# Check if command is available
which cellpose
```

### 3. Edit Configuration

Edit `config_new.json` and update the paths manually:

```json
{
  "software": {
    "imagej_path": "/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx",
    "cellpose_env": "/usr/local/bin/python3",
    "python_path": "/usr/local/bin/python3"
  }
}
```

### 4. Validate Configuration

```bash
python setup_workflow.py --validate
```

## Configuration Files

The new system uses these configuration files:

- **`config_new.json`** - Main configuration (auto-generated, gitignored)
- **`config_new.template.json`** - Template for new installations
- **`workflow_config.json`** - Workflow steps and parameters (unchanged)

## Software Detection

The system automatically searches for software in these locations:

### ImageJ/Fiji Detection
- `/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx`
- `/Applications/ImageJ.app/Contents/MacOS/JavaApplicationStub`
- Homebrew installations: `/usr/local/bin/ImageJ`, `/opt/homebrew/bin/ImageJ`
- User Applications: `~/Applications/`
- Spotlight search for "Fiji" and "ImageJ" applications

### Cellpose Detection
- Current Python environment
- Common conda environments
- Standard Python installations
- PATH-based detection

## Troubleshooting

### ImageJ/Fiji Not Found

1. **Download and Install Fiji:**
   - Go to [fiji.sc](https://fiji.sc/)
   - Download for macOS
   - Drag to Applications folder

2. **Verify Installation:**
   ```bash
   ls /Applications/Fiji.app/Contents/MacOS/
   ```

3. **Test Manually:**
   ```bash
   /Applications/Fiji.app/Contents/MacOS/ImageJ-macosx --help
   ```

### Cellpose Not Found

1. **Install Cellpose with GUI Support:**
   ```bash
   # Install with GUI support (recommended)
   python -m pip install 'cellpose[gui]'
   
   # Or install basic version
   pip install cellpose
   ```

2. **Verify Installation:**
   ```bash
   # Check version and dependencies
   python -c "import cellpose; print('Cellpose version:', cellpose.__version__)"
   
   # Test GUI (if installed with GUI support)
   python -m cellpose
   ```

3. **Test Command:**
   ```bash
   cellpose --help
   ```

### Configuration Issues

1. **Reset Configuration:**
   ```bash
   rm config_new.json
   python setup_workflow.py --create-config
   ```

2. **Manual Path Detection:**
   ```bash
   python path_detection.py
   ```

3. **Check Logs:**
   The setup process provides detailed logging. Run with `--verbose` for more information:
   ```bash
   python setup_workflow.py --verbose
   ```

### Legacy Configuration

If you have an existing installation with the old configuration system:

1. **Keep Current Config:** The old `workflow_config.json` remains unchanged
2. **Automatic Migration:** The system will detect and use legacy configs when needed
3. **Manual Migration:** To fully migrate to the new system:
   ```bash
   python setup_workflow.py --create-config
   ```

## Usage

Once installed, run the workflow as usual but input/output directories are now specified at runtime:

```bash
# Run full workflow
python single_cell_workflow.py \
  --config workflow_config.json \
  --input /path/to/your/data \
  --output /path/to/output

# Run from specific step
python single_cell_workflow.py \
  --config workflow_config.json \
  --input /path/to/your/data \
  --output /path/to/output \
  --start-from extract_cells
```

## Key Improvements

✅ **Automatic software detection** - No more manual path configuration  
✅ **Path validation** - Ensures software is working before running workflow  
✅ **Simplified setup** - Single command installation check  
✅ **Legacy compatibility** - Works with existing workflow configs  
✅ **Better error messages** - Clear guidance when software is missing  
✅ **No hardcoded paths** - Portable across different Mac setups  

## Next Steps

After successful installation:

1. **Prepare your data** according to the expected directory structure
2. **Run the workflow** with your specific input and output directories
3. **Check the main README.md** for detailed workflow usage instructions

## Support

If you encounter issues:

1. Run the diagnostic check: `python setup_workflow.py --check --verbose`
2. Check the troubleshooting section above
3. Ensure all required software is properly installed
4. Create an issue with the diagnostic output if problems persist 