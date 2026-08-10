# Elastic Load Balancing

## Overview

Elastic Load Balancing (ELB) distributes incoming traffic across healthy targets.

AWS provides different load balancer types for different protocols and workloads.

## Common Types

- Application Load Balancer (ALB)
- Network Load Balancer (NLB)
- Gateway Load Balancer (GWLB)

## Architecture

```text
Users
  |
  v
Load Balancer
  |
  +---- Target AZ-A
  |
  +---- Target AZ-B
```

## Application Load Balancer

ALB operates at the application layer and supports features such as host-based and path-based routing.

Example:

```text
example.com/api/*
        |
        v
API Target Group

example.com/web/*
        |
        v
Web Target Group
```

## Health Checks

Load balancers can check target health and route traffic to healthy targets.

## Security

- Place internet-facing ALBs in appropriate public subnets
- Restrict target security groups to traffic from the load balancer where possible
- Use HTTPS/TLS for encrypted traffic
- Monitor access and target health

## Interview Questions

1. What is Elastic Load Balancing?
2. ALB vs NLB?
3. What is a target group?
4. What is a health check?
5. How does a load balancer improve availability?
6. How would you secure an ALB?

## Scenario

Two application servers run in different AZs. The load balancer distributes user traffic and removes unhealthy targets from service.

## Key Takeaways

Load balancing improves availability and scalability by distributing traffic across healthy targets.
