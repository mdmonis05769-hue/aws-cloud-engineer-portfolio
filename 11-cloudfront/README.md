# Amazon CloudFront

## Overview

Amazon CloudFront is AWS's content delivery network (CDN).

It delivers content through a global network of edge locations, reducing latency for users.

## Architecture

```text
User
 |
 v
Nearest CloudFront Edge
 |
 v
Origin
├── S3
├── ALB
└── Other supported origin
```

## Common Uses

- Static website delivery
- Images and media
- APIs
- Dynamic web applications
- Reducing origin load
- Improving global performance

## Caching

CloudFront can cache content at edge locations according to configured caching behavior.

## Security

CloudFront can integrate with security and encryption controls such as HTTPS/TLS and AWS WAF.

For private S3 content, an origin access mechanism should be used instead of making the bucket publicly accessible.

## Interview Questions

1. What is CloudFront?
2. What is a CDN?
3. What is an edge location?
4. What is an origin?
5. How does CloudFront reduce latency?
6. CloudFront vs S3?
7. How would you secure private content behind CloudFront?

## Key Takeaways

CloudFront improves global content delivery performance and can reduce load on application origins.
