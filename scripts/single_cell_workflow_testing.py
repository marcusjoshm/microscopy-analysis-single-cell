#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Microscopy Single-Cell Analysis Workflow Orchestrator with Testing Support

This modified version adds testing capabilities to bypass manual steps
by inserting pre-analyzed data from previous runs.
"""

import os
import sys
import argparse
import logging
from pathlib import Path

# Add the parent directory to sys.path
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
# Import the original WorkflowOrchestrator class
from single_cell_workflow import WorkflowOrchestrator

# Import the enhancement function
from workflow_testing import enhance_orchestrator_with_testing

# Get the enhanced version of the orchestrator
EnhancedWorkflowOrchestrator = enhance_orchestrator_with_testing(WorkflowOrchestrator)

# Set up logging - reuse the existing logging configuration
logger = logging.getLogger("SingleCellWorkflow")

def main():
    """Main entry point for the script with testing support."""
    parser = argparse.ArgumentParser(description='Microscopy Single-Cell Analysis Workflow Orchestrator with Testing Support')
    
    # Original arguments
    parser.add_argument('--config', '-c', required=True,
                        help='Path to workflow configuration file (JSON)')
    parser.add_argument('--input', '-i', required=True,
                        help='Input directory containing microscopy data to analyze')
    parser.add_argument('--output', '-o', required=True,
                        help='Output directory for results')
    parser.add_argument('--skip', '-s', nargs='+', default=[],
                        help='Steps to skip (by name)')
    parser.add_argument('--timepoints', '-t', nargs='+', default=[],
                        help='Specific timepoints to analyze (e.g., t00 t03)')
    parser.add_argument('--regions', '-r', nargs='+', default=[],
                        help='Specific regions to analyze (e.g., R_1 R_2 R_3)')
    parser.add_argument('--setup-only', action='store_true',
                        help='Only set up directory structure, do not run the workflow')
    
    # New testing-specific arguments
    parser.add_argument('--testing-mode', action='store_true',
                        help='Run in testing mode, bypassing manual steps')
    parser.add_argument('--preanalyzed-data', 
                        help='Directory containing pre-analyzed data to use for manual steps')
    parser.add_argument('--interactive-testing', action='store_true',
                        help='In testing mode, still prompt for confirmation at manual steps')
    
    args = parser.parse_args()
    
    # Determine if we should use testing mode
    testing_mode = args.testing_mode
    
    # Validate testing mode arguments
    if testing_mode and not args.preanalyzed_data:
        logger.error("Testing mode requires --preanalyzed-data directory")
        sys.exit(1)
    
    if args.preanalyzed_data:
        preanalyzed_path = Path(args.preanalyzed_data)
        if not preanalyzed_path.exists() or not preanalyzed_path.is_dir():
            logger.error(f"Pre-analyzed data directory not found: {preanalyzed_path}")
            sys.exit(1)
        
        if testing_mode:
            logger.info(f"Running in testing mode with pre-analyzed data: {preanalyzed_path}")
    
    # Create the workflow orchestrator with testing enhancements if needed
    orchestrator = EnhancedWorkflowOrchestrator(
        config_path=args.config,
        input_dir=args.input,
        output_dir=args.output,
        skip_steps=args.skip,
        timepoints=args.timepoints,
        regions=args.regions,
        # Testing-specific parameters
        testing_mode=testing_mode,
        preanalyzed_data_dir=args.preanalyzed_data if testing_mode else None,
        mock_manual_steps=not args.interactive_testing
    )
    
    # Set up directory structure
    setup_success = orchestrator.setup_analysis_directories()
    if not setup_success:
        logger.error("Directory setup failed")
        sys.exit(1)
    
    # If --setup-only flag is provided, exit after setting up directories
    if args.setup_only:
        logger.info("Directory setup completed. Exiting as requested (--setup-only).")
        sys.exit(0)
    
    # Run the full workflow
    success = orchestrator.run_workflow()
    
    if not success:
        logger.error("Workflow failed")
        sys.exit(1)
    
    logger.info("Workflow completed successfully")


if __name__ == "__main__":
    main()