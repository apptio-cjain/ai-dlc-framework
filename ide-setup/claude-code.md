# Claude Code Setup

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

## Step 2: Reference in CLAUDE.md

Add this to your project's `CLAUDE.md` (create one if it doesn't exist):

```markdown
# CLAUDE.md

## AI-DLC Framework
Follow the workflow in `.ai-dlc/router.md` for all development tasks.
Always apply rules from `.ai-dlc/rules/coding-principles.md`.

For features, load `.ai-dlc/core-workflow.md` and follow the full AI-DLC process.
For bug fixes, load `.ai-dlc/rules/bug-fix-protocol.md`.
For refactoring, load `.ai-dlc/rules/refactor-protocol.md`.
For PR review, load `.ai-dlc/review/review-rules.md`.
```

## How It Works

1. Claude Code reads `CLAUDE.md` at project root on every interaction
2. The references tell it to load the router and coding principles
3. The AI reads additional files from `.ai-dlc/` on-demand based on the router's classification
4. Full workflow files are never pre-loaded — only read when needed

## What's Always Loaded vs On-Demand

| Always loaded (via CLAUDE.md) | On-demand (loaded when needed) |
|---|---|
| Router instructions | `core-workflow.md` |
| Coding principles | `inception/*.md`, `construction/*.md` |
| | `common/*.md`, `extensions/*.md` |
