# Product Overview - The Copy

## Project Purpose
**The Copy** (النسخة) is a comprehensive Arabic creative writing and dramatic analysis platform that combines AI-powered screenplay analysis with professional production management tools. The platform serves Arabic content creators, directors, and screenwriters by providing advanced dramatic analysis and production planning capabilities.

## Core Value Proposition
- **AI-Powered Seven Stations Analysis**: Advanced dramatic analysis using Google Gemini API for Arabic screenplays
- **Directors Studio**: Professional project management tools for scenes, shots, and character tracking
- **Arabic-First Design**: Built specifically for Arabic language content with RTL support
- **Production-Ready Tools**: Complete workflow from script analysis to production planning

## Key Features

### 1. Seven Stations Analysis (تحليل المحطات السبع)
- Comprehensive dramatic structure analysis
- AI-powered insights and recommendations using Google Gemini
- Detailed reports with exportable formats
- Character consistency tracking
- Scene-by-scene breakdown

### 2. Directors Studio (استوديو المخرجين)
- Multi-project management dashboard
- Scene and shot organization
- Character tracking and consistency analysis
- Visual planning tools
- Production scheduling capabilities

### 3. Intelligent Content Processing
- Automatic scene and character extraction from scripts
- Shot and angle suggestions
- Dramatic consistency analysis
- Creative recommendations
- PDF/DOCX import and processing

### 4. Performance & Security
- Redis caching for optimal performance
- BullMQ queue system for long-running tasks
- Real-time updates via WebSocket + SSE
- JWT authentication and secure data handling
- Rate limiting and security hardening

## Target Users

### Primary Users
- **Arabic Screenwriters**: Script analysis and improvement tools
- **Film Directors**: Production planning and scene management
- **Content Creators**: Dramatic structure analysis and optimization
- **Production Teams**: Collaborative project management

### Use Cases
- **Script Development**: Analyze and improve screenplay structure
- **Pre-Production Planning**: Organize scenes, shots, and production elements
- **Educational**: Learn dramatic structure and storytelling techniques
- **Professional Production**: Manage complex film/TV projects

## Technology Stack
- **Frontend**: Next.js 15, TypeScript, Tailwind CSS, shadcn/ui
- **Backend**: Node.js 20+, Express.js, TypeScript
- **Database**: PostgreSQL with Drizzle ORM
- **AI**: Google Gemini API for analysis
- **Cache**: Redis for performance optimization
- **Queue**: BullMQ for background processing
- **Monitoring**: Sentry + Prometheus
- **Deployment**: Vercel (Frontend) + Custom (Backend)

## Current Status
- **Version**: 1.0 (75% production ready)
- **Languages**: Arabic (primary), with RTL support
- **Architecture**: Monorepo with separate frontend/backend
- **Performance**: Optimized with 40-70% improvement targets
- **Security**: JWT auth, rate limiting, data encryption