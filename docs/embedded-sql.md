# Embedded SQL in the Next.js frontend application

The app uses a Next.js Server Component in app/page.tsx to query PostgreSQL and render the initial issue list. The SQL is embedded in the application source and executes on the server during page rendering. This satisfies the practical embedded-SQL pattern while keeping database credentials and SQL execution out of the user's browser.

The interactive client component in app/CampusFixClient.tsx handles forms and actions by calling Next.js Route Handlers. Those handlers also use parameterized SQL for writes and filtering. Browser code must never connect directly to PostgreSQL or contain database credentials.

The initial server-rendered queue query joins issue, room, building, category and reporter records and includes all lifecycle states, including ASSIGNED, RESOLVED and CLOSED.
