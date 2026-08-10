#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

mkdir -p "15-kms"

cat > '15-kms/README.md' <<'EOF'
# AWS Key Management Service (KMS)

## Overview

AWS Key Management Service (KMS) is a managed service for creating and controlling cryptographic keys used to protect data in AWS and applications.

## Why Companies Use KMS

- Encrypt sensitive data
- Control who can use encryption keys
- Centralize key management
- Support auditing and compliance
- Integrate encryption with AWS services

## Core Concepts

| Concept | Purpose |
|---|---|
| KMS key | Cryptographic key managed by KMS |
| Key policy | Resource-based policy controlling key access |
| IAM policy | IAM-side permissions for KMS actions |
| Key rotation | Rotating key material according to supported configuration |
| Envelope encryption | Encrypt data with a data key and protect that key with a KMS key |

## Architecture

```text
Application / AWS Service
          |
          v
        KMS
          |
          v
     KMS Key
          |
          v
Encrypted Data
```

## Security

- Apply least privilege
- Restrict key administration separately from key usage
- Avoid exposing key material
- Monitor key usage with CloudTrail
- Use encryption at rest where required
- Protect and review key policies

## Common Integrations

KMS integrates with services such as S3, EBS, RDS, Secrets Manager and many other AWS services.

## Interview Questions

1. What is AWS KMS?
2. What is the difference between a KMS key and a data key?
3. What is envelope encryption?
4. KMS key policy vs IAM policy?
5. How would you control access to a production encryption key?
6. How would you investigate unexpected KMS usage?

## Key Takeaways

KMS provides centralized, controlled encryption-key management and is a core AWS security service.
EOF

mkdir -p "16-secrets-manager"

cat > '16-secrets-manager/README.md' <<'EOF'
# AWS Secrets Manager

## Overview

AWS Secrets Manager securely stores, retrieves and manages sensitive information such as database credentials, API keys and application secrets.

## Why Companies Use It

- Remove secrets from source code
- Centralize secret storage
- Control access with IAM
- Support automatic rotation for supported integrations
- Encrypt secrets

## Architecture

```text
Application
    |
    | IAM Role
    v
Secrets Manager
    |
    v
Encrypted Secret
```

## Production Pattern

An application should retrieve a secret at runtime rather than storing credentials in GitHub or an AMI.

```text
Application
   |
   v
IAM Role
   |
   v
Secrets Manager
   |
   v
Database Credentials
```

## Security

- Use least-privilege IAM permissions
- Encrypt secrets
- Restrict secret access
- Avoid logging secret values
- Rotate secrets when appropriate
- Never commit secrets to source control

## Secrets Manager vs Parameter Store

Secrets Manager is designed specifically for secret management and supports features such as secret rotation. Systems Manager Parameter Store is useful for configuration parameters and can also store secure strings.

## Interview Questions

1. Why should credentials not be stored in application code?
2. What is AWS Secrets Manager?
3. Secrets Manager vs Parameter Store?
4. How would an EC2 application retrieve a database password securely?
5. How would you prevent a developer from reading production secrets?

## Key Takeaways

Secrets Manager helps applications use sensitive configuration without hard-coding credentials.
EOF

mkdir -p "17-sns"

cat > '17-sns/README.md' <<'EOF'
# Amazon SNS

## Overview

Amazon Simple Notification Service (SNS) is a managed messaging service used for pub/sub messaging and application notifications.

## Core Concepts

- Topic
- Publisher
- Subscriber
- Message
- Subscription
- Filter policy

## Architecture

```text
Publisher
    |
    v
SNS Topic
  / | \
 v  v  v
SQS Email Lambda
```

## Common Uses

- Application notifications
- Fan-out messaging
- Event distribution
- Alerts
- Integration with SQS and Lambda

## SNS + SQS Fan-Out

A common production pattern is to publish an event once and deliver it to multiple queues.

```text
Application
    |
    v
SNS Topic
   / \
  v   v
SQS  SQS
 |    |
Worker Worker
```

## Security

- Control topic access with IAM and resource policies
- Encrypt sensitive messaging where required
- Restrict publishers/subscribers
- Monitor delivery and failures

## Interview Questions

1. What is SNS?
2. What is a topic?
3. SNS vs SQS?
4. What is fan-out?
5. How would you distribute one event to multiple consumers?
6. How would you secure an SNS topic?

## Key Takeaways

SNS is primarily used to distribute messages/events to multiple subscribers and for notification workflows.
EOF

mkdir -p "18-sqs"

cat > '18-sqs/README.md' <<'EOF'
# Amazon SQS

## Overview

Amazon Simple Queue Service (SQS) is a managed message queuing service that decouples application components.

## Why Companies Use SQS

