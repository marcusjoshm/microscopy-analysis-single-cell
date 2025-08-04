"""
Stage Registration Module for Microscopy Single-Cell Analysis

Registers all available pipeline stages and their implementations.
"""

from ..core.stages import register_stage
from .stage_classes import (
    PreprocessingStage,
    SegmentationStage,
    AnalysisStage
)


def register_all_stages():
    """Register all available pipeline stages."""
    
    # Core processing stages (in execution order)
    register_stage('preprocessing', order=1)(PreprocessingStage)
    register_stage('segmentation', order=2)(SegmentationStage)
    register_stage('analysis', order=3)(AnalysisStage) 