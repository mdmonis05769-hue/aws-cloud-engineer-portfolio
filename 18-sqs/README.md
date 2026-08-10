# Amazon SQS

## Overview

Amazon Simple Queue Service (SQS) is a managed message queuing service that decouples application components.

## Why Companies Use SQS

- Decouple services
- Buffer traffic
- Process work asynchronously
- Improve resilience
- Handle temporary downstream failures

## Queue Types

### Standard Queue

Designed for very high throughput with at-least-once delivery and best-effort ordering.

### FIFO Queue

Designed when strict ordering and deduplication requirements are important, subject to service limits.

## Architecture

```text
Producer
   |
   v
SQS Queue
   |
   v
Consumer / Worker
```

## Visibility Timeout

After a consumer receives a message, the message becomes temporarily invisible to other consumers while processing occurs. The consumer should delete the message after successful processing.

## Dead-Letter Queue

Failed messages can be moved to a dead-letter queue after a configured number of receive attempts.

```text
Main Queue
   |
   | repeated failures
   v
Dead-Letter Queue
```

## Interview Questions

1. What is SQS?
2. Standard vs FIFO queue?
3. What is visibility timeout?
4. What is a dead-letter queue?
5. Why use SQS between two services?
6. What happens if a consumer fails while processing a message?

## Key Takeaways

SQS provides durable asynchronous messaging and helps decouple distributed application components.
