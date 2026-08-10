# AWS CloudFormation

## Overview

AWS CloudFormation is an Infrastructure as Code service used to model and provision AWS resources through templates.

## Why Companies Use It

- Repeatable infrastructure
- Version-controlled architecture
- Consistent environments
- Automated resource provisioning
- Change management
- Stack lifecycle management

## Architecture

```text
CloudFormation Template
          |
          v
       Stack
          |
    +-----+-----+
    |     |     |
   VPC   EC2   S3
```

## Core Concepts

- Template
- Stack
- Resources
- Parameters
- Outputs
- Mappings
- Conditions
- Change sets
- Nested stacks

## Production Considerations

- Store templates in version control
- Use parameters instead of hard-coding environment values
- Review change sets before risky changes
- Separate environments appropriately
- Protect critical resources
- Keep templates readable and modular

## Interview Questions

1. What is CloudFormation?
2. What is Infrastructure as Code?
3. What is a CloudFormation stack?
4. Parameters vs outputs?
5. What is a change set?
6. How does CloudFormation help with repeatability?

## Key Takeaways

CloudFormation allows AWS infrastructure to be defined as code and managed consistently.
