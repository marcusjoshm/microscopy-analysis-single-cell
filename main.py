#!/usr/bin/env python3
"""
Microscopy Single-Cell Analysis Pipeline - Main Entry Point

Streamlined main script using the refactored architecture.
"""

import sys
import os
from pathlib import Path

# Add src to Python path
sys.path.insert(0, str(Path(__file__).parent / "src"))

from src.python.core.config import Config, ConfigError
from src.python.core.logger import PipelineLogger
from src.python.core.cli import parse_arguments, CLIError, show_header, create_cli
from src.python.core.pipeline import Pipeline
from src.python.core.config import create_default_config


def main():
    """Main entry point for the microscopy single-cell analysis pipeline."""
    try:
        # Show header
        show_header()
        
        # Parse command line arguments (without validation for menu)
        cli = create_cli()
        args = cli.parser.parse_args()
        
        # Handle interactive mode or show menu if no processing options selected
        if args.interactive or not any([args.complete, args.preprocess, args.segment, args.analyze, 
                                      args.data_exploration, args.roi_management, args.path_detection]):
            args = cli.show_interactive_menu(args)
            if args is None:  # User chose to exit
                return 0
        
        # Now validate arguments after menu processing
        cli._validate_args(args)
        
        # Load configuration
        config_path = args.config
        if not Path(config_path).exists():
            print(f"Configuration file not found: {config_path}")
            print("Creating default configuration...")
            config = create_default_config(config_path)
        else:
            config = Config(config_path)
        
        # Validate configuration
        try:
            config.validate()
        except ConfigError as e:
            print(f"Configuration error: {e}")
            print("Please check your configuration file.")
            return 1
        
        # Create logger
        log_level = "DEBUG" if args.verbose else "INFO"
        logger = PipelineLogger(args.output, log_level=log_level)
        
        # Create and run pipeline
        pipeline = Pipeline(config, logger, args)
        success = pipeline.run()
        
        if success:
            print("\n" + "="*80)
            print("Pipeline completed successfully!")
            print("="*80)
            return 0
        else:
            print("\n" + "="*80)
            print("Pipeline failed!")
            print("="*80)
            return 1
            
    except CLIError as e:
        print(f"CLI Error: {e}")
        return 1
    except ConfigError as e:
        print(f"Configuration Error: {e}")
        return 1
    except KeyboardInterrupt:
        print("\nOperation cancelled by user")
        return 1
    except Exception as e:
        print(f"Unexpected error: {e}")
        if args.verbose:
            import traceback
            traceback.print_exc()
        return 1


if __name__ == '__main__':
    sys.exit(main()) 