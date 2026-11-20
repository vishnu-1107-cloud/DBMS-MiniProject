# Requirements matrix
| Requirement | Evidence | Status |
|---|---|---|
| Beyond CRUD campus issue workflow | design and SQL model | designed |
| SQL + NoSQL | PostgreSQL + MongoDB activity model | scaffold |
| ER/schema/constraints | architecture.md, schema.sql | included |
| Advanced features (4+) | function, trigger, view, transactions, indexes, aggregation | included; execution evidence pending |
| Next.js interface and API | source scaffold | pending implementation |
| Authentication, minimum 2 roles | three roles designed | enforcement needed |
| Screenshots, test results, Git contribution history | capture and commit after local run | outstanding |

## Test plan
Verify valid issue creation; reject short text and invalid references; enforce priority check; filter and sort queue; reject illegal lifecycle transitions; resolve atomically; aggregate activity; test student/staff/admin permissions after auth is implemented. These are planned checks, not passed results.
