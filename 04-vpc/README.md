# Amazon VPC

## Overview

Amazon Virtual Private Cloud (VPC) provides logically isolated networking for AWS resources.

A VPC is the foundation for designing secure AWS application networks.

## Core Components

```text
VPC
├── CIDR
├── Subnets
│   ├── Public
│   └── Private
├── Route Tables
├── Internet Gateway
├── NAT Gateway
├── Security Groups
└── Network ACLs
```

## Public vs Private Subnet

A public subnet generally has a route to an Internet Gateway.

A private subnet does not directly route to an Internet Gateway. Outbound internet access can be provided through a NAT gateway when required.

## Typical Architecture

```text
Internet
   |
Internet Gateway
   |
Public Subnet
   |
Load Balancer
   |
Private Subnets
   |
EC2 / Application
   |
Private Database
```

## Availability Zones

Production workloads can use multiple Availability Zones:

```text
VPC
├── AZ-A
│   ├── Public Subnet
│   └── Private Subnet
└── AZ-B
    ├── Public Subnet
    └── Private Subnet
```

## Security Groups

Stateful virtual firewalls attached to resources/network interfaces.

## Network ACLs

Stateless subnet-level traffic controls.

## Interview Questions

1. What is a VPC?
2. What is a subnet?
3. Difference between public and private subnet?
4. What is a route table?
5. What is an Internet Gateway?
6. What is a NAT Gateway?
7. Security Group vs NACL?
8. How would you design a secure three-tier VPC?

## Scenario

For a web application:

```text
Public
  |
  v
ALB
  |
  v
Private Application Subnets
  |
  v
Private Database Subnets
```

This reduces direct exposure of internal workloads.

## Key Takeaways

VPC provides the network foundation for AWS architectures. Understand CIDR, subnets, routing, gateways and security controls thoroughly.
