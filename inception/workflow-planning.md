# Workflow Planning

**Purpose**: Determine which phases to execute and create comprehensive execution plan

**Always Execute**: This phase always runs after understanding requirements and scope

## Steps

1. **Load All Prior Context** - Reverse engineering, requirements, user stories
2. **Detailed Scope and Impact Analysis** - Transformation scope, change impact, component relationships, risk assessment
3. **Phase Determination** - Decide EXECUTE or SKIP for each conditional stage
4. **Note Adaptive Detail** - Detail level adapts to problem complexity
5. **Multi-Module Coordination Analysis** (Brownfield Only) - Analyze dependencies, determine update strategy
6. **Generate Workflow Visualization** - Create Mermaid flowchart
7. **Create Execution Plan Document** - Comprehensive plan with rationale
8. **Initialize State Tracking** - Update aidlc-state.md
9. **Present Plan to User** - Show recommendations, emphasize user control to override
10. **Handle User Response** - Approved, changes requested, or force include/exclude
11. **Log Interaction** - Record in audit.md
