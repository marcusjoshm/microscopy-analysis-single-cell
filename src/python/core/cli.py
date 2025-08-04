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
        # Check if at least one processing option is selected
        processing_options = ['complete', 'preprocess', 'segment', 'analyze']
        selected_options = [opt for opt in processing_options if getattr(args, opt, False)]
        
        if not selected_options:
            raise CLIError("No processing option selected. Use --complete, --preprocess, --segment, or --analyze")
        
        # Check if input/output directories are provided
        if not args.input and not args.interactive:
            raise CLIError("Input directory is required unless using --interactive")
        
        if not args.output and not args.interactive:
            raise CLIError("Output directory is required unless using --interactive")
    
    def show_interactive_menu(self, args: argparse.Namespace) -> argparse.Namespace:
        """
        Show interactive menu for argument selection.
        
        Args:
            args: Current arguments
            
        Returns:
            Updated arguments
        """
        show_header()
        
        print("\n" + "="*80)
        print("Microscopy Single-Cell Analysis Pipeline - Interactive Mode")
        print("="*80)
        
        # Get input directory
        if not args.input:
            print("\nInput Directory Selection:")
            args.input = self._get_directory_input("Enter input directory path: ")
        
        # Get output directory
        if not args.output:
            print("\nOutput Directory Selection:")
            args.output = self._get_directory_input("Enter output directory path: ")
        
        # Get processing options
        if not any([args.complete, args.preprocess, args.segment, args.analyze]):
            print("\nProcessing Options:")
            print("1. Complete pipeline")
            print("2. Preprocessing only")
            print("3. Segmentation only")
            print("4. Analysis only")
            
            choice = self.get_choice("Select processing option (1-4): ", [1, 2, 3, 4])
            
            if choice == 1:
                args.complete = True
            elif choice == 2:
                args.preprocess = True
            elif choice == 3:
                args.segment = True
            elif choice == 4:
                args.analyze = True
        
        # Get data type
        if not args.datatype:
            print("\nData Type Selection:")
            print("1. Single timepoint")
            print("2. Multi timepoint")
            
            choice = self.get_choice("Select data type (1-2): ", [1, 2])
            args.datatype = 'single_timepoint' if choice == 1 else 'multi_timepoint'
        
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