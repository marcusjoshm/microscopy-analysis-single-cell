#!/bin/bash
# This script launches both Cellpose and ImageJ for interactive segmentation work

# Get the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WORKSPACE_DIR="$(dirname "$SCRIPT_DIR")"

# Path to Cellpose virtual environment
CELLPOSE_ENV="$WORKSPACE_DIR/cellpose_venv"
# Path to FIJI/ImageJ executable
IMAGEJ_PATH="/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx"
# Preprocessed images directory
PREPROCESSED_DIR="$1"

echo "Launching segmentation tools for interactive cell segmentation..."
echo "Preprocessed images directory: $PREPROCESSED_DIR"

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

# Launch ImageJ in the background
echo "Starting ImageJ..."
"$IMAGEJ_PATH" &
IMAGEJ_PID=$!

# Check if ImageJ started successfully
if [ $? -ne 0 ]; then
    handle_error "Failed to start ImageJ"
fi

# Change to the workspace directory
cd "$WORKSPACE_DIR" || handle_error "Could not change to workspace directory"

# Activate the Cellpose virtual environment
if [ ! -f "$CELLPOSE_ENV/bin/activate" ]; then
    handle_error "Cellpose virtual environment not found at $CELLPOSE_ENV"
fi

# Source the activate script
source "$CELLPOSE_ENV/bin/activate"

# Verify we're using the correct Python interpreter
PYTHON_PATH=$(which python)
if [[ ! "$PYTHON_PATH" == *"cellpose_venv"* ]]; then
    handle_error "Not using Python from Cellpose virtual environment. Current Python: $PYTHON_PATH"
fi

# Enhanced debugging for Cellpose environment
DEBUG_LOG="${PREPROCESSED_DIR}/cellpose_debug.log"
echo "===================== CELLPOSE DEBUG INFO =====================" > "$DEBUG_LOG"
echo "Date: $(date)" >> "$DEBUG_LOG"
echo "Working directory: $(pwd)" >> "$DEBUG_LOG"
echo "Python executable: $PYTHON_PATH" >> "$DEBUG_LOG"
echo "Python version: $(python --version 2>&1)" >> "$DEBUG_LOG"

# Check if numpy is installed
if ! python -c "import numpy" 2>/dev/null; then
    echo "Installing numpy..."
    pip install numpy
fi

# Check if cellpose is installed
if ! python -c "import cellpose" 2>/dev/null; then
    echo "Installing cellpose..."
    pip install cellpose
fi

echo "Numpy version: $(python -c 'import numpy; print(numpy.__version__)')" >> "$DEBUG_LOG"
echo "Cellpose version: $(python -c 'import cellpose; print(cellpose.__version__)')" >> "$DEBUG_LOG"
echo "Cellpose installation: $(python -c 'import cellpose; print(cellpose.__file__)')" >> "$DEBUG_LOG"

# Log environment variables that might affect image processing
echo "\nRelevant environment variables:" >> "$DEBUG_LOG"
env | grep -E 'PYTHONPATH|DISPLAY|QT|OPENCV|CUDA|TORCH|TF|CELL|PATH' >> "$DEBUG_LOG"

# Log the preprocessed directory content
echo "\nPreprocessed directory content:" >> "$DEBUG_LOG"
find "$PREPROCESSED_DIR" -type f -name "*.tif" | head -n 20 >> "$DEBUG_LOG"

echo "\n==================== END DEBUG INFO ====================" >> "$DEBUG_LOG"
echo "Debug info saved to $DEBUG_LOG"

# Start Cellpose GUI in the background with debug logging
echo "Starting Cellpose GUI..."
python -m cellpose 2>&1 | tee "${PREPROCESSED_DIR}/cellpose_output.log" &
CELLPOSE_PID=$!

# Check if Cellpose started successfully
if [ $? -ne 0 ]; then
    # Kill ImageJ if Cellpose fails to start
    kill $IMAGEJ_PID 2>/dev/null
    deactivate
    handle_error "Failed to start Cellpose"
fi

echo -e "\n===========================================================================\n"
echo "Cellpose and FIJI are now running. Please follow these steps:"
echo ""
echo "In Cellpose:"
echo "1. Navigate to: $PREPROCESSED_DIR"
echo "2. Open and segment your images"
echo "3. Save segmentations as .zip files in the same directory"
echo ""
echo "In FIJI:"
echo "1. Open the same images for comparison if needed"
echo "2. Use the ROI Manager to view and adjust segmentations"
echo "3. Save any modified ROIs"
echo ""
echo "When finished with both applications, press Enter to continue the workflow..."
echo -e "\n===========================================================================\n"

# Wait for user to press Enter
read

# Kill background processes if they're still running
echo "Closing Cellpose and FIJI..."
kill $CELLPOSE_PID 2>/dev/null
kill $IMAGEJ_PID 2>/dev/null

# Deactivate the Cellpose environment
deactivate

echo "Segmentation tools closed. Continuing workflow..."
exit 0