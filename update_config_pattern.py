#!/usr/bin/env python3
import os
import json
import shutil
from pathlib import Path

def backup_file(file_path):
    """Create a backup of a file"""
    backup_path = str(file_path) + '.bak'
    shutil.copy2(file_path, backup_path)
    print(f"Created backup of {file_path} at {backup_path}")

def update_workflow_config():
    """Update the workflow configuration to use the new template pattern"""
    # Paths
    script_dir = Path(__file__).parent.resolve()
    workflow_config_path = script_dir / 'workflow_config.json'
    workflow_example_config_path = script_dir / 'workflow_config_example.json'
    workflow_script_path = script_dir / 'single_cell_workflow.py'
    
    # Create backups
    backup_file(workflow_script_path)
    
    # Load existing configs
    with open(workflow_config_path, 'r') as f:
        workflow_config = json.load(f)
        
    with open(workflow_example_config_path, 'r') as f:
        example_config = json.load(f)
    
    # Create actual config.json from template
    config_template_path = script_dir / 'config.template.json'
    config_path = script_dir / 'config.json'
    
    # If we don't already have a config.json file, create one from the template
    if not config_path.exists() and config_template_path.exists():
        with open(config_template_path, 'r') as f:
            template_config = json.load(f)
            
        # Update paths from existing config
        template_config['paths']['imagej_path'] = workflow_config.get('imagej_path', '/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx')
        
        # Write the new config
        with open(config_path, 'w') as f:
            json.dump(template_config, f, indent=2)
        print(f"Created config.json from template with updated paths")

def patch_workflow_script():
    """Patch the main workflow script to use the config.json file"""
    script_dir = Path(__file__).parent.resolve()
    workflow_script_path = script_dir / 'single_cell_workflow.py'
    
    with open(workflow_script_path, 'r') as f:
        content = f.read()
    
    # Update the script to use the new config pattern
    # 1. Update the constructor to use the config paths
    content = content.replace(
        "def __init__(self, config_path, input_dir, output_dir, skip_steps=None,",
        "def __init__(self, config_path, input_dir=None, output_dir=None, skip_steps=None,"
    )
    
    # 2. Update path handling in __init__
    old_init_code = """        self.config_path = config_path
        self.input_dir = Path(input_dir).resolve()
        self.output_dir = Path(output_dir).resolve()
        self.skip_steps = skip_steps or []
        self.selected_datatype = datatype
        self.selected_conditions = conditions or []
        self.selected_channels = channels if channels is not None else []
        self.timepoints = timepoints or []
        self.regions = regions or []
        self.setup_only = setup_only
        self.start_from = start_from
        self.bins = bins
        
        # --- BEGIN DEBUG LOG ---
        logger.debug(f"__init__: self.selected_conditions = {self.selected_conditions}")
        logger.debug(f"__init__: self.regions = {self.regions}")
        # --- END DEBUG LOG ---
        
        # Load configuration
        self.config = self._load_config()
        self.imagej_path = self.config.get('imagej_path', 'ImageJ') # Get ImageJ path"""
    
    new_init_code = """        self.config_path = config_path
        self.skip_steps = skip_steps or []
        self.selected_datatype = datatype
        self.selected_conditions = conditions or []
        self.selected_channels = channels if channels is not None else []
        self.timepoints = timepoints or []
        self.regions = regions or []
        self.setup_only = setup_only
        self.start_from = start_from
        self.bins = bins
        
        # Load configuration
        self.config = self._load_config()
        
        # Get paths from config or use provided values
        if input_dir:
            self.input_dir = Path(input_dir).resolve()
        else:
            self.input_dir = Path(self.config['paths'].get('data_directory', '')).resolve()
            
        if output_dir:
            self.output_dir = Path(output_dir).resolve()
        else:
            self.output_dir = Path(self.config['paths'].get('output_directory', '')).resolve()
            
        self.imagej_path = self.config['paths'].get('imagej_path', 'ImageJ')
        
        # --- BEGIN DEBUG LOG ---
        logger.debug(f"__init__: self.selected_conditions = {self.selected_conditions}")
        logger.debug(f"__init__: self.regions = {self.regions}")
        logger.debug(f"Using input directory: {self.input_dir}")
        logger.debug(f"Using output directory: {self.output_dir}")
        logger.debug(f"Using ImageJ path: {self.imagej_path}")
        # --- END DEBUG LOG ---"""
    
    content = content.replace(old_init_code, new_init_code)
    
    # 3. Update the _load_config method
    old_load_config = '''    def _load_config(self):
        """Load the workflow configuration from JSON file."""
        try:
            with open(self.config_path, 'r') as f:
                config = json.load(f)
            return config
        except Exception as e:
            logger.error(f"Failed to load configuration file: {e}")
            sys.exit(1)'''
    
    new_load_config = '''    def _load_config(self):
        """Load the workflow configuration from JSON file."""
        try:
            # Check if config exists
            config_path = Path(self.config_path)
            if not config_path.exists():
                # If config.json doesn't exist, check if we have template
                template_path = config_path.parent / 'config.template.json'
                if template_path.exists():
                    logger.error(f"Configuration file {config_path} not found!")
                    logger.info(f"A template exists at {template_path}.")
                    logger.info("Please run: python setup_local_config.py to create your local configuration.")
                else:
                    logger.error(f"Neither configuration file {config_path} nor template {template_path} found!")
                sys.exit(1)
                
            with open(config_path, 'r') as f:
                config = json.load(f)
            return config
        except Exception as e:
            logger.error(f"Failed to load configuration file: {e}")
            sys.exit(1)'''
    
    content = content.replace(old_load_config, new_load_config)
    
    # Write the updated content back to the file
    with open(workflow_script_path, 'w') as f:
        f.write(content)
    
    print(f"Updated {workflow_script_path} to use the new config pattern")

def main():
    """Main function to update the config pattern"""
    try:
        update_workflow_config()
        patch_workflow_script()
        print("\nSuccessfully implemented the config template pattern!")
        print("Now you can:")
        print("1. Run: python setup_local_config.py to create your local config")
        print("2. Use the single_cell_workflow.py script as usual, but it will now use paths from config.json")
    except Exception as e:
        print(f"Error updating config pattern: {e}")
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    main()