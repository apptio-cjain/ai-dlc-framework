# Refactor Protocol

Lightweight flow for refactoring. Ensures safety without full AI-DLC ceremony.

## Steps

1. **Verify tests pass** — Run the full test suite before touching anything.
2. **Define scope** — State exactly what you're refactoring and why.
3. **Make changes** — Apply the refactoring in small, reviewable steps.
4. **Verify tests still pass** — Run the full test suite after each step.
5. **Review the diff** — Every changed line should serve the refactoring goal.

## Do NOT

- Change behavior while refactoring (separate concerns)
- Add new features during a refactor
- Remove tests that "get in the way"
- Refactor code unrelated to the stated scope

## Success Criteria

- All tests pass before AND after
- No behavior change (same inputs → same outputs)
- Code is measurably simpler (fewer lines, fewer abstractions, clearer names)
