# AWS Monitoring and Observability

## Core Services

### CloudWatch

Used for metrics, logs, alarms, dashboards and operational monitoring.

### CloudTrail

Used to record AWS API activity for auditing, security and governance.

## Troubleshooting Flow

```text
Alert
  ↓
Identify affected resource
  ↓
Check metrics
  ↓
Check logs
  ↓
Check recent changes
  ↓
Identify root cause
  ↓
Apply remediation
  ↓
Verify recovery
```

A Cloud Engineer should be able to use monitoring and audit information together when investigating production incidents.
