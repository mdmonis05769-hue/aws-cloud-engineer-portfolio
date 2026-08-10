# AWS CloudTrail

## Overview

AWS CloudTrail records AWS API activity and provides visibility into actions performed in an AWS environment.

## Why Companies Use CloudTrail

- Security auditing
- Governance
- Compliance
- Troubleshooting
- Investigating changes
- Tracking API activity

## Architecture

```text
AWS API Activity
       |
       v
CloudTrail
       |
       v
Event Records
       |
       v
Configured Storage / Analysis
```

## Typical Questions It Helps Answer

- Who changed a resource?
- When did the change happen?
- Which API action was performed?
- From where did the request originate?
- Which resource was affected?

## CloudTrail vs CloudWatch

| CloudTrail | CloudWatch |
|---|---|
| API activity/audit | Monitoring/observability |
| Who performed an AWS action | Resource/application metrics and logs |
| Security and governance | Operational monitoring |

## Interview Questions

1. What is CloudTrail?
2. CloudTrail vs CloudWatch?
3. Why is CloudTrail important for security?
4. How would you investigate an unexpected AWS resource change?

## Key Takeaways

CloudTrail provides an audit trail of AWS API activity and is important for security and governance.
