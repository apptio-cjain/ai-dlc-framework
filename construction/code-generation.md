# Code Generation - Detailed Steps

## Overview
This stage generates code for each unit of work through two integrated parts:
- **Part 1 - Planning**: Create detailed code generation plan with explicit steps
- **Part 2 - Generation**: Execute approved plan to generate code, tests, and artifacts

**Note**: For brownfield projects, "generate" means modify existing files when appropriate, not create duplicates.

## Prerequisites
- Unit Design Generation must be complete for the unit
- NFR Implementation (if executed) must be complete for the unit
- All unit design artifacts must be available

## Part 1: Planning
- Analyze Unit Context
- Create Detailed Unit Code Generation Plan
- Include Unit Generation Context
- Create Unit Plan Document
- Summarize Unit Plan
- Wait for Explicit Approval

## Part 2: Generation
- Load Unit Code Generation Plan
- Execute Current Step
- Update Progress
- Continue or Complete Generation
- Present Completion Message
- Wait for Explicit Approval

## Critical Rules

### Code Location Rules
- **Application code**: Workspace root only (NEVER aidlc-docs/)
- **Documentation**: aidlc-docs/ only (markdown summaries)

### Brownfield File Modification Rules
- Check if file exists before generating
- If exists: Modify in-place (never create copies)
- If doesn't exist: Create new file

### Automation Friendly Code Rules
- Add `data-testid` attributes to interactive elements
- Use consistent naming: `{component}-{element-role}`
- Avoid dynamic or auto-generated IDs
