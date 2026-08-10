# Amazon EC2

## Overview

Amazon Elastic Compute Cloud (EC2) provides resizable virtual compute capacity in AWS.

EC2 allows organizations to launch virtual servers with selected operating systems, instance types, storage, networking and security controls.

## Why Companies Use EC2

- Host web applications
- Run APIs and backend services
- Run business workloads
- Support development and testing
- Process workloads requiring configurable compute
- Build scalable application architectures

## Core Components

```text
EC2 Instance
├── AMI
├── Instance Type
├── EBS Volumes
├── Security Group
├── Key Pair / Access Method
├── IAM Role
└── Network Interface
```

### AMI

An Amazon Machine Image defines the software configuration used to launch an instance.

### Instance Type

Instance types determine compute, memory, networking and other capabilities.

### EBS

Elastic Block Store provides persistent block storage for EC2.

### Security Group

A stateful virtual firewall controlling inbound and outbound traffic for an instance's network interfaces.

## Basic Architecture

```text
Internet
   |
   v
Load Balancer
   |
   v
EC2 Instances
   |
   +---- EBS
   |
   +---- IAM Role
   |
   +---- CloudWatch
```

## High Availability

A production application should avoid depending on one EC2 instance.

```text
VPC
 |
 +-- AZ-A
 |    |
 |   EC2
 |
 +-- AZ-B
      |
     EC2
```

A load balancer can distribute traffic between instances.

## Security

- Use security groups with minimal required ports
- Avoid exposing SSH/RDP publicly when possible
- Use IAM roles for AWS access
- Patch operating systems
- Encrypt EBS volumes where appropriate
- Use private subnets for internal workloads
- Monitor instances

## Cost Awareness

EC2 costs depend on factors such as instance type, operating system, region, purchase option and additional resources.

Common purchasing models include:

- On-Demand
- Reserved Instances
- Savings Plans
- Spot Instances

## CLI Examples

```bash
aws ec2 describe-instances
aws ec2 describe-security-groups
aws ec2 describe-images
```

## Interview Questions

1. What is EC2?
2. What is an AMI?
3. What is an instance type?
4. What is EBS?
5. What is the difference between a security group and a network ACL?
6. How would you design highly available EC2 workloads?
7. How can EC2 costs be optimized?

## Scenario

A website is running on one EC2 instance and receives unpredictable traffic.

A better production architecture could be:

```text
Users
  |
  v
Application Load Balancer
  |
  +------ EC2 AZ-A
  |
  +------ EC2 AZ-B
           |
        Auto Scaling
```

## Key Takeaways

EC2 provides configurable cloud compute. Production designs should combine EC2 with appropriate networking, IAM, monitoring, load balancing and scaling.
