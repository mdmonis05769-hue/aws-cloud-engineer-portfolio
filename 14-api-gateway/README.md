# Amazon API Gateway

## Overview

Amazon API Gateway is a managed service for creating, publishing, securing, monitoring and managing APIs.

## Common Architecture

```text
Client
  |
  v
API Gateway
  |
  v
Lambda / Application Backend
  |
  v
Database
```

API Gateway can also integrate with other AWS and HTTP backends.

## Important Concepts

- APIs
- Resources/routes
- Methods
- Stages
- Authorization
- Throttling
- Monitoring
- Integration

## Security

Depending on the architecture, API access can use mechanisms such as IAM authorization, authorizers and other authentication/authorization approaches.

Use throttling and validation where appropriate.

## Interview Questions

1. What is API Gateway?
2. Why use API Gateway with Lambda?
3. What is an API stage?
4. What is throttling?
5. How would you secure an API?
6. API Gateway vs Application Load Balancer?

## Scenario

A company wants to expose a serverless backend through HTTPS.

```text
Client
  |
  v
API Gateway
  |
  v
Lambda
  |
  v
DynamoDB
```

## Key Takeaways

API Gateway provides a managed API front door with routing, authorization, throttling and monitoring capabilities.
