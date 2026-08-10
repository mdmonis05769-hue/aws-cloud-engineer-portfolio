# Amazon S3

## Overview

Amazon Simple Storage Service (S3) is AWS object storage designed to store and retrieve data at scale.

## Common Uses

- Application assets
- Backups
- Logs
- Data lakes
- Static website content
- Documents and media
- Software artifacts

## Core Concepts

```text
S3
 |
 +-- Bucket
      |
      +-- Objects
      |     +-- Key
      |     +-- Data
      |     +-- Metadata
      |
      +-- Versioning
      +-- Lifecycle
      +-- Encryption
      +-- Access Controls
```

## Bucket

A bucket is a logical container for objects.

## Object

An object contains data, metadata and a key identifying its location within a bucket.

## Storage Classes

S3 offers storage classes optimized for different access patterns, including frequently accessed, infrequently accessed and archival workloads.

Choose a storage class based on access frequency, retrieval requirements and cost.

## Security

Recommended controls include:

- Block public access unless public access is explicitly required
- Use IAM policies
- Use bucket policies carefully
- Enable encryption
- Enable versioning where useful
- Enable logging/monitoring as appropriate
- Apply least privilege

## Architecture

```text
Application
    |
    v
IAM Role
    |
    v
Private S3 Bucket
    |
    +-- Encryption
    +-- Versioning
    +-- Lifecycle Rules
```

## Lifecycle Management

Lifecycle rules can transition objects to lower-cost storage classes or expire objects when they are no longer needed.

## CLI Examples

```bash
aws s3 ls
aws s3 ls s3://bucket-name
aws s3 cp file.txt s3://bucket-name/
aws s3 sync ./data s3://bucket-name/data/
```

## Interview Questions

1. What is S3?
2. What is the difference between S3 and EBS?
3. What is an S3 bucket?
4. What is an S3 object?
5. What is S3 versioning?
6. How do you secure an S3 bucket?
7. What are S3 storage classes?
8. What is an S3 lifecycle policy?

## Scenario

A company stores millions of application logs and rarely accesses logs older than 90 days.

A lifecycle strategy can automatically transition older objects to an appropriate lower-cost storage class.

## Key Takeaways

S3 is scalable object storage. Security, lifecycle management, encryption and cost-aware storage-class selection are important in production.
