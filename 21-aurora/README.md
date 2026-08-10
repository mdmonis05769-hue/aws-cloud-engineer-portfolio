# Amazon Aurora

## Overview

Amazon Aurora is a managed relational database engine compatible with MySQL and PostgreSQL.

It is designed for high performance and availability while integrating with the Amazon RDS platform.

## Why Companies Use Aurora

- Managed relational database
- High availability options
- Automated backups
- Read scaling options
- Integration with AWS security and monitoring

## Architecture

```text
Application
    |
    v
Private Database Subnets
    |
    v
Aurora Cluster
├── Writer
└── Reader(s)
```

## Aurora vs Standard RDS

Aurora is an AWS-built relational database engine with its own distributed storage architecture and availability/scaling features. Standard RDS refers to managed deployments of supported database engines such as MySQL, PostgreSQL, MariaDB, Oracle and SQL Server.

## Security

- Keep databases private where possible
- Restrict security-group access
- Encrypt data
- Protect credentials
- Use IAM/database authentication features where appropriate
- Monitor activity

## Interview Questions

1. What is Amazon Aurora?
2. Aurora vs RDS?
3. What is an Aurora cluster?
4. Writer vs reader?
5. How would you design an HA relational database on AWS?
6. How would you secure Aurora?

## Key Takeaways

Aurora is a managed AWS relational database engine designed for demanding production workloads.
