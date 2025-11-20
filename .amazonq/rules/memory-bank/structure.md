# Project Structure - The Copy

## Repository Organization
**Monorepo Structure** using pnpm workspaces with separate frontend and backend packages.

```
k:\the/
├── frontend/          # Next.js 15 application (nextn package)
├── backend/           # Express.js API server
├── docs/              # Documentation and guides
├── scripts/           # Build and deployment scripts
├── monitoring/        # Grafana/Prometheus configs
├── redis/             # Redis configuration files
└── dev-tools/         # Development and analysis tools
```

## Frontend Structure (`frontend/`)
**Next.js 15 Application with App Router**

```
frontend/
├── src/
│   ├── app/                    # Next.js App Router pages
│   │   ├── (main)/            # Main application routes
│   │   │   ├── editor/        # Screenplay editor
│   │   │   └── directors-studio/ # Directors studio interface
│   │   └── __smoke__/         # Smoke tests
│   ├── components/            # Reusable UI components
│   │   ├── landing/           # Landing page components
│   │   └── ui/                # shadcn/ui components
│   ├── hooks/                 # Custom React hooks
│   ├── lib/                   # Utility libraries
│   ├── types/                 # TypeScript type definitions
│   ├── ai/                    # AI integration (Genkit)
│   ├── orchestration/         # Business logic orchestration
│   └── workers/               # Web Workers
├── scripts/                   # Build and optimization scripts
├── tests/                     # Test files
└── docs/                      # Frontend-specific documentation
```

## Backend Structure (`backend/`)
**Express.js API with TypeScript**

```
backend/
├── src/
│   ├── controllers/           # API route handlers
│   ├── services/              # Business logic services
│   ├── db/                    # Database schemas and migrations
│   ├── middleware/            # Express middleware
│   ├── queues/                # BullMQ job processors
│   ├── utils/                 # Utility functions
│   ├── types/                 # TypeScript interfaces
│   ├── config/                # Configuration files
│   └── __tests__/             # Backend tests
├── drizzle/                   # Database migrations
└── docs/                      # Backend documentation
```

## Core Components & Relationships

### Frontend Architecture
- **App Router**: Next.js 15 with file-based routing
- **State Management**: React Hooks + Zustand for complex state
- **UI Framework**: shadcn/ui + Radix UI components
- **Styling**: Tailwind CSS with RTL support
- **AI Integration**: Google Genkit for AI workflows
- **Performance**: Bundle optimization, lazy loading, caching

### Backend Architecture
- **API Layer**: Express.js with TypeScript
- **Database**: PostgreSQL with Drizzle ORM
- **Authentication**: JWT-based auth system
- **Queue System**: BullMQ for background processing
- **Caching**: Redis for performance optimization
- **Monitoring**: Sentry error tracking + Prometheus metrics

### Data Flow
1. **Frontend** → API requests → **Backend Controllers**
2. **Controllers** → **Services** → **Database/External APIs**
3. **Long tasks** → **BullMQ Queues** → **Background Processing**
4. **Real-time updates** → **WebSocket/SSE** → **Frontend**

## Key Architectural Patterns

### Frontend Patterns
- **Component Composition**: Reusable UI components with shadcn/ui
- **Custom Hooks**: Encapsulated logic (usePerformanceDetection, etc.)
- **Server Components**: Next.js App Router with RSC
- **Client Components**: Interactive UI with "use client"
- **Route Groups**: Organized routing with (main) group

### Backend Patterns
- **Controller-Service Pattern**: Separation of concerns
- **Repository Pattern**: Database abstraction with Drizzle
- **Middleware Chain**: Authentication, validation, rate limiting
- **Queue Pattern**: Background job processing
- **Event-Driven**: Real-time updates via WebSocket

### Security Architecture
- **Authentication**: JWT tokens with secure storage
- **Authorization**: Role-based access control
- **Input Validation**: Zod schemas for type safety
- **Rate Limiting**: Multi-level protection
- **CORS**: Strict cross-origin policies
- **Security Headers**: Helmet.js configuration

## Development Tools & Scripts
- **Package Management**: pnpm with workspace support
- **Build System**: Next.js build + TypeScript compilation
- **Testing**: Vitest (unit) + Playwright (e2e)
- **Linting**: ESLint + Prettier with strict rules
- **Performance**: Bundle analysis, Lighthouse CI
- **Database**: Drizzle Kit for migrations and studio
- **Monitoring**: Performance budgets and metrics