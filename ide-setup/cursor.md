# Cursor IDE Setup

## Setup
Copy the rules into Cursor's rules directory:
```bash
mkdir -p .cursor/rules
cp .ai-dlc/router.md .cursor/rules/ai-dlc-router.mdc
cp .ai-dlc/rules/coding-principles.md .cursor/rules/coding-principles.mdc
```

Add `alwaysApply: true` frontmatter to both files.

## How It Works
- Cursor loads `.cursor/rules/*.mdc` files into context
- The router handles flow selection
- Full AI-DLC files loaded on-demand via file references
