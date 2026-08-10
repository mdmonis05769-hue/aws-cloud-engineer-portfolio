# AWS Networking Fundamentals

## Core Building Blocks

```text
VPC
├── CIDR
├── Subnets
├── Route Tables
├── Internet Gateway
├── NAT Gateway
├── Security Groups
└── Network ACLs
```

## Typical Production Pattern

```text
Internet
   |
   v
Internet Gateway
   |
Public Subnet
   |
Load Balancer
   |
Private Application Subnet
   |
Private Database Subnet
```

## Key Concepts

- CIDR
- Routing
- Public/private subnets
- Internet Gateway
- NAT Gateway
- Security Groups
- Network ACLs
- Availability Zones
