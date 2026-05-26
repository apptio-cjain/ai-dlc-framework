# AI-DLC Framework

An IDE-agnostic AI Development Lifecycle framework. Provides structured workflows, coding principles, and local PR review for AI-assisted development tools.

## What's Inside

```
.
├── router.md                    # Entry point - classifies requests and picks the right workflow
├── core-workflow.md             # Full AI-DLC workflow (features, complex changes)
├── rules/
│   ├── coding-principles.md    # Always-on coding principles (think, simplify, be surgical)
│   ├── bug-fix-protocol.md     # Lightweight bug fix flow
│   └── refactor-protocol.md    # Lightweight refactoring flow
├── review/
│   ├── review-rules.md         # PR review guidelines and severity levels
│   └── local-review.sh         # Script to generate review prompts from git diff
├── common/                     # Shared rules (question format, validation, terminology)
├── inception/                  # Planning phase rules (requirements, stories, design)
├── construction/               # Build phase rules (functional design, NFRs, code gen)
├── operations/                 # Operations phase (placeholder for future)
├── extensions/                 # Optional extensions (security, PBT, UX wireframes)
└── ide-setup/                  # Setup guides for Kiro, Cursor, Claude Code
```

## Quick Start

1. **Copy this repo** into your project as `.ai-dlc/` (or wherever your IDE reads rules from)
2. **Follow the IDE setup guide** for your tool (see `ide-setup/`)
3. **Start coding** — the router classifies your request and picks the right workflow

## How It Works

### The Router

Every request is classified by `router.md`:

| Request Type | Flow | Overhead |
|---|---|---|
| Bug fix | `rules/bug-fix-protocol.md` | Minimal (5 steps) |
| Refactoring | `rules/refactor-protocol.md` | Minimal (5 steps) |
| PR review | `review/review-rules.md` | Minimal |
| New feature | `core-workflow.md` (full AI-DLC) | Adaptive |

### Coding Principles (Always Active)

Four rules that apply to ALL code generation, regardless of flow:

1. **Think before coding** — surface assumptions, don't hide confusion
2. **Simplicity first** — minimum code that solves the problem
3. **Surgical changes** — touch only what you must
4. **Goal-driven execution** — define success criteria, loop until verified

> Inspired by [Andrej Karpathy's observations](https://x.com/karpathy/status/2015883857489522876) on LLM coding pitfalls.

### Full AI-DLC Workflow (New Features)

For complex changes, the framework provides a three-phase lifecycle:

- **Inception** — Requirements, user stories, application design, unit decomposition
- **Construction** — Functional design, NFR design, code generation, build & test
- **Operations** — Deployment and monitoring (future)

Each phase is adaptive: simple requests skip unnecessary stages, complex requests get full coverage.

## Extensions

Optional extensions add specialized rules:

- **Security Baseline** — Security rules mapped to OWASP Top 10
- **Property-Based Testing** — PBT rules for thorough testing
- **UX Wireframes** — ASCII wireframe generation for UI features

Extensions use an opt-in model: you're asked during requirements analysis whether to enable them.

## IDE Support

| IDE | Setup Guide | Method |
|---|---|---|
| Kiro | `ide-setup/kiro.md` | `.kiro/steering/` symlinks |
| Cursor | `ide-setup/cursor.md` | `.cursor/rules/*.mdc` files |
| Claude Code | `ide-setup/claude-code.md` | `CLAUDE.md` reference |
| Any other | Point your AI at `router.md` | Works with any AI that reads files |

## Design Philosophy

- **Context-efficient**: Only load what's needed. Router + principles = ~600 tokens always. Full workflow loaded on-demand.
- **Adaptive**: Simple tasks get lightweight flows. Complex tasks get full ceremony.
- **IDE-agnostic**: Just markdown files. Works with any AI tool that can read project files.
- **Opinionated**: Strong defaults that prevent common AI coding mistakes.
- **Extensible**: Add your own extensions in `extensions/` with opt-in prompts.
