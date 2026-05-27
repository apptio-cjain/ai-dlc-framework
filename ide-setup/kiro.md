# Kiro IDE Setup

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

## Step 2: Wire entry points into Kiro steering

Only the router and coding principles need to be always-loaded. The rest is read on-demand.

### Option A: Symlink (recommended)
```bash
ln -s ../.ai-dlc/router.md .kiro/steering/ai-dlc-router.md
ln -s ../.ai-dlc/rules/coding-principles.md .kiro/steering/coding-principles.md
```

### Option B: Copy
```bash
cp .ai-dlc/router.md .kiro/steering/ai-dlc-router.md
cp .ai-dlc/rules/coding-principles.md .kiro/steering/coding-principles.md
```

## How It Works

1. Kiro auto-loads `.kiro/steering/` files into every interaction (~800 tokens)
2. The **router** classifies your request (bug fix? feature? refactor?)
3. Based on classification, the AI reads additional files from `.ai-dlc/` on-demand:
   - Bug fix → reads `rules/bug-fix-protocol.md`
   - Feature → reads `core-workflow.md` → then `inception/`, `construction/` files as needed
   - Refactor → reads `rules/refactor-protocol.md`
4. The full workflow files (`common/`, `inception/`, `construction/`, `extensions/`) are never pre-loaded — only read when the workflow reaches that stage

## What's Always Loaded vs On-Demand

| Always loaded (~800 tokens) | On-demand (loaded when needed) |
|---|---|
| `router.md` | `core-workflow.md` |
| `rules/coding-principles.md` | `inception/*.md` |
| | `construction/*.md` |
| | `common/*.md` |
| | `extensions/*.md` |
| | `rules/bug-fix-protocol.md` |
| | `rules/refactor-protocol.md` |
| | `review/review-rules.md` |
