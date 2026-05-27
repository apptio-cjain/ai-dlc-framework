# Bob IDE Setup

## Step 1: Add the framework to your project

```bash
# From your project root, clone the framework:
git clone https://github.com/apptio-cjain/ai-dlc-framework.git .ai-dlc
rm -rf .ai-dlc/.git  # Remove git history, it's now part of your project
```

Or add as a git submodule:

```bash
git submodule add https://github.com/apptio-cjain/ai-dlc-framework.git .ai-dlc
```

## How It Works

Bob reads AI-DLC rules on-demand when you start a development task:

1. When you describe a software development task, Bob automatically detects the `.ai-dlc/` directory
2. Bob loads `core-workflow.md` which contains the main workflow orchestration
3. Based on the workflow stage, Bob reads additional files from `.ai-dlc/rules/` as needed:
   - Common rules: `common/process-overview.md`, `common/session-continuity.md`, etc.
   - Inception phase: `inception/workspace-detection.md`, `inception/requirements-analysis.md`, etc.
   - Construction phase: `construction/code-generation.md`, `construction/build-and-test.md`, etc.
   - Extensions: Only loaded when user opts in during Requirements Analysis

## On-Demand Loading Strategy

Bob efficiently loads rules using batch reading (up to 5 files at once):

| Workflow Stage | Files Loaded |
|----------------|--------------|
| Workflow Start | `core-workflow.md` + 4 common rules |
| Workspace Detection | `inception/workspace-detection.md` |
| Requirements Analysis | `inception/requirements-analysis.md` |
| User Stories | `inception/user-stories.md` |
| Workflow Planning | `inception/workflow-planning.md` |
| Code Generation | `construction/code-generation.md` |
| Build and Test | `construction/build-and-test.md` |
| Extensions | Loaded only when user opts in |

All rules are read from `.ai-dlc/rules/` directory - nothing needs to be copied or symlinked elsewhere.
