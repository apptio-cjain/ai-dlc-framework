# Cursor IDE Setup

## Step 1: Add the framework to your project
```bash
# From your project root:
git clone https://github.com/apptio-cjain/ai-dlc-framework.git .ai-dlc
rm -rf .ai-dlc/.git
```

Or add as a git submodule:
```bash
git submodule add https://github.com/apptio-cjain/ai-dlc-framework.git .ai-dlc
```

## Step 2: Wire entry points into Cursor rules

```bash
mkdir -p .cursor/rules
cp .ai-dlc/router.md .cursor/rules/ai-dlc-router.mdc
cp .ai-dlc/rules/coding-principles.md .cursor/rules/coding-principles.mdc
```

Add this frontmatter to the top of both `.mdc` files:
```yaml
---
alwaysApply: true
---
```

## How It Works

1. Cursor loads `.cursor/rules/*.mdc` files with `alwaysApply: true` into every interaction
2. The **router** classifies your request and tells the AI which files to read next
3. The AI reads additional files from `.ai-dlc/` on-demand (Cursor can access any project file)
4. Full workflow files are never pre-loaded — only read when the workflow reaches that stage

## What's Always Loaded vs On-Demand

| Always loaded (~800 tokens) | On-demand (loaded when needed) |
|---|---|
| `router.md` | `core-workflow.md` |
| `rules/coding-principles.md` | `inception/*.md`, `construction/*.md` |
| | `common/*.md`, `extensions/*.md` |
| | `rules/bug-fix-protocol.md`, `rules/refactor-protocol.md` |
