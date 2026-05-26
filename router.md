# Flow Router

MANDATORY: Always apply rules from `rules/karpathy-principles.md` in ALL interactions.

## Decision Tree

Classify the user's request and follow the appropriate flow:

### 1. Bug Fix
**Signals:** "fix", "bug", references a ticket/issue, single behavior broken, error message provided
**Action:** Load `rules/bug-fix-protocol.md` and execute it. STOP.

### 2. Refactoring
**Signals:** "rename", "move", "extract", "clean up", "refactor", no behavior change expected
**Action:** Load `rules/refactor-protocol.md` and execute it. STOP.

### 3. Local PR Review
**Signals:** "review", "check my code", "before I push", "pre-commit review"
**Action:** Load `review/review-rules.md` and run review on the current diff. STOP.

### 4. New Feature / Complex Change
**Signals:** "add", "implement", "new", "build", multiple components affected, architectural change
**Action:** Load `core-workflow.md` and execute the full AI-DLC framework.

### 5. Ambiguous
If the request doesn't clearly match any of the above, ask:
"Is this a bug fix, refactoring, or a new feature? This helps me pick the right level of process."

## Always-On Rules

Regardless of which flow is selected, these rules apply to ALL code generation:
- Think before coding (don't assume)
- Simplicity first (minimum viable code)
- Surgical changes (only touch what's needed)
- Goal-driven execution (define success criteria)
