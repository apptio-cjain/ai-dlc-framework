# Kiro IDE Setup

## Option A: Symlink (recommended)
```bash
# From your project root:
ln -s ../.ai-dlc/router.md .kiro/steering/ai-dlc-router.md
ln -s ../.ai-dlc/rules/karpathy-principles.md .kiro/steering/karpathy-principles.md
```

## Option B: Copy
Copy `router.md` and `rules/karpathy-principles.md` into `.kiro/steering/`.

## How It Works
- Kiro auto-loads all files in `.kiro/steering/` into every interaction
- The router classifies your request and loads the appropriate workflow
- Karpathy principles are always active (600 tokens, negligible cost)
- Full AI-DLC files are loaded on-demand by the workflow, not upfront
