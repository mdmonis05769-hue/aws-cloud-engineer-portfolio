# AWS Config

## Overview

AWS Config provides resource configuration recording, configuration history and rule-based compliance evaluation for supported AWS resources.

## Why Companies Use It

- Track resource configuration changes
- Evaluate compliance
- Investigate configuration drift
- Support governance and auditing
- Identify resources that violate defined rules

## Architecture

```text
AWS Resources
     |
     v
AWS Config
  /      \
History  Rules
  |       |
Changes  Compliance
```

## Config Rules

Config rules evaluate resource configurations against desired conditions.

Examples of policy checks can include whether resources meet required security or configuration standards.

## Config vs CloudTrail

| AWS Config | CloudTrail |
|---|---|
| Resource configuration/compliance | API activity |
| What a resource configuration looks like | Who performed an API action |
| Configuration history | Event history |

They complement each other during investigations.

## Production Considerations

- Enable recording for required resources
- Select appropriate compliance rules
- Review non-compliant resources
- Control access to configuration data
- Consider cost and recording scope

## Interview Questions

1. What is AWS Config?
2. Config vs CloudTrail?
3. What is a Config rule?
4. How can Config help detect configuration drift?
5. How would you investigate a non-compliant resource?

## Key Takeaways

AWS Config provides configuration visibility and compliance evaluation for AWS resources.
