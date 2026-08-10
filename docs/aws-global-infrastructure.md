# AWS Global Infrastructure

## Regions

An AWS Region is a separate geographic area containing multiple Availability Zones.

## Availability Zones

Availability Zones are isolated locations within an AWS Region. Multi-AZ architectures can improve application availability and resilience.

## Edge Locations

Edge locations are part of AWS's global edge network and are used by services such as CloudFront to deliver content closer to users.

## Architecture

```text
AWS Global Infrastructure
│
├── Region
│   ├── Availability Zone
│   ├── Availability Zone
│   └── Availability Zone
│
└── Edge Locations
```

## Cloud Engineer Considerations

When choosing a Region, consider:

- User proximity and latency
- Service availability
- Data residency requirements
- Compliance
- Pricing
- Disaster recovery strategy
- Cross-region requirements
