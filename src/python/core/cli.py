"""
Command Line Interface for Microscopy Single-Cell Analysis Pipeline

Handles argument parsing, user interaction, and menu systems.
"""

import argparse
import sys
import os
from typing import Dict, Any, Optional
from pathlib import Path

# ANSI color codes for rainbow effect
class Colors:
    red = '\033[31m'
    orange = '\033[38;5;208m'
    yellow = '\033[33m'
    green = '\033[32m'
    blue = '\033[34m'
    indigo = '\033[38;5;54m'
    violet = '\033[35m'
    reset = '\033[0m'
    bold = '\033[1m'

def colorize(text: str, color: str) -> str:
    """Apply color to text"""
    return f"{Colors.bold}{color}{text}{Colors.reset}"

def show_header() -> None:
    """Display colorful Single Cell Analyzer ASCII art header"""
    header = [
        "  ",
        "                                                               ",
        "      ███████╗ ██╗ ███╗   ██╗  ██████╗  ██╗      ███████╗      ",
        "      ██╔════╝ ██║ ████╗  ██║ ██╔════╝  ██║      ██╔════╝      ",
        "      ███████╗ ██║ ██╔██╗ ██║ ██║  ███╗ ██║      █████╗        ",
        "      ╚════██║ ██║ ██║╚██╗██║ ██║   ██║ ██║      ██╔══╝        ",
        "      ███████║ ██║ ██║ ╚████║ ╚██████╔╝ ███████╗ ███████╗      ",
        "      ╚══════╝ ╚═╝ ╚═╝  ╚═══╝  ╚═════╝  ╚══════╝ ╚══════╝      ",
        "                                                               ",
        "      ██████╗ ███████╗ ██╗      ██╗                            ",
        "      ██╔═══╝ ██╔════╝ ██║      ██║                            ",
        "      ██║     █████╗   ██║      ██║                            ",
        "      ██║     ██╔══╝   ██║      ██║                            ",
        "      ██████╗ ███████╗ ███████╗ ███████╗                       ",
        "      ╚═════╝ ╚══════╝ ╚══════╝ ╚══════╝                       ",
        "                                                               ",
        "       █████╗  ███╗   ██╗  █████╗             ",
        "      ██╔══██╗ ████╗  ██║ ██╔══██╗            ",
        "      ███████║ ██╔██╗ ██║ ███████║            ",
        "      ██╔══██║ ██║╚██╗██║ ██╔══██║            ",
        "      ██║  ██║ ██║ ╚████║ ██║  ██║            ",
        "      ╚═╝  ╚═╝ ╚═╝  ╚═══╝ ╚═╝  ╚═╝            ",
        "                                                                          ",
        "      ██╗    ██╗   ██╗ ███████╗ ███████╗ ███████╗                         ",
        "      ██║    ╚██╗ ██╔╝ ╚════██║ ██╔════╝ ██╔══██╗                         ",
        "      ██║     ╚████╔╝     ██╔╝  █████╗   ██████╔╝                         ",
        "      ██║      ╚██╔╝    ██╔╝    ██╔══╝   ██╔══██╗                         ",
        "      ███████╗  ██║    ███████╗ ███████╗ ██║  ██║                         ",
        "      ╚══════╝  ╚═╝    ╚══════╝ ╚══════╝ ╚═╝  ╚═╝                         ",
        "                                                                          ",
        "  ",
        ""
    ]

    rainbow_colors = [
        Colors.red,
        Colors.orange, 
        Colors.yellow,
        Colors.green,
        Colors.blue,
        Colors.indigo,
        Colors.violet
    ]

    print('')  # Empty line at start
    
    for i, line in enumerate(header):
        if i < 2 or i > 21:  # Empty lines
            print(line)
        else:
            # Color the line with specific colors for SINGLE and CELL
            colored_line = ""
            for j, char in enumerate(line):
                # Determine which section we're in based on line number
                if 2 <= i <= 7:  # SINGLE section (lines 3-8)
                    colored_line += colorize(char, Colors.green)
                elif 9 <= i <= 14:  # CELL section (lines 10-15)
                    colored_line += colorize(char, Colors.red)
                else:  # ANALYZER section (lines 16-21) - no color
                    colored_line += char
            print(colored_line)


class CLIError(Exception):
    """Custom exception for CLI-related errors."""
    pass


