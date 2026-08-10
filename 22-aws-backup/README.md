# AWS Backup

## Overview

AWS Backup is a managed service for centrally configuring and managing backups across supported AWS resources.

## Why Companies Use It

- Centralize backup management
- Automate backup schedules
- Define retention policies
- Support compliance requirements
- Help recover from accidental deletion or failures

## Core Concepts

- Backup vault
- Backup plan
- Backup rule
- Recovery point
- Resource assignment
- Retention

## Architecture

```text
AWS Resources
   |
   v
AWS Backup
   |
   v
Backup Plan
   |
   v
Backup Vault
   |
   v
Recovery Point
```

## Production Considerations

- Define RPO/RTO requirements
- Choose retention carefully
- Protect backup vault access
- Test restores periodically
- Consider cross-account or cross-region strategies where required

## Interview Questions

1. What is AWS Backup?
2. What is a backup vault?
3. What is a recovery point?
4. Why are restore tests important?
5. How would you design backups for a production application?
6. RPO vs RTO?

## Key Takeaways

AWS Backup centralizes backup policy and operations across supported AWS resources.
