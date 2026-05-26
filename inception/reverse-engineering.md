# Reverse Engineering

**Purpose**: Analyze existing codebase and generate comprehensive design artifacts

**Execute when**: Brownfield project detected (existing code found in workspace)
**Skip when**: Greenfield project (no existing code)

## Steps

1. **Multi-Package Discovery** - Scan workspace, understand business context, discover infrastructure, build system, service architecture, code quality
2. **Generate Business Overview Documentation** - Business context, transactions, dictionary
3. **Generate Architecture Documentation** - System overview, diagrams, component descriptions, data flow
4. **Generate Code Structure Documentation** - Build system, key classes, design patterns, dependencies
5. **Generate API Documentation** - REST APIs, internal APIs, data models
6. **Generate Component Inventory** - Application, infrastructure, shared, test packages
7. **Generate Technology Stack Documentation** - Languages, frameworks, infrastructure, tools
8. **Generate Dependencies Documentation** - Internal and external dependencies
9. **Generate Code Quality Assessment** - Test coverage, code quality indicators, technical debt
10. **Create Timestamp File** - Record analysis metadata
11. **Update State Tracking**
12. **Present Completion Message** - Wait for user approval
