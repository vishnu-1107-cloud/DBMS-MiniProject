# Architecture and data choice
Browser -> Next.js UI -> Route Handlers -> PostgreSQL + MongoDB. PostgreSQL is canonical for users, facilities, assignments, issues and resolutions because relationships and state transitions need constraints and transactions. MongoDB stores evolving issue activity events with flexible metadata. The current design cannot atomically commit across both stores; production should write an outbox record in PostgreSQL and asynchronously deliver idempotently to MongoDB.

## ER model
```mermaid
erDiagram
 APP_USER ||--o{ ISSUE : reports
 BUILDING ||--o{ ROOM : contains
 ROOM ||--o{ ISSUE : locates
 ISSUE_CATEGORY ||--o{ ISSUE : classifies
 ISSUE ||--o{ ISSUE_ASSIGNMENT : receives
 APP_USER ||--o{ ISSUE_ASSIGNMENT : staff
 ISSUE ||--o| RESOLUTION_RECORD : resolves
 ISSUE ||--o{ MONGO_ACTIVITY : timeline
```

## Advanced database features
Transactions, queue view, guarded stored function, timestamp/version trigger, partial/composite indexes, JOIN/GROUP BY/HAVING/aggregate/subquery examples, Mongo event aggregation and indexes. Role enum: STUDENT, STAFF, ADMIN. API must derive actor identity from authenticated sessions; demo identifiers are not secure authentication.
