# Amazon EC2 Auto Scaling

## Overview

EC2 Auto Scaling automatically adjusts the number of EC2 instances according to configured scaling policies and desired capacity.

## Core Concepts

- Auto Scaling Group (ASG)
- Minimum capacity
- Desired capacity
- Maximum capacity
- Launch template
- Health checks
- Scaling policies

## Architecture

```text
Users
  |
  v
Load Balancer
  |
  v
Auto Scaling Group
  |
  +-- EC2 AZ-A
  +-- EC2 AZ-B
  +-- EC2 AZ-C
```

## Scaling

A service can scale out when demand increases and scale in when demand decreases.

## Benefits

- Availability
- Elasticity
- Fault recovery
- Cost efficiency
- Reduced manual intervention

## Interview Questions

1. What is an Auto Scaling Group?
2. What are minimum, desired and maximum capacity?
3. What is scale out vs scale in?
4. What is a launch template?
5. How does Auto Scaling improve availability?
6. How would you combine Auto Scaling with a load balancer?

## Scenario

Traffic increases sharply during business hours.

A scalable architecture:

```text
ALB
 |
ASG
├── Instance
├── Instance
└── Instance
```

The ASG adjusts capacity according to the configured policy.

## Key Takeaways

Auto Scaling provides automated elasticity and helps maintain application availability.
