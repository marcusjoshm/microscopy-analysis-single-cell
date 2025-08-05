#!/bin/bash

# setup_output_structure.sh
# This script sets up the output directory structure for the microscopy analysis workflow
# It creates all the necessary directories and copies selected files to raw_data

set -e  # Exit on any error

# ANSI color codes for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to display usage information
usage() {
    echo -e "${BLUE}Usage:${NC} $0 <input_directory> <output_directory>"
    echo "  <input_directory>: Path to the directory containing microscopy data"
    echo "  <output_directory>: Path to the output directory for analysis"
}

# Check if both directories are provided
if [ $# -ne 2 ]; then
    echo -e "${RED}Error: Missing required arguments${NC}"
    usage
    exit 1
fi

INPUT_DIR="$1"
OUTPUT_DIR="$2"

# Check if input directory exists
if [ ! -d "$INPUT_DIR" ]; then
    echo -e "${RED}Error: Input directory does not exist: $INPUT_DIR${NC}"
    exit 1
fi

echo -e "${GREEN}Setting up output directory structure: $OUTPUT_DIR${NC}"

# Create the main output directories
echo -e "${BLUE}Creating main output directories...${NC}"
mkdir -p "$OUTPUT_DIR"/{analysis,cells,combined_masks,grouped_cells,grouped_masks,masks,raw_data,ROIs,macros,preprocessed}

echo -e "${GREEN}Base directory structure created${NC}"

# Copy input files to raw_data directory
echo -e "${BLUE}Copying input files to raw_data directory...${NC}"

# Find all condition directories in input
for condition_dir in "$INPUT_DIR"/*; do
    if [ -d "$condition_dir" ]; then
        condition_name=$(basename "$condition_dir")
        echo -e "${BLUE}Processing condition: $condition_name${NC}"
        
        # Create condition directory in raw_data
        mkdir -p "$OUTPUT_DIR/raw_data/$condition_name"
        
        # Copy all files from condition directory to raw_data
        cp -r "$condition_dir"/* "$OUTPUT_DIR/raw_data/$condition_name/" 2>/dev/null || true
        
        echo -e "${GREEN}Copied files for condition: $condition_name${NC}"
    fi
done

echo -e "${GREEN}Output directory structure setup completed${NC}"

# Print final directory structure for verification
echo -e "${BLUE}Final output directory structure:${NC}"
find "$OUTPUT_DIR" -type d | sort | while read -r dir; do
    # Calculate the relative depth
    depth=$(($(echo "$dir" | tr -cd '/' | wc -c) - $(echo "$OUTPUT_DIR" | tr -cd '/' | wc -c)))
    indent=$(printf "%$(($depth * 2))s" "")
    echo "${indent}$(basename "$dir")/"
done

echo -e "${GREEN}Setup complete!${NC}"
exit 0 