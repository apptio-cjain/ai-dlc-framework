# Bug Fix Protocol

Lightweight flow for bug fixes. Skip the full AI-DLC ceremony.

## Steps

1. **Understand** — Read the relevant code. Reproduce the bug mentally or with a test.
2. **Write a failing test** — Capture the exact bug behavior in a test that fails.
3. **Fix minimally** — Make the smallest change that makes the test pass.
4. **Verify** — Run the full test suite. Ensure no regressions.
5. **Check callers** — If the fix touches shared code, verify callers aren't affected.

## Do NOT

- Refactor surrounding code as part of a bug fix
- Add "while I'm here" improvements
- Change method signatures unless absolutely necessary
- Fix multiple bugs in one change
- Add speculative error handling for unrelated scenarios

## Success Criteria

- The failing test now passes
- No existing tests broke
- The diff is minimal and traces directly to the bug
