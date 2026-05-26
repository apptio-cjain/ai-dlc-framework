# UX Wireframes Extension Rules

## Overview

This extension adds a UX Wireframe stage to the AI-DLC workflow. When enabled, it generates text-based wireframes for user-facing screens, asks targeted UX questions, and ensures design decisions are validated before code generation begins.

**Placement in Workflow**: Executes after Requirements Analysis (or User Stories if executed) and before Application Design.

**Enforcement**: When enabled, the model MUST generate wireframes for all identified user-facing screens before proceeding to Application Design or Code Generation.

## Stage: UX Wireframe Generation

### Steps

1. **Screen Inventory** - Identify all screens/views that need wireframes
2. **UX Clarifying Questions** - Ask about layout, user flow, data display, interactions, accessibility
3. **Generate ASCII Wireframes** - Create text-based wireframes for each screen
4. **User Flow Diagram** - Show navigation between screens
5. **Wireframe Review & Approval** - Present for user review

## Cross-Stage Enforcement

- During Application Design: Component design MUST reference wireframes
- During Functional Design: Business logic MUST account for all states shown
- During Code Generation: Generated UI code MUST implement the wireframe layouts
