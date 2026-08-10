# Amazon SNS

## Overview

Amazon Simple Notification Service (SNS) is a managed messaging service used for pub/sub messaging and application notifications.

## Core Concepts

- Topic
- Publisher
- Subscriber
- Message
- Subscription
- Filter policy

## Architecture

```text
Publisher
    |
    v
SNS Topic
  / | \
 v  v  v
SQS Email Lambda
```

## Common Uses

- Application notifications
- Fan-out messaging
- Event distribution
- Alerts
- Integration with SQS and Lambda

## SNS + SQS Fan-Out

A common production pattern is to publish an event once and deliver it to multiple queues.

```text
Application
    |
    v
SNS Topic
   / \
  v   v
SQS  SQS
 |    |
Worker Worker
```

## Security

- Control topic access with IAM and resource policies
- Encrypt sensitive messaging where required
- Restrict publishers/subscribers
- Monitor delivery and failures

## Interview Questions

1. What is SNS?
2. What is a topic?
3. SNS vs SQS?
4. What is fan-out?
5. How would you distribute one event to multiple consumers?
6. How would you secure an SNS topic?

## Key Takeaways

SNS is primarily used to distribute messages/events to multiple subscribers and for notification workflows.
