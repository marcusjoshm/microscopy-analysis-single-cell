"""
Enhancements to the Workflow Orchestrator to support testing mode
with pre-analyzed data bypass for manual steps.
"""

import os
import shutil
import logging
import types
from pathlib import Path

# Configure logging
logger = logging.getLogger("SingleCellWorkflow")

class TestingSupport:
    """
    Mixin class to add testing capabilities to the WorkflowOrchestrator.
    This allows for testing the workflow with pre-analyzed data.
    """
    
    def initialize_testing_mode(self, preanalyzed_data_dir=None, mock_manual_steps=True):
        """
        Initialize testing mode for the workflow.
        
        Args:
            preanalyzed_data_dir (str): Directory containing pre-analyzed data.
            mock_manual_steps (bool): Whether to automatically approve manual steps.
        """
        self.testing_mode = True
        self.preanalyzed_data_dir = Path(preanalyzed_data_dir) if preanalyzed_data_dir else None
        self.mock_manual_steps = mock_manual_steps
        
        # Create a mapping of step names to pre-analyzed data locations
        self.step_to_data_mapping = self._create_step_data_mapping()
        
        logger.info(f"Testing mode initialized")
        if self.preanalyzed_data_dir:
            logger.info(f"Using pre-analyzed data from: {self.preanalyzed_data_dir}")
        if self.mock_manual_steps:
            logger.info(f"Manual steps will be automatically approved")
    
    def _create_step_data_mapping(self):
        """
        Create a mapping between workflow steps and corresponding pre-analyzed data.
        This maps each manual or GUI step to the directories containing pre-analyzed results.
        
        Returns:
            dict: Mapping of step names to data directory info
        """
        # Default mapping based on the typical workflow structure
        mapping = {
            "select_timepoints": None,  # No data for this step, just auto-selection
            "select_regions": None,     # No data for this step, just auto-selection
            "manual_quality_check": {
                "source_dir": "preprocessed",
                "required": False  # Optional step, can skip if data missing
            },
            "manual_roi_adjustment": {
                "source_dir": "ROIs",
                "target_dir": "ROIs",
                "required": True
            },
            # Add other manual steps as needed
        }
        
        # Validate the mapping against the actual configuration
        if hasattr(self, 'config') and 'steps' in self.config:
            # Get all manual/GUI step names from config
            manual_step_names = [
                step.get('name') for step in self.config['steps']
                if step.get('type') in ['manual', 'gui_application']
            ]
            
            # Log if there are steps in config not in our mapping
            for step_name in manual_step_names:
                if step_name not in mapping:
                    logger.warning(f"No test data mapping defined for manual step: {step_name}")
        
        return mapping
    
    def _check_preanalyzed_data(self, step_name):
        """
        Check if pre-analyzed data is available for a specific step.
        
        Args:
            step_name (str): Name of the step to check.
            
        Returns:
            tuple: (has_data, source_path, target_path)
        """
        if not self.preanalyzed_data_dir or step_name not in self.step_to_data_mapping:
            return False, None, None
        
        # Get mapping info for this step
        mapping_info = self.step_to_data_mapping[step_name]
        if mapping_info is None:
            return False, None, None
        
        source_dir = mapping_info.get('source_dir')
        target_dir = mapping_info.get('target_dir', source_dir)  # Default to source_dir if target not specified
        
        # Full paths
        source_path = self.preanalyzed_data_dir / source_dir
        target_path = self.output_dir / target_dir
        
        # Check if source exists
        has_data = source_path.exists() and any(source_path.iterdir())
        
        return has_data, source_path, target_path
    
    def _copy_preanalyzed_data(self, source_path, target_path):
        """
        Copy pre-analyzed data to the target location.
        
        Args:
            source_path (Path): Source directory with pre-analyzed data.
            target_path (Path): Target directory where data should be copied.
            
        Returns:
            bool: True if successful, False otherwise.
        """
        try:
            # Ensure target directory exists
            os.makedirs(target_path, exist_ok=True)
            
            # Copy all items from source to target
            for item in source_path.glob('**/*'):
                if item.is_file():
                    # Get relative path
                    rel_path = item.relative_to(source_path)
                    # Create destination directory if needed
                    dest_dir = target_path / rel_path.parent
                    os.makedirs(dest_dir, exist_ok=True)
                    # Copy file
                    shutil.copy2(item, dest_dir / item.name)
            
            logger.info(f"Copied pre-analyzed data from {source_path} to {target_path}")
            return True
        except Exception as e:
            logger.error(f"Error copying pre-analyzed data: {e}")
            return False
    
    def _replace_placeholders(self, arg_string):
        """
        Replace placeholders in command arguments with actual values.
        
        Args:
            arg_string (str): Command argument string with placeholders.
            
        Returns:
            str: Command argument with placeholders replaced.
        """
        # Start with standard replacements
        result = arg_string.replace('{input_dir}', str(self.input_dir)) \
                          .replace('{output_dir}', str(self.output_dir))
        
        # Handle imagej_path placeholder
        if '{imagej_path}' in result and hasattr(self, 'config') and 'imagej_path' in self.config:
            result = result.replace('{imagej_path}', self.config['imagej_path'])
        
        # Handle regions placeholder
        if '{regions}' in result and hasattr(self, 'regions') and self.regions:
            result = result.replace('{regions}', ','.join(self.regions))
        
        # Handle timepoints placeholder
        if '{timepoints}' in result and hasattr(self, 'timepoints') and self.timepoints:
            result = result.replace('{timepoints}', ','.join(self.timepoints))
        
        return result
    
    def prompt_manual_step(self, step_name, instructions):
        """
        Override the prompt_manual_step method to handle testing mode.
        
        Args:
            step_name (str): Name of the manual step.
            instructions (str): Instructions for the user.
        
        Returns:
            bool: True when the step is completed (automatically in testing mode).
        """
        if not hasattr(self, 'testing_mode') or not self.testing_mode:
            # Call the original method if not in testing mode
            if hasattr(super(), 'prompt_manual_step'):
                return super().prompt_manual_step(step_name, instructions)
            else:
                return self._original_prompt_manual_step(step_name, instructions)
        
        logger.info(f"Testing mode: Auto-handling manual step: {step_name}")
        
        # Check if we have pre-analyzed data for this step
        has_data, source_path, target_path = self._check_preanalyzed_data(step_name)
        
        if has_data and source_path and target_path:
            # Copy pre-analyzed data for this step
            success = self._copy_preanalyzed_data(source_path, target_path)
            if not success:
                mapping_info = self.step_to_data_mapping.get(step_name)
                if mapping_info and mapping_info.get('required', True):
                    logger.error(f"Failed to copy required pre-analyzed data for step: {step_name}")
                    return False
                else:
                    logger.warning(f"Failed to copy optional pre-analyzed data for step: {step_name}")
        elif step_name in self.step_to_data_mapping:
            mapping_info = self.step_to_data_mapping.get(step_name)
            if mapping_info and mapping_info.get('required', True):
                logger.warning(f"No pre-analyzed data available for required step: {step_name}")
        
        # Auto-approve the step in testing mode
        if self.mock_manual_steps:
            logger.info(f"Auto-approving manual step: {step_name}")
            return True
        else:
            # Still require manual approval
            print("\n" + "="*80)
            print(f"TESTING MODE - MANUAL STEP: {step_name}")
            print("="*80)
            print(instructions)
            if has_data:
                print(f"\nPre-analyzed data has been copied from: {source_path}")
                print(f"to: {target_path}")
            else:
                print("\nNo pre-analyzed data available for this step.")
            print("\nPress Enter to continue...")
            input()
            return True
    
    def launch_gui_application(self, app_path, instructions):
        """
        Override the launch_gui_application method to handle testing mode.
        
        Args:
            app_path (str): Path to the GUI application.
            instructions (str): Instructions for the user.
        
        Returns:
            bool: True when the step is completed (automatically in testing mode).
        """
        if not hasattr(self, 'testing_mode') or not self.testing_mode:
            # Call the original method if not in testing mode
            if hasattr(super(), 'launch_gui_application'):
                return super().launch_gui_application(app_path, instructions)
            else:
                return self._original_launch_gui_application(app_path, instructions)
        
        # Extract step name from instructions or use app_path as fallback
        step_name = app_path.split('/')[-1].split('.')[0]  # Fallback name from app path
        for step in self.config.get('steps', []):
            if step.get('type') == 'gui_application' and step.get('path') == app_path:
                step_name = step.get('name', step_name)
                break
                
        logger.info(f"Testing mode: Skipping GUI application: {step_name}")
        
        # Check if we have pre-analyzed data for this step
        has_data, source_path, target_path = self._check_preanalyzed_data(step_name)
        
        if has_data and source_path and target_path:
            # Copy pre-analyzed data for this step
            success = self._copy_preanalyzed_data(source_path, target_path)
            if not success:
                mapping_info = self.step_to_data_mapping.get(step_name)
                if mapping_info and mapping_info.get('required', True):
                    logger.error(f"Failed to copy required pre-analyzed data for step: {step_name}")
                    return False
                else:
                    logger.warning(f"Failed to copy optional pre-analyzed data for step: {step_name}")
        elif step_name in self.step_to_data_mapping:
            mapping_info = self.step_to_data_mapping.get(step_name)
            if mapping_info and mapping_info.get('required', True):
                logger.warning(f"No pre-analyzed data available for required GUI step: {step_name}")
        
        # Auto-approve the step in testing mode
        if self.mock_manual_steps:
            logger.info(f"Auto-approving GUI step: {step_name}")
            return True
        else:
            # Still require manual approval
            print("\n" + "="*80)
            print(f"TESTING MODE - GUI APPLICATION STEP: {step_name}")
            print("="*80)
            print(instructions)
            if has_data:
                print(f"\nPre-analyzed data has been copied from: {source_path}")
                print(f"to: {target_path}")
            else:
                print("\nNo pre-analyzed data available for this step.")
            print("\nPress Enter to continue...")
            input()
            return True
    
    def run_python_script(self, script_path, args=None):
        """
        Override the run_python_script method to handle placeholder replacement.
        
        Args:
            script_path (str): Path to the Python script.
            args (list): List of arguments to pass to the script.
        
        Returns:
            bool: True if successful, False otherwise.
        """
        # Process script path if it's not a string (shouldn't happen in normal cases)
        if not isinstance(script_path, str):
            logger.warning(f"Script path is not a string: {script_path}")
            # Try to convert to string or use the first element if it's a list
            if isinstance(script_path, list) and len(script_path) > 0:
                script_path = script_path[0]
            else:
                script_path = str(script_path)
        
        # Log what's being passed to help with debugging
        logger.info(f"Running Python script: {script_path}")
        if args:
            logger.info(f"With arguments: {args}")
        
        # Process script path to replace any placeholders
        script_path = self._replace_placeholders(script_path)
            
        # Process arguments to replace placeholders
        if args and isinstance(args, list):
            processed_args = []
            for arg in args:
                if isinstance(arg, str):
                    arg = self._replace_placeholders(arg)
                processed_args.append(arg)
            args = processed_args
        
        # Call the original method
        return super().run_python_script(script_path, args)
            
    # Add a wrapper for the original run_workflow method to ensure proper processing of all steps
    def run_workflow(self):
        """
        Override the run_workflow method to add additional processing for testing mode.
        
        Returns:
            bool: True if the workflow completed successfully, False otherwise.
        """
        # Just call the parent's run_workflow method directly - don't use stored reference
        # This avoids issues with method binding
        return super().run_workflow()


