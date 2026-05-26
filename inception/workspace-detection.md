# Workspace Detection

**Purpose**: Determine workspace state and check for existing AI-DLC projects

## Steps

1. **Check for Existing AI-DLC Project** - Check if aidlc-state.md exists (resume if found)
2. **Scan Workspace for Existing Code** - Determine if workspace has existing code, identify languages, build system, project structure
3. **Determine Next Phase** - Greenfield → Requirements Analysis, Brownfield → Reverse Engineering (if no artifacts)
4. **Create Initial State File** - Create aidlc-state.md with project information
5. **Present Completion Message** - Informational only, no approval required
6. **Automatically Proceed** - Move to next phase without waiting
