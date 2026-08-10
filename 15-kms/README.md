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
