# AWS Organizations

## Overview

AWS Organizations is used to centrally manage multiple AWS accounts.

## Why Companies Use It

- Separate workloads by account
- Centralize governance
- Apply policies
- Consolidate billing
- Improve isolation between environments

## Typical Structure

```text
AWS Organization
│
├── Management Account
│
├── Production Account
├── Development Account
├── Security Account
└── Logging Account
```

## Organizational Units

Accounts can be grouped into Organizational Units (OUs) to apply governance consistently.

## Service Control Policies

Service Control Policies (SCPs) provide organization-level guardrails. They set the maximum available permissions for identities in member accounts; they do not themselves grant permissions.

## Production Considerations

- Separate production and non-production workloads
- Use dedicated security/logging accounts where appropriate
- Apply carefully designed SCP guardrails
- Restrict management-account usage
- Monitor organization changes

## Interview Questions

1. What is AWS Organizations?
2. Why use multiple AWS accounts?
3. What is an OU?
4. What is an SCP?
5. Does an SCP grant permissions?
6. How would you structure accounts for a growing company?

## Key Takeaways

Organizations provides centralized multi-account governance, isolation and billing capabilities.