# This function will be used to apply the mixin to the existing WorkflowOrchestrator class
def enhance_orchestrator_with_testing(orchestrator_class):
    """
    Enhance the WorkflowOrchestrator class with testing capabilities.
    This adds the TestingSupport mixin to the class and preserves the original methods.
    
    Args:
        orchestrator_class: The original WorkflowOrchestrator class.
        
    Returns:
        class: Enhanced WorkflowOrchestrator class with testing capabilities.
    """
    # Create a new class that inherits from both the original class and the TestingSupport mixin
    class EnhancedWorkflowOrchestrator(TestingSupport, orchestrator_class):
        def __init__(self, *args, **kwargs):
            # Extract testing-specific arguments
            preanalyzed_data_dir = kwargs.pop('preanalyzed_data_dir', None)
            testing_mode = kwargs.pop('testing_mode', False)
            mock_manual_steps = kwargs.pop('mock_manual_steps', True)
            
            # Initialize the original class
            super().__init__(*args, **kwargs)
            
            # Bind original methods to this instance
            self._original_prompt_manual_step = types.MethodType(orchestrator_class.prompt_manual_step, self)
            self._original_launch_gui_application = types.MethodType(orchestrator_class.launch_gui_application, self)
            self._original_run_python_script = types.MethodType(orchestrator_class.run_python_script, self)
            
            # Initialize testing mode if requested
            if testing_mode and preanalyzed_data_dir:
                self.initialize_testing_mode(
                    preanalyzed_data_dir=preanalyzed_data_dir,
                    mock_manual_steps=mock_manual_steps
                )
    
    return EnhancedWorkflowOrchestrator