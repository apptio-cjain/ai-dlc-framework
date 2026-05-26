# Overconfidence Prevention Guide

## Problem Statement

AI-DLC was exhibiting overconfidence by not asking enough clarifying questions, even for complex project intent statements. This led to assumptions being made instead of gathering proper requirements.

## Root Cause Analysis

The overconfidence issue was caused by directives in multiple stages that encouraged skipping questions:

1. **Functional Design**: "Skip entire categories if not applicable"
2. **User Stories**: "Use categories as inspiration, NOT as mandatory checklist"
3. **Requirements Analysis**: Similar patterns encouraging minimal questioning
4. **NFR Requirements**: "Only if" conditions that discouraged thorough analysis

## Solution Implemented

### Updated Question Generation Philosophy

**OLD APPROACH**: "Only ask questions if absolutely necessary"
**NEW APPROACH**: "When in doubt, ask the question - overconfidence leads to poor outcomes"

### New Guiding Principles

1. **Default to Asking**: When there's any ambiguity, ask clarifying questions
2. **Comprehensive Coverage**: Evaluate ALL relevant categories, don't skip areas
3. **Thorough Analysis**: Carefully analyze ALL user responses for ambiguities
4. **Mandatory Follow-up**: Create follow-up questions for ANY unclear responses
5. **No Proceeding with Ambiguity**: Don't move forward until ALL ambiguities are resolved

## Key Takeaway

**It's better to ask too many questions than to make incorrect assumptions.** The cost of asking clarifying questions upfront is far less than the cost of implementing the wrong solution based on assumptions.
