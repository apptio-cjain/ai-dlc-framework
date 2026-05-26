# Local PR Review Rules

Guidelines for AI-powered code review before pushing.

## What to Check

### Critical (must fix before merge)
- Security vulnerabilities (SQL injection, XSS, hardcoded secrets)
- Data loss risks (missing null checks on critical paths, unclosed resources)
- Breaking changes to public APIs without versioning
- Race conditions or deadlocks in concurrent code

### Major (should fix)
- Missing error handling on I/O operations
- Performance issues (N+1 queries, unbounded collections, missing indexes)
- Logic errors (off-by-one, wrong operator, inverted conditions)
- Missing input validation on external inputs

### Minor (nice to have)
- Naming improvements for clarity
- Missing documentation on public methods
- Inconsistent code style (only if project has a style guide)

## What NOT to Flag

- Cosmetic preferences (brace style, blank lines) unless violating project style
- "I would have done it differently" without a concrete improvement
- Theoretical issues that can't happen given the context
- Suggestions that would require significant refactoring unrelated to the PR

## Output Format

For each issue found:
- File and line number
- Severity (Critical / Major / Minor)
- What's wrong (one sentence)
- Suggested fix (code snippet if helpful)

## Merge Decision

- **APPROVE**: No critical issues, 0-2 minor issues
- **REQUEST_CHANGES**: Any critical issue, or 3+ major issues
- **COMMENT**: 1-2 major issues that should be discussed
