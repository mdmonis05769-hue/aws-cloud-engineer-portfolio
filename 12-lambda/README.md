# AWS Lambda

## Overview

AWS Lambda is a serverless compute service that runs code in response to events without requiring the customer to manage servers.

## Common Use Cases

- APIs
- Event processing
- Automation
- Scheduled tasks
- File processing
- Backend functions

## Architecture

```text
Event Source
    |
    v
AWS Lambda
    |
    +---- S3
    +---- DynamoDB
    +---- SQS
    +---- API Gateway
```

## Important Concepts

- Function
- Runtime
- Handler
- Event
- Execution role
- Environment variables
- Timeout
- Memory
- Concurrency

## Security

Lambda functions should use execution roles with least-privilege permissions.

Do not embed long-term AWS credentials in function code.

## Interview Questions

1. What is AWS Lambda?
2. What is serverless computing?
3. What is a Lambda execution role?
4. What is a Lambda trigger?
5. What factors affect Lambda performance and cost?
6. How would you secure a Lambda function?

## Scenario

A file uploaded to S3 needs automatic processing.

```text
S3 Upload
   |
   v
Lambda Trigger
   |
   v
Processing
   |
   v
Output Storage
```

## Key Takeaways

Lambda provides event-driven serverless compute and removes the need to manage traditional servers for supported workloads.
