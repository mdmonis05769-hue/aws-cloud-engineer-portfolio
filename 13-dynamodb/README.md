# Amazon DynamoDB

## Overview

Amazon DynamoDB is a fully managed NoSQL database service designed for high performance and scalability.

## Core Concepts

- Tables
- Items
- Attributes
- Primary keys
- Partition keys
- Sort keys
- Secondary indexes
- Capacity modes

## Architecture

```text
Application
    |
    v
DynamoDB
 |
 +-- Partition Key
 +-- Sort Key
 +-- Indexes
```

## When to Use DynamoDB

DynamoDB is useful for applications requiring scalable key-value or document data access with predictable low-latency patterns.

Examples:

- User profiles
- Session data
- Application metadata
- High-scale APIs

## Security

- IAM authorization
- Encryption at rest
- Least-privilege permissions
- Network/security architecture appropriate to the application

## Interview Questions

1. What is DynamoDB?
2. DynamoDB vs RDS?
3. What is a partition key?
4. What is a sort key?
5. What is a GSI?
6. How does DynamoDB scale?
7. When would you choose DynamoDB instead of RDS?

## Scenario

A high-scale application needs fast access to user records using a unique user ID.

A DynamoDB table can use the user ID as the partition key.

## Key Takeaways

DynamoDB is a managed NoSQL database optimized for scalable key-value and document workloads.