- Decouple services
- Buffer traffic
- Process work asynchronously
- Improve resilience
- Handle temporary downstream failures

## Queue Types

### Standard Queue

Designed for very high throughput with at-least-once delivery and best-effort ordering.

### FIFO Queue

Designed when strict ordering and deduplication requirements are important, subject to service limits.

## Architecture

```text
Producer
   |
   v
SQS Queue
   |
   v
Consumer / Worker
```

## Visibility Timeout

After a consumer receives a message, the message becomes temporarily invisible to other consumers while processing occurs. The consumer should delete the message after successful processing.

## Dead-Letter Queue

Failed messages can be moved to a dead-letter queue after a configured number of receive attempts.

```text
Main Queue
   |
   | repeated failures
   v
Dead-Letter Queue
```

## Interview Questions

1. What is SQS?
2. Standard vs FIFO queue?
3. What is visibility timeout?
4. What is a dead-letter queue?
5. Why use SQS between two services?
6. What happens if a consumer fails while processing a message?

## Key Takeaways

SQS provides durable asynchronous messaging and helps decouple distributed application components.
EOF

mkdir -p "19-waf"

cat > '19-waf/README.md' <<'EOF'
# AWS WAF

## Overview

AWS WAF is a web application firewall that helps protect supported web applications and APIs from common web exploits and unwanted traffic.

## Architecture

```text
Internet
   |
   v
CloudFront / ALB / API Gateway
   |
   v
AWS WAF
   |
   v
Application
```

## Common Protections

WAF rules can inspect HTTP requests and help control traffic based on characteristics such as:

- IP addresses
- HTTP methods
- URI paths
- Query strings
- Headers
- Managed rule groups
- Rate-based conditions

## Production Considerations

- Start with appropriate managed rules
- Tune rules to reduce false positives
- Use logging and monitoring
- Apply rate limiting where appropriate
- Review blocked requests
- Protect public-facing applications

## WAF vs Security Group

| WAF | Security Group |
|---|---|
| Web/application-layer filtering | Network traffic control |
| HTTP/HTTPS request inspection | Resource-level stateful firewall |
| Protects supported web workloads | Controls network connectivity |

## Interview Questions

1. What is AWS WAF?
2. WAF vs Security Group?
3. Where can WAF be associated?
4. What is a rate-based rule?
5. How would you investigate legitimate traffic being blocked?

## Key Takeaways

WAF provides application-layer protection for supported AWS web workloads.
EOF

mkdir -p "20-elasticache"

cat > '20-elasticache/README.md' <<'EOF'
# Amazon ElastiCache

## Overview

Amazon ElastiCache is a managed in-memory caching service supporting Redis and Memcached engines.

## Why Companies Use It

- Reduce database load
- Improve application response times
- Cache frequently accessed data
- Support session and temporary data use cases

## Architecture

```text
Application
   |
   +----> ElastiCache
   |
   +----> RDS / Database
```

The application checks the cache first and accesses the database when the required data is not cached.

## Common Use Cases

- Frequently read data
- Session storage
- Application caching
- Leaderboards and real-time workloads
- Reducing database pressure

## Production Considerations

- Place the cache in appropriate private networking
- Restrict access using security groups
- Define suitable TTLs
- Design cache invalidation carefully
- Monitor memory and connection metrics
- Understand persistence and availability requirements for the chosen engine/configuration

## Interview Questions

1. What is ElastiCache?
2. Why use a cache?
3. Redis vs Memcached?
4. What is cache invalidation?
5. How does caching reduce database load?
6. How would you secure ElastiCache?

## Key Takeaways

ElastiCache provides managed in-memory caching for lower latency and reduced backend load.
EOF

mkdir -p "21-aurora"

cat > '21-aurora/README.md' <<'EOF'
# Amazon Aurora

## Overview

Amazon Aurora is a managed relational database engine compatible with MySQL and PostgreSQL.

It is designed for high performance and availability while integrating with the Amazon RDS platform.

## Why Companies Use Aurora

- Managed relational database
- High availability options
- Automated backups
- Read scaling options
- Integration with AWS security and monitoring

## Architecture

```text
Application
    |
    v
Private Database Subnets
    |
    v
Aurora Cluster
├── Writer
└── Reader(s)
```

## Aurora vs Standard RDS

Aurora is an AWS-built relational database engine with its own distributed storage architecture and availability/scaling features. Standard RDS refers to managed deployments of supported database engines such as MySQL, PostgreSQL, MariaDB, Oracle and SQL Server.

## Security

- Keep databases private where possible
- Restrict security-group access
- Encrypt data
- Protect credentials
- Use IAM/database authentication features where appropriate
- Monitor activity

## Interview Questions

