# Amazon CloudWatch

## Overview

Amazon CloudWatch provides monitoring and observability capabilities for AWS resources and applications.

## Core Capabilities

- Metrics
- Logs
- Alarms
- Dashboards
- Events and automation integrations
- Application monitoring capabilities

## Architecture

```text
AWS Resources
     |
     v
CloudWatch
├── Metrics
├── Logs
├── Alarms
└── Dashboards
```

## Common Monitoring Examples

- EC2 CPU utilization
- Application logs
- Load balancer metrics
- RDS metrics
- Lambda metrics
- Alarm states

## Alarms

CloudWatch alarms can evaluate metrics against thresholds and trigger configured actions.

Example:

```text
EC2 CPU > threshold
       |
       v
CloudWatch Alarm
       |
       v
Configured Action
```

## Interview Questions

1. What is CloudWatch?
2. Metrics vs logs?
3. What is a CloudWatch alarm?
4. How would you monitor EC2?
5. How can CloudWatch help troubleshoot production issues?

## Scenario

Users report that an application is slow.

A Cloud Engineer can investigate:

- EC2 metrics
- Load balancer metrics
- Application logs
- Database metrics
- Error rates
- Latency

## Key Takeaways

CloudWatch is central to AWS monitoring, alerting and operational troubleshooting.
