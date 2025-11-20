# Technology Stack - The Copy

## Programming Languages & Versions
- **TypeScript**: 5.7.2 (Frontend), 5.0+ (Backend)
- **JavaScript**: ES2022+ with modern features
- **Node.js**: 20.11.0+ (LTS required)
- **Package Manager**: pnpm 10.20.0

## Frontend Technology Stack

### Core Framework
- **Next.js**: 15.0.0 with App Router
- **React**: 18.3.1 with concurrent features
- **TypeScript**: Strict mode with comprehensive typing

### UI & Styling
- **Tailwind CSS**: 4.1.16 with custom configuration
- **shadcn/ui**: Component library with Radix UI primitives
- **Framer Motion**: 11.0.0 for animations
- **GSAP**: 3.13.0 for advanced animations
- **Three.js**: 0.180.0 for 3D graphics

### State & Data Management
- **React Query**: @tanstack/react-query 5.90.10
- **Zustand**: 5.0.8 for global state
- **React Hook Form**: 7.54.2 with Zod validation
- **Zod**: 3.23.8 for schema validation

### AI & Processing
- **Google Genkit**: 1.23.0 for AI workflows
- **Google Generative AI**: 0.24.1 for Gemini API
- **PDF Processing**: pdfjs-dist 4.4.168
- **Document Processing**: mammoth 1.7.0

## Backend Technology Stack

### Core Framework
- **Express.js**: 5.1.0 with TypeScript
- **Node.js**: 20+ with ES modules support

### Database & ORM
- **PostgreSQL**: Neon Serverless database
- **Drizzle ORM**: 0.44.7 with TypeScript integration
- **Drizzle Kit**: 0.31.7 for migrations

### Caching & Queues
- **Redis**: 5.10.0 for caching and sessions
- **BullMQ**: 5.63.2 for background job processing
- **Bull Board**: 6.14.2 for queue monitoring

### Authentication & Security
- **JWT**: jsonwebtoken 9.0.2
- **bcrypt**: 6.0.0 for password hashing
- **Helmet**: 8.1.0 for security headers
- **CORS**: 2.8.5 with strict policies
- **Rate Limiting**: express-rate-limit 8.2.1

### Monitoring & Logging
- **Sentry**: 10.26.0 for error tracking
- **Winston**: 3.11.0 for logging
- **Prometheus**: prom-client 15.1.3 for metrics

## Development Tools

### Build & Bundling
- **Next.js Build**: Production optimization
- **Bundle Analyzer**: @next/bundle-analyzer 16.0.3
- **TypeScript Compiler**: tsc with strict mode
- **PostCSS**: 8+ with Tailwind processing

### Testing Framework
- **Vitest**: 4.0.6 (Backend), 2.1.8 (Frontend)
- **Playwright**: 1.49.1 for E2E testing
- **Testing Library**: React testing utilities
- **Coverage**: @vitest/coverage-v8

### Code Quality
- **ESLint**: 8.57.0 with TypeScript rules
- **Prettier**: 3.6.2 for code formatting
- **Husky**: 9.1.7 for git hooks
- **lint-staged**: 15.2.10 for pre-commit checks

### Performance & Optimization
- **Lighthouse CI**: @lhci/cli 0.15.1
- **Sharp**: 0.34.5 for image optimization
- **Compression**: 1.7.4 for gzip
- **Bundle Analysis**: Custom performance budgets

## Development Commands

### Root Level (Monorepo)
```bash
# Start development servers
pnpm start:dev

# Install dependencies
pnpm install

# Run tests across packages
pnpm test

# Build all packages
pnpm build

# Lint all packages
pnpm lint
```

### Frontend Commands
```bash
# Development server
pnpm dev                    # Port 5000

# Build & deployment
pnpm build                  # Production build
pnpm start                  # Production server
pnpm analyze                # Bundle analysis

# Testing
pnpm test                   # Unit tests
pnpm e2e                    # E2E tests
pnpm test:coverage          # Coverage report

# Performance
pnpm lighthouse             # Lighthouse audit
pnpm budget:check           # Performance budget
```

### Backend Commands
```bash
# Development
pnpm dev                    # Watch mode with tsc-watch

# Database
pnpm db:push                # Apply schema changes
pnpm db:studio              # Drizzle Studio GUI
pnpm db:generate            # Generate migrations

# Testing & Quality
pnpm test                   # Vitest tests
pnpm lint                   # ESLint check
pnpm typecheck              # TypeScript check
```

## Environment Configuration

### Required Environment Variables
```bash
# Database
DATABASE_URL=postgresql://...
NEON_DATABASE_URL=postgresql://...

# AI Services
GOOGLE_GENERATIVE_AI_API_KEY=...
GEMINI_API_KEY=...

# Redis
REDIS_URL=redis://localhost:6379

# Authentication
JWT_SECRET=...
SESSION_SECRET=...

# Monitoring
SENTRY_DSN=...
SENTRY_ORG=...
SENTRY_PROJECT=...
```

### Development Setup
1. **Node.js 20+** installation required
2. **pnpm** as package manager
3. **PostgreSQL** database (Neon recommended)
4. **Redis** server for caching
5. **Environment files** configuration

## Deployment Architecture
- **Frontend**: Vercel deployment with Edge Runtime
- **Backend**: Custom server deployment
- **Database**: Neon PostgreSQL serverless
- **Cache**: Redis Cloud or self-hosted
- **Monitoring**: Sentry + Prometheus + Grafana
- **CDN**: Vercel Edge Network