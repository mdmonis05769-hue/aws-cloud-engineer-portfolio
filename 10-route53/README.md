# Amazon Route 53

## Overview

Amazon Route 53 is AWS's highly available and scalable DNS and domain service.

## Core Functions

- DNS resolution
- Domain registration
- Health checks
- Traffic routing

## Common Routing Policies

- Simple
- Weighted
- Latency-based
- Failover
- Geolocation
- Geoproximity
- Multivalue answer

## Architecture

```text
User
 |
 v
DNS Query
 |
 v
Route 53
 |
 +---- Load Balancer
 +---- CloudFront
 +---- Other Endpoint
```

## Example

```text
www.example.com
       |
       v
Route 53
       |
       v
Application Load Balancer
```

## Interview Questions

1. What is Route 53?
2. What is DNS?
3. What is a hosted zone?
4. What are common Route 53 routing policies?
5. How can Route 53 support failover?
6. Route 53 vs CloudFront?

## Scenario

A company needs users to reach an application using a domain name instead of an IP address.

Route 53 can provide DNS resolution for the application endpoint.

## Key Takeaways

Route 53 provides DNS and traffic-routing capabilities that are important for production application architectures.
