#!/bin/bash
# This script launches both Cellpose and ImageJ for interactive segmentation work

# Path to Cellpose installation
CELLPOSE_DIR="/Users/joshuamarcus/cellpose"
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

# Change to the Cellpose directory
cd "$CELLPOSE_DIR" || handle_error "Could not change to Cellpose directory"

# Activate the Cellpose virtual environment
source venv/bin/activate || handle_error "Could not activate Cellpose environment"

# Echo current Python and numpy version (for debugging)
echo "Using Python: $(which python)"
echo "Using numpy version: $(python -c 'import numpy; print(numpy.__version__)')"

# Start Cellpose GUI in the background
echo "Starting Cellpose GUI..."
cellpose &
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