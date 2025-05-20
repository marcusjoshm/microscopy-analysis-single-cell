#!/bin/bash
# This script activates the Cellpose environment and runs Cellpose with the provided arguments

# Path to Cellpose installation
CELLPOSE_DIR="/Users/leelab/cellpose"

# Echo the command we're about to run (for debugging)
echo "Activating Cellpose environment in $CELLPOSE_DIR"

# Change to the Cellpose directory
cd "$CELLPOSE_DIR" || { echo "Error: Could not change to Cellpose directory"; exit 1; }

# Activate the Cellpose virtual environment
source venv/bin/activate || { echo "Error: Could not activate Cellpose environment"; exit 1; }

# Echo current Python and numpy version (for debugging)
echo "Using Python: $(which python)"
echo "Using numpy version: $(python -c 'import numpy; print(numpy.__version__)')"

# Check if we're running Cellpose GUI or command line mode
if [ "$1" = "--gui" ]; then
    # Run Cellpose GUI
    echo "Starting Cellpose GUI..."
    # Just launch the GUI without any arguments
    cellpose
else
    # Run Cellpose in command line mode with all arguments passed to this script
    echo "Running Cellpose with arguments: $*"
    cellpose "$@"
fi

# Capture the exit code
EXIT_CODE=$?

# Deactivate the environment
deactivate

# Return the same exit code as Cellpose
exit $EXIT_CODE