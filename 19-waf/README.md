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
