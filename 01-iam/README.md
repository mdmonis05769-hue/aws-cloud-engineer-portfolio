# AWS IAM (Identity and Access Management)

## Overview

AWS Identity and Access Management (IAM) is the AWS service used to securely control access to AWS resources. IAM defines **who can access AWS resources, what actions they can perform, and which resources those actions apply to**.

IAM is a foundational AWS security service and should be designed using the principle of least privilege.

## Why Companies Use IAM

- Control access to AWS resources
- Separate human and machine identities
- Implement least-privilege permissions
- Centralize authorization
- Support secure application access
- Audit and review permissions

## Core Concepts

| Concept | Purpose |
|---|---|
| User | Identity generally representing a person or application requiring long-term credentials |
| Group | Collection of IAM users that share permissions |
| Role | Identity with temporary credentials that can be assumed by trusted principals |
| Policy | JSON document defining permissions |
| Permission | Authorization to perform an AWS action on a resource |
| MFA | Additional authentication factor for stronger account security |

## IAM Authorization Model

```text
Principal
   |
   v
IAM Policy
   |
   v
Allowed / Denied Action
   |
   v
AWS Resource
```

Example:

```text
EC2 Instance
     |
     v
IAM Role
     |
     v
S3 Read Policy
     |
     v
S3 Bucket
```

## IAM Roles

IAM roles are preferred for workloads running on AWS because applications can receive temporary credentials instead of storing long-term access keys.

Common examples:

- EC2 instance accessing S3
- Lambda function accessing DynamoDB
- ECS task accessing AWS services
- Cross-account access
- AWS service integrations

## Least Privilege

Grant only the permissions required to perform a specific task.

Instead of:

```text
Allow: *
Resource: *
```

prefer narrowly scoped permissions such as:

```text
Allow: s3:GetObject
Resource: arn:aws:s3:::example-bucket/application/*
```

## Security Best Practices

- Protect the AWS root account
- Enable MFA
- Avoid using the root account for everyday administration
- Prefer IAM roles and temporary credentials
- Avoid hard-coded access keys
- Grant least privilege
- Review unused users, roles and permissions
- Use policy conditions where appropriate
- Rotate or replace long-lived credentials when they must exist
- Use centralized identity solutions for larger organizations

## Common AWS CLI Commands

```bash
aws sts get-caller-identity
aws iam list-users
aws iam list-roles
aws iam list-groups
aws iam list-policies --scope Local
```

Never commit AWS access keys, secret keys, session tokens, or other credentials to GitHub.

## Real-World Use Case

A production EC2 application needs to read objects from a private S3 bucket.

Recommended design:

```text
EC2
 |
 | assumes
 v
IAM Role
 |
 | allows
 v
s3:GetObject
 |
 v
Private S3 Bucket
```

The application does not need a hard-coded AWS access key.

## Interview Questions

### Q1. What is IAM?

IAM is AWS's identity and authorization service used to control access to AWS resources.

### Q2. What is the difference between an IAM user and an IAM role?

An IAM user represents a long-term identity, while a role is designed to be assumed and normally provides temporary credentials.

### Q3. What is an IAM policy?

An IAM policy is a JSON document that defines permissions for actions on AWS resources.

### Q4. Why use an IAM role for EC2?

It allows the instance to obtain temporary credentials without storing long-term access keys on the server.

### Q5. What is least privilege?

Giving an identity only the permissions required to perform its intended tasks.

### Q6. What is the difference between authentication and authorization?

Authentication verifies who an identity is. Authorization determines what that identity is allowed to do.

## Scenario Questions

1. An EC2 application needs read-only access to one S3 bucket. How would you design the access?
2. A developer accidentally has administrator permissions. How would you reduce the risk?
3. An application has AWS access keys stored in source code. What would you do?
4. Multiple EC2 instances need the same AWS permissions. Would you create separate users?

## Portfolio Evidence

Add screenshots or sanitized command output here when available:

```text
screenshots/
├── iam-users.png
├── iam-roles.png
└── iam-policy.png
```

## Key Takeaways

- IAM controls AWS access.
- Roles are preferred for AWS workloads.
- Policies define permissions.
- Least privilege is a core security principle.
- Never expose credentials in source control.