1. What is Amazon Aurora?
2. Aurora vs RDS?
3. What is an Aurora cluster?
4. Writer vs reader?
5. How would you design an HA relational database on AWS?
6. How would you secure Aurora?

## Key Takeaways

Aurora is a managed AWS relational database engine designed for demanding production workloads.
EOF

mkdir -p "22-aws-backup"

cat > '22-aws-backup/README.md' <<'EOF'
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
EOF

mkdir -p "23-systems-manager"

cat > '23-systems-manager/README.md' <<'EOF'
# AWS Systems Manager

## Overview

AWS Systems Manager provides tools for managing, operating and monitoring AWS and hybrid infrastructure.

## Important Capabilities

- Session Manager
- Run Command
- Patch Manager
- Automation
- Parameter Store
- Fleet management capabilities

## Architecture

```text
Cloud Engineer
      |
      v
Systems Manager
   /    |     \
Session Run    Patch
Manager Command Manager
   |      |      |
 EC2    EC2     EC2
```

## Session Manager

Session Manager can provide secure shell-like access to managed instances without requiring inbound SSH access, when the required configuration and permissions are in place.

## Run Command

Run Command can execute commands across managed instances without manually connecting to each server.

## Security

- Use least-privilege IAM permissions
- Control which instances can be managed
- Avoid exposing management ports unnecessarily
- Audit management activity
- Use secure parameter handling

## Interview Questions

1. What is Systems Manager?
2. What is Session Manager?
3. Why use Session Manager instead of public SSH?
4. What is Run Command?
5. How can Systems Manager help patch EC2 instances?
6. How would you secure Systems Manager access?

## Key Takeaways

Systems Manager provides centralized operational control for AWS and hybrid infrastructure.
EOF

mkdir -p "24-cloudformation"

cat > '24-cloudformation/README.md' <<'EOF'
# AWS CloudFormation

## Overview

AWS CloudFormation is an Infrastructure as Code service used to model and provision AWS resources through templates.

## Why Companies Use It

- Repeatable infrastructure
- Version-controlled architecture
- Consistent environments
- Automated resource provisioning
- Change management
- Stack lifecycle management

## Architecture

```text
CloudFormation Template
          |
          v
       Stack
          |
    +-----+-----+
    |     |     |
   VPC   EC2   S3
```

## Core Concepts

- Template
- Stack
- Resources
- Parameters
- Outputs
- Mappings
- Conditions
- Change sets
- Nested stacks

## Production Considerations

- Store templates in version control
- Use parameters instead of hard-coding environment values
- Review change sets before risky changes
- Separate environments appropriately
- Protect critical resources
- Keep templates readable and modular

## Interview Questions

1. What is CloudFormation?
2. What is Infrastructure as Code?
3. What is a CloudFormation stack?
4. Parameters vs outputs?
5. What is a change set?
6. How does CloudFormation help with repeatability?

## Key Takeaways

CloudFormation allows AWS infrastructure to be defined as code and managed consistently.
EOF

mkdir -p "25-organizations"

cat > '25-organizations/README.md' <<'EOF'
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
EOF

mkdir -p "26-config"

cat > '26-config/README.md' <<'EOF'
# AWS Config

## Overview

AWS Config provides resource configuration recording, configuration history and rule-based compliance evaluation for supported AWS resources.

## Why Companies Use It

- Track resource configuration changes
- Evaluate compliance
- Investigate configuration drift
- Support governance and auditing
- Identify resources that violate defined rules

## Architecture

```text
AWS Resources
     |
     v
AWS Config
  /      \
History  Rules
  |       |
Changes  Compliance
```

## Config Rules

Config rules evaluate resource configurations against desired conditions.

Examples of policy checks can include whether resources meet required security or configuration standards.

## Config vs CloudTrail

| AWS Config | CloudTrail |
|---|---|
| Resource configuration/compliance | API activity |
| What a resource configuration looks like | Who performed an API action |
| Configuration history | Event history |

They complement each other during investigations.

## Production Considerations

- Enable recording for required resources
- Select appropriate compliance rules
- Review non-compliant resources
- Control access to configuration data
- Consider cost and recording scope

## Interview Questions

1. What is AWS Config?
2. Config vs CloudTrail?
3. What is a Config rule?
4. How can Config help detect configuration drift?
5. How would you investigate a non-compliant resource?

## Key Takeaways

AWS Config provides configuration visibility and compliance evaluation for AWS resources.
EOF

echo "AWS service documentation 15-26 populated successfully."

wc -l 15-kms/README.md 16-secrets-manager/README.md 17-sns/README.md 18-sqs/README.md 19-waf/README.md 20-elasticache/README.md 21-aurora/README.md 22-aws-backup/README.md 23-systems-manager/README.md 24-cloudformation/README.md 25-organizations/README.md 26-config/README.md
