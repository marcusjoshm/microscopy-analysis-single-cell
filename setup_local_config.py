#!/usr/bin/env python3
import json
import os
from pathlib import Path
import sys

def setup_config():
    """
    Set up local configuration by creating a config.json file from the template.
    """
    # Get the directory where the script is located
    script_dir = Path(__file__).parent.resolve()
    template_file = script_dir / 'config.template.json'
    config_file = script_dir / 'config.json'
    
    # Check if config already exists
    if config_file.exists():
        response = input(f"{config_file} already exists. Overwrite? (y/N): ")
        if response.lower() != 'y':
            print("Setup cancelled.")
            return
    
    # Check if template exists
    if not template_file.exists():
        print(f"Error: Template file {template_file} not found!")
        print("\nCreating a default template file...")
        create_default_template(template_file)
        print(f"Default template created at {template_file}")
        print("Please review and modify the template as needed, then run this script again.")
        return
    
    # Load template
    try:
        with open(template_file, 'r') as f:
            config = json.load(f)
    except json.JSONDecodeError as e:
        print(f"Error: Invalid JSON in template file: {e}")
        return
    except Exception as e:
        print(f"Error reading template file: {e}")
        return
    
    # Interactive setup
    print("\nSetting up local configuration...")
    print("Press Enter to keep default values.\n")
    
    # Get user inputs for paths
    if 'paths' in config:
        print("Path settings:")
        for key, default_value in config['paths'].items():
            user_input = input(f"{key} [{default_value}]: ").strip()
            if user_input:
                # Expand ~ to home directory
                if user_input.startswith('~'):
                    user_input = os.path.expanduser(user_input)
                config['paths'][key] = user_input
    
    # Get user inputs for system settings
    if 'system' in config:
        print("\nSystem settings:")
        for key, default_value in config['system'].items():
            user_input = input(f"{key} [{default_value}]: ").strip()
            if user_input:
                try:
                    # Try to convert to int if it's a number
                    if isinstance(default_value, int):
                        config['system'][key] = int(user_input)
                    elif isinstance(default_value, float):
                        config['system'][key] = float(user_input)
                    elif isinstance(default_value, bool):
                        config['system'][key] = user_input.lower() in ['true', 'yes', '1', 'y']
                    else:
                        config['system'][key] = user_input
                except ValueError:
                    print(f"Warning: Invalid value for {key}, keeping default")
                    config['system'][key] = default_value
    
    # Save config
    try:
        with open(config_file, 'w') as f:
            json.dump(config, f, indent=2)
        
        print(f"\nConfiguration saved to {config_file}")
        print("Remember: This file is gitignored and won't be committed.")
        
        # Verify paths exist
        print("\nVerifying paths...")
        all_paths_valid = True
        if 'paths' in config:
            for key, path in config['paths'].items():
                path_obj = Path(path)
                if path_obj.exists():
                    print(f"✓ {key}: {path}")
                else:
                    print(f"✗ {key}: {path} (does not exist)")
                    all_paths_valid = False
        
        if not all_paths_valid:
            print("\nWarning: Some paths do not exist. You may need to create them or update the config.")
            
    except Exception as e:
        print(f"Error saving configuration: {e}")
        return

def create_default_template(template_file):
    """Create a default template file with common settings."""
    default_template = {
        "paths": {
            "data_directory": "/path/to/your/data",
            "output_directory": "/path/to/output",
            "imagej_path": "/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx",
            "cellpose_env": "/path/to/cellpose/env",
            "temp_directory": "/tmp"
        },
        "system": {
            "max_workers": 4,
            "debug_mode": False,
            "log_level": "INFO"
        },
        "analysis": {
            "default_diameter": 30,
            "min_cell_size": 100,
            "max_cell_size": 10000
        }
    }
    
    try:
        with open(template_file, 'w') as f:
            json.dump(default_template, f, indent=2)
    except Exception as e:
        print(f"Error creating default template: {e}")
        sys.exit(1)

if __name__ == "__main__":
    setup_config()