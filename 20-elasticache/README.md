# Amazon ElastiCache

## Overview

Amazon ElastiCache is a managed in-memory caching service supporting Redis and Memcached engines.

## Why Companies Use It

- Reduce database load
- Improve application response times
- Cache frequently accessed data
- Support session and temporary data use cases

## Architecture

```text
Application
   |
   +----> ElastiCache
   |
   +----> RDS / Database
```

The application checks the cache first and accesses the database when the required data is not cached.

## Common Use Cases

- Frequently read data
- Session storage
- Application caching
- Leaderboards and real-time workloads
- Reducing database pressure

## Production Considerations

- Place the cache in appropriate private networking
- Restrict access using security groups
- Define suitable TTLs
- Design cache invalidation carefully
- Monitor memory and connection metrics
- Understand persistence and availability requirements for the chosen engine/configuration

## Interview Questions

1. What is ElastiCache?
2. Why use a cache?
3. Redis vs Memcached?
4. What is cache invalidation?
5. How does caching reduce database load?
6. How would you secure ElastiCache?

## Key Takeaways

ElastiCache provides managed in-memory caching for lower latency and reduced backend load.
