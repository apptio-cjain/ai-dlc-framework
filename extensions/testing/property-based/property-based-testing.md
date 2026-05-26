# Property-Based Testing Rules

## Overview

These property-based testing (PBT) rules are cross-cutting constraints that apply across applicable AI-DLC phases. They ensure that code with identifiable properties is tested using property-based techniques, complementing (not replacing) traditional example-based tests.

## Rules

- **PBT-01**: Property Identification During Design
- **PBT-02**: Round-Trip Properties
- **PBT-03**: Invariant Properties
- **PBT-04**: Idempotency Properties
- **PBT-05**: Oracle and Model-Based Testing
- **PBT-06**: Stateful Property Testing
- **PBT-07**: Generator Quality
- **PBT-08**: Shrinking and Reproducibility
- **PBT-09**: Framework Selection
- **PBT-10**: Complementary Testing Strategy

## Enforcement Integration

| Stage | Applicable Rules | Enforcement |
|---|---|---|
| Functional Design | PBT-01 | Property identification must appear in design artifacts |
| NFR Requirements | PBT-09 | Framework selection must be included in tech stack decisions |
| Code Generation (Planning) | PBT-01 through PBT-10 | Code generation plan must include PBT test steps |
| Code Generation (Generation) | PBT-02 through PBT-08, PBT-10 | Generated tests must include PBT alongside example-based tests |
| Build and Test | PBT-08 | Test execution instructions must include PBT with seed logging |

## Recommended Frameworks

| Language | Framework |
|---|---|
| Python | Hypothesis |
| JavaScript/TypeScript | fast-check |
| Java | jqwik |
| Kotlin | Kotest Property Testing |
| Rust | proptest |
| Go | rapid |