class PipelineCLI:
    """
    Command line interface for the microscopy single-cell analysis pipeline.
    """
    
    def __init__(self):
        """Initialize the CLI."""
        self.parser = self._create_parser()
    
    def _create_parser(self) -> argparse.ArgumentParser:
        """Create and configure the argument parser."""
        parser = argparse.ArgumentParser(
            description="Microscopy Single-Cell Analysis Pipeline",
            formatter_class=argparse.RawDescriptionHelpFormatter,
            epilog="""
Examples:
  # Run complete processing pipeline
  python main.py --input /path/to/data --output /path/to/output --complete
  
  # Run only preprocessing
  python main.py --input /path/to/data --output /path/to/output --preprocess
  
  # Run segmentation
  python main.py --input /path/to/data --output /path/to/output --segment
  
  # Run analysis
  python main.py --input /path/to/data --output /path/to/output --analyze
            """
        )
        
        # Input/Output arguments
        parser.add_argument(
            '--input', '-i',
            type=str,
            help='Input directory containing microscopy data'
        )
        parser.add_argument(
            '--output', '-o',
            type=str,
            help='Output directory for results'
        )
        parser.add_argument(
            '--config',
            type=str,
            default='config.json',
            help='Path to configuration file (default: config.json)'
        )
        
        # Processing options
        parser.add_argument(
            '--complete',
            action='store_true',
            help='Run complete analysis pipeline'
        )
        parser.add_argument(
            '--preprocess',
            action='store_true',
            help='Run preprocessing stage only'
        )
        parser.add_argument(
            '--segment',
            action='store_true',
            help='Run cell segmentation stage only'
        )
        parser.add_argument(
            '--analyze',
            action='store_true',
            help='Run analysis stage only'
        )
        parser.add_argument(
            '--data-exploration',
            action='store_true',
            help='Run data exploration and visualization'
        )
        parser.add_argument(
            '--roi-management',
            action='store_true',
            help='Run ROI management (resize and track regions of interest)'
        )
        parser.add_argument(
            '--path-detection',
            action='store_true',
            help='Run path detection (cell tracking and trajectory analysis)'
        )
        
        # Data selection arguments
        parser.add_argument(
            '--datatype',
            choices=['single_timepoint', 'multi_timepoint'],
            help='Data type to analyze'
        )
        parser.add_argument(
            '--conditions',
            nargs='+',
            help='Specific conditions to analyze'
        )
        parser.add_argument(
            '--timepoints',
            nargs='+',
            help='Specific timepoints to analyze'
        )
        parser.add_argument(
            '--regions',
            nargs='+',
            help='Specific regions to analyze'
        )
        parser.add_argument(
            '--segmentation-channel',
            help='Channel to use for segmentation'
        )
        parser.add_argument(
            '--analysis-channels',
            nargs='+',
            help='Channels to analyze'
        )
        parser.add_argument(
            '--bins',
            type=int,
            default=5,
            help='Number of bins for cell grouping (default: 5)'
        )
        
        # Control arguments
        parser.add_argument(
            '--skip-steps',
            nargs='+',
            help='Steps to skip in the workflow'
        )
        parser.add_argument(
            '--start-from',
            help='Step to start the workflow from'
        )
        parser.add_argument(
            '--verbose', '-v',
            action='store_true',
            help='Enable verbose logging'
        )
        parser.add_argument(
            '--interactive', '-I',
            action='store_true',
            help='Run in interactive mode'
        )
        
        return parser
    
    def parse_args(self, args: Optional[list] = None) -> argparse.Namespace:
        """
        Parse command line arguments.
        
        Args:
            args: Arguments to parse (default: sys.argv[1:])
            
        Returns:
            Parsed arguments
        """
        parsed_args = self.parser.parse_args(args)
        self._validate_args(parsed_args)
        return parsed_args
    
    def _validate_args(self, args: argparse.Namespace) -> None:
        """
        Validate parsed arguments.
        
        Args:
            args: Parsed arguments
            
        Raises:
            CLIError: If arguments are invalid
        """
        # Check if at least one processing option is selected (but allow menu to be shown)
        processing_options = ['complete', 'preprocess', 'segment', 'analyze', 
                            'data_exploration', 'roi_management', 'path_detection']
        selected_options = [opt for opt in processing_options if getattr(args, opt, False)]
        
        # Only validate if we're not in interactive mode and no options are selected
        if not selected_options and not args.interactive:
            # Don't raise error here - let the menu handle it
            pass
        
        # Check if input/output directories are provided (only after menu processing)
        if not args.input and not args.interactive:
            raise CLIError("Input directory is required unless using --interactive")
        
        if not args.output and not args.interactive:
            raise CLIError("Output directory is required unless using --interactive")
    
    def show_interactive_menu(self, args: argparse.Namespace) -> argparse.Namespace:
        """
        Show interactive menu if no specific stages are selected.
        
        Args:
            args: Parsed arguments
            
        Returns:
            Updated arguments with user selection
        """
        # Check if any stage is already selected
        stage_flags = [
            args.complete, args.preprocess, args.segment, args.analyze,
            args.data_exploration, args.roi_management, args.path_detection
        ]
        
        if any(stage_flags):
            return args  # Stage already selected, no need for menu
        
        # Show menu
        show_header()
        print(colorize("  🔬 Welcome Single Cell Analysis user! 🔬", Colors.bold))
        print("")
        print(colorize("MENU:", Colors.bold))
        print(colorize("1. Set Input/Output Directories", Colors.green))
        print(colorize("2. Preprocessing (image binning and preparation)", Colors.yellow))
        print(colorize("3. Segmentation (cell detection and masking)", Colors.yellow))
        print(colorize("4. Analysis (cell grouping and thresholding)", Colors.yellow))
        print(colorize("5. Complete Pipeline (preprocessing + segmentation + analysis)", Colors.yellow))
        print(colorize("6. Data Exploration (interactive cell visualization)", Colors.yellow))
        print(colorize("7. ROI Management (resize and track regions of interest)", Colors.yellow))
        print(colorize("8. Path Detection (cell tracking and trajectory analysis)", Colors.yellow))
        print(colorize("9. Exit", Colors.red))
        
        # Get user choice
        choice = input("Select an option (1-9): ").strip().lower()
        
        # Update args based on choice
        if choice == "1":
            # Set directories using the set_directories module
            try:
                from ..modules.set_directories import set_default_directories
                from ..modules.directory_setup import load_config, save_config
                
                # Load current config
                config_path = args.config if hasattr(args, 'config') else 'config.json'
                config = load_config(config_path)
                
                # Set default directories
                input_path, output_path = set_default_directories(config, config_path)
                
                # Update args with the new paths
                args.input = input_path
                args.output = output_path
                
                print(f"\n✅ Directories set successfully!")
                print(f"  Input: {input_path}")
                print(f"  Output: {output_path}")
                
            except ImportError as e:
                print(f"Error: Could not import set_directories module: {e}")
                # Fallback to simple input
                if not args.input:
                    args.input = self._get_directory_input("Enter input directory path: ")
                if not args.output:
                    args.output = self._get_directory_input("Enter output directory path: ")
        elif choice == "2":
            args.preprocess = True
        elif choice == "3":
            args.segment = True
        elif choice == "4":
            args.analyze = True
        elif choice == "5":
            args.complete = True
        elif choice == "6":
            args.data_exploration = True
        elif choice == "7":
            args.roi_management = True
        elif choice == "8":
            args.path_detection = True
        elif choice == "9" or choice == "q" or choice == "quit":
            print("Exiting.")
            return None  # Signal to exit
        else:
            print("Invalid choice. Please enter a number between 1-9 or 'q' to quit.")
            return args  # Return current args to continue loop
        
        return args
    
    def _get_directory_input(self, prompt: str) -> str:
        """
        Get directory input from user.
        
        Args:
            prompt: Input prompt
            
        Returns:
            Directory path
        """
        while True:
            directory = input(prompt).strip()
            if directory:
                return directory
            print("Please enter a valid directory path.")
    
    def get_choice(self, prompt: str, choices: list, default: int = 1) -> int:
        """
        Get user choice from a list of options.
        
        Args:
            prompt: Input prompt
            choices: List of valid choices
            default: Default choice
            
        Returns:
            Selected choice
        """
        while True:
            try:
                choice = input(prompt).strip()
                if not choice:
                    return default
                
                choice_num = int(choice)
                if choice_num in choices:
                    return choice_num
                else:
                    print(f"Please enter a number between {min(choices)} and {max(choices)}")
            except ValueError:
                print("Please enter a valid number.")


def parse_arguments() -> argparse.Namespace:
    """
    Parse command line arguments.
    
    Returns:
        Parsed arguments
    """
    cli = PipelineCLI()
    return cli.parse_args()


def create_cli() -> PipelineCLI:
    """
    Create CLI instance.
    
    Returns:
        CLI instance
    """
    return PipelineCLI() 