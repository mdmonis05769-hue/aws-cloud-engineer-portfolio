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
