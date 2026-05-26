# Baseline Security Rules

## Overview
These security rules are MANDATORY cross-cutting constraints that apply across all AI-DLC phases. They are not optional guidance — they are hard constraints that stages MUST enforce when generating questions, producing design artifacts, generating code, and presenting completion messages.

**Enforcement**: At each applicable stage, the model MUST verify compliance with these rules before presenting the stage completion message to the user.

## Rules

- **SECURITY-01**: Encryption at Rest and in Transit
- **SECURITY-02**: Access Logging on Network Intermediaries
- **SECURITY-03**: Application-Level Logging
- **SECURITY-04**: HTTP Security Headers for Web Applications
- **SECURITY-05**: Input Validation on All API Parameters
- **SECURITY-06**: Least-Privilege Access Policies
- **SECURITY-07**: Restrictive Network Configuration
- **SECURITY-08**: Application-Level Access Control
- **SECURITY-09**: Security Hardening and Misconfiguration Prevention
- **SECURITY-10**: Software Supply Chain Security
- **SECURITY-11**: Secure Design Principles
- **SECURITY-12**: Authentication and Credential Management
- **SECURITY-13**: Software and Data Integrity Verification
- **SECURITY-14**: Alerting and Monitoring
- **SECURITY-15**: Exception Handling and Fail-Safe Defaults

Each rule includes verification criteria that must be evaluated as compliant or non-compliant during review. Non-compliance with any applicable enabled rule is a blocking finding.
