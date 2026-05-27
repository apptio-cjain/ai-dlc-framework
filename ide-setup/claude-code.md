# Claude Code Setup

## Setup
Reference the framework in your CLAUDE.md:
```markdown
# CLAUDE.md

## AI-DLC Framework
Follow the workflow in `.ai-dlc/router.md` for all development tasks.
Always apply rules from `.ai-dlc/rules/coding-principles.md`.
```

## How It Works
- Claude Code reads CLAUDE.md at project root
- The reference tells it to load the router
- Router handles flow selection and on-demand file loading
