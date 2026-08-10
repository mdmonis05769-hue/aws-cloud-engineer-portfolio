# Amazon RDS

## Overview

Amazon Relational Database Service (RDS) is a managed service for relational databases.

It supports several relational database engines and handles many operational tasks such as provisioning, backups and maintenance.

## Why Companies Use RDS

- Managed relational databases
- Automated backups
- High availability options
- Easier maintenance
- Monitoring
- Scaling options
- Reduced database administration overhead

## Architecture

```text
Application
    |
    v
Private Subnets
    |
    v
RDS
├── Primary
└── Standby / HA configuration
```

## Multi-AZ

Multi-AZ deployments are designed to improve availability by maintaining a standby database in another Availability Zone.

## Read Replicas

Read replicas can be used to scale read-heavy workloads, subject to engine and architecture requirements.

## Security

- Keep databases private where possible
- Restrict inbound database ports
- Use security groups
- Encrypt data where required
- Protect credentials
- Monitor database activity
- Apply least privilege

## Backup

RDS supports automated backups and manual snapshots.

## Interview Questions

1. What is RDS?
2. RDS vs running a database on EC2?
3. What is Multi-AZ?
4. What is a read replica?
5. Multi-AZ vs read replica?
6. How would you secure RDS?
7. How would you troubleshoot database connectivity?

## Scenario

A production web application requires a relational database that should not be publicly accessible.

Recommended pattern:

```text
Internet
   |
   v
Load Balancer
   |
   v
Private Application Tier
   |
   v
Private RDS
```

## Key Takeaways

RDS provides managed relational databases. Networking, security groups, backups, encryption and high availability are critical Cloud Engineer considerations.
