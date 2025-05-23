#!/usr/bin/env python3
"""
Script to rotate ROIs generated by Cellpose 90 degrees counterclockwise.
This fixes the rotation issue in Cellpose 4.0.1 where generated masks are rotated.
"""

import os
import argparse
import subprocess
import logging
import sys
from pathlib import Path

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('roi_rotator')

def parse_args():
    """Parse command line arguments."""
    parser = argparse.ArgumentParser(description='Rotate ROIs 90 degrees counterclockwise')
    parser.add_argument('--input-dir', type=str, required=True,
                        help='Directory containing ROI files generated by Cellpose')
    parser.add_argument('--imagej', type=str, default='/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx',
                        help='Path to ImageJ/Fiji executable')
    parser.add_argument('--verbose', action='store_true',
                        help='Enable verbose output')
    return parser.parse_args()

def rotate_rois(input_dir, imagej_path, verbose=False):
    """Rotate ROIs using ImageJ macro."""
    if verbose:
        logger.setLevel(logging.DEBUG)
    
    # Get the absolute path to the macro
    script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
    project_dir = script_dir.parent
    macro_path = project_dir / 'macros' / 'rotate_rois_counterclockwise.ijm'
    
    if not macro_path.exists():
        logger.error(f"Macro file not found: {macro_path}")
        return False
    
    # Check if ImageJ executable exists
    if not os.path.exists(imagej_path):
        logger.error(f"ImageJ executable not found: {imagej_path}")
        return False
    
    # Check if input directory exists
    if not os.path.exists(input_dir):
        logger.error(f"Input directory not found: {input_dir}")
        return False
    
    # Build the ImageJ command
    cmd = [
        imagej_path,
        '--headless',
        '-macro', str(macro_path),
        input_dir
    ]
    
    # Run the ImageJ macro
    logger.info(f"Running ImageJ macro: {macro_path}")
    logger.info(f"Input directory: {input_dir}")
    
    try:
        process = subprocess.Popen(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        stdout, stderr = process.communicate()
        
        if verbose:
            logger.debug(f"ImageJ stdout: {stdout}")
            if stderr:
                logger.debug(f"ImageJ stderr: {stderr}")
        
        if process.returncode != 0:
            logger.error(f"ImageJ macro failed with exit code {process.returncode}")
            logger.error(f"Error: {stderr}")
            return False
        
        logger.info("ROIs rotated successfully")
        return True
    
    except Exception as e:
        logger.error(f"Failed to run ImageJ macro: {e}")
        return False

def main():
    """Main function."""
    args = parse_args()
    
    success = rotate_rois(
        args.input_dir,
        args.imagej,
        args.verbose
    )
    
    if not success:
        logger.error("Failed to rotate ROIs")
        sys.exit(1)
    
    logger.info("ROI rotation completed successfully")

if __name__ == "__main__":
    main()
