# CampusFix

CampusFix is a campus facility issue reporting and resolution system built with Next.js, PostgreSQL, and MongoDB.

## Windows quick start (PowerShell)

Requirements: Node.js 20+ and Docker Desktop running.

1. Open PowerShell in this project folder.
2. Start the databases:

   ```powershell
   docker compose up -d
   ```

   PostgreSQL is exposed at `localhost:15432`; MongoDB is at `localhost:27017`.
3. Install packages:

   ```powershell
   npm install
   ```
4. Set the local database connection variables in this PowerShell window (needed by the database scripts):

   ```powershell
   $env:DATABASE_URL = 'postgresql://campusfix:change-this@localhost:15432/campusfix'
   $env:MONGODB_URI = 'mongodb://localhost:27017'
   $env:MONGODB_DB = 'campusfix'
   $env:SESSION_SECRET = 'replace-this-with-a-random-secret-at-least-32-characters'
   ```
5. Create the schema and demo data:

   ```powershell
   npm run db:init
   npm run db:seed
   ```
6. Start the website:

   ```powershell
   npm run dev
   ```

7. Open `http://localhost:3000`. If port 3000 is busy, Next.js will print another local URL such as `http://localhost:3001`.

The environment variables above last only for the current PowerShell window. Set them again in any new terminal before running DB scripts or the app. Do not commit `.env`/`.env.local` files or real credentials.

## Demo accounts

All seeded demo accounts use password `CampusFixDemo!2026`:

- `asha@example.edu` — STUDENT
- `ravi@example.edu` — STAFF
- `admin@example.edu` — ADMIN

## Project functionality

- Session-cookie authentication and role checks
- Issue reporting, filtering, status updates, and dashboard metrics
- PostgreSQL relational schema, constraints, indexes, queue view, trigger, and resolution function
- MongoDB issue activity event storage and aggregation
- Parameterized SQL queries in the Next.js server routes

## Stop the databases

```powershell
docker compose down
```

Use `docker compose down -v` only if you intentionally want to delete the local database volumes and all stored demo data.

## Coursework limitations

This is a local coursework demo, not a production-hardened service. The UI exposes issue reporting and queue workflows; assignment is available through the admin API rather than a dedicated admin form. Cross-database SQL/Mongo writes are not atomic. Capture screenshots and record test outcomes from your actual local run; no unperformed tests are claimed here.
