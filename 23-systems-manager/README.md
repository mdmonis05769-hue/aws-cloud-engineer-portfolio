# AWS Systems Manager

## Overview

AWS Systems Manager provides tools for managing, operating and monitoring AWS and hybrid infrastructure.

## Important Capabilities

- Session Manager
- Run Command
- Patch Manager
- Automation
- Parameter Store
- Fleet management capabilities

## Architecture

```text
Cloud Engineer
      |
      v
Systems Manager
   /    |     \
Session Run    Patch
Manager Command Manager
   |      |      |
 EC2    EC2     EC2
```

## Session Manager

Session Manager can provide secure shell-like access to managed instances without requiring inbound SSH access, when the required configuration and permissions are in place.

## Run Command

Run Command can execute commands across managed instances without manually connecting to each server.

## Security

- Use least-privilege IAM permissions
- Control which instances can be managed
- Avoid exposing management ports unnecessarily
- Audit management activity
- Use secure parameter handling

## Interview Questions

1. What is Systems Manager?
2. What is Session Manager?
3. Why use Session Manager instead of public SSH?
4. What is Run Command?
5. How can Systems Manager help patch EC2 instances?
6. How would you secure Systems Manager access?

## Key Takeaways

Systems Manager provides centralized operational control for AWS and hybrid infrastructure.
