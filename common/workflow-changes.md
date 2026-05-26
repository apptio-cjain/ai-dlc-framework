# Mid-Workflow Changes and Stage Management

## Overview

Users may request changes to the execution plan or stage execution during the workflow. This document provides guidance on handling these requests safely and effectively.

## Types of Mid-Workflow Changes

1. **Adding a Skipped Stage** - User wants to add a stage that was originally skipped
2. **Skipping a Planned Stage** - User wants to skip a stage that was planned to execute
3. **Restarting Current Stage** - User is unhappy with current stage results
4. **Restarting Previous Stage** - User wants to go back and redo a completed stage
5. **Changing Stage Depth** - User wants to change the depth level
6. **Pausing Workflow** - User needs to pause and resume later
7. **Changing Architectural Decision** - User wants to change architecture
8. **Adding/Removing Units** - User wants to modify units after generation

## General Guidelines

### Before Making Changes
1. Understand the Request
2. Assess Impact
3. Explain Consequences
4. Offer Alternatives
5. Get Explicit Confirmation

### Best Practices
1. Always Confirm before destructive changes
2. Explain Impact clearly
3. Offer Options when multiple paths exist
4. Archive First before making destructive changes
5. Update Everything to keep tracking files in sync
6. Log Thoroughly for audit trail
7. Validate After to ensure workflow can continue
8. Be Flexible - workflow should adapt to user needs
