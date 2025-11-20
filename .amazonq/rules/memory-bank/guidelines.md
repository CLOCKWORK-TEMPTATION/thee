# Development Guidelines - The Copy

## Code Quality Standards

### TypeScript Usage
- **Strict TypeScript**: All files use strict TypeScript with comprehensive type definitions
- **Interface Definitions**: Complex objects use detailed interfaces (e.g., `DeviceCapabilities`, `ParticleConfig`)
- **Type Safety**: Extensive use of type guards and null checks (`capabilities?.performanceScore ?? 0`)
- **Generic Types**: Proper generic usage for reusable components (`usePerformanceMetric<K extends keyof DeviceCapabilities>`)

### Code Organization Patterns
- **Barrel Exports**: Use index files to organize exports from modules
- **Separation of Concerns**: Clear separation between UI components, business logic, and utilities
- **Modular Architecture**: Features organized in dedicated directories with their own components, hooks, and utilities
- **Utility Extraction**: Complex logic extracted to separate utility files (e.g., `arabic-action-verbs.ts`)

### Naming Conventions
- **Descriptive Names**: Functions and variables have clear, descriptive names (`usePerformanceDetection`, `calculateCodeDimensions`)
- **Consistent Prefixes**: Hooks use `use` prefix, components use PascalCase
- **Arabic Content**: Arabic text properly handled with RTL support and Unicode considerations
- **Constants**: All-caps with underscores for constants (`ARABIC_ACTION_VERBS`, `ACTION_START_PATTERNS`)

## React Patterns

### Hook Patterns
- **Custom Hooks**: Extensive use of custom hooks for reusable logic (`usePerformanceDetection`, `useBatteryStatus`)
- **Hook Composition**: Complex hooks built from simpler ones (`useShouldReduceAnimations` uses `usePerformanceDetection`)
- **Cleanup Patterns**: Proper cleanup with `useRef` for unsubscribe functions and cleanup in `useEffect`
- **Callback Optimization**: `useCallback` for expensive computations and event handlers

### Component Architecture
- **Functional Components**: All components are functional with hooks
- **Props Interfaces**: Clear interface definitions for component props
- **Conditional Rendering**: Extensive use of conditional rendering based on state
- **Event Handling**: Proper event handling with preventDefault and cleanup

### State Management
- **Local State**: `useState` for component-local state
- **Derived State**: Computed values derived from primary state
- **State Updates**: Immutable state updates with proper dependency arrays
- **Performance Optimization**: State updates optimized to prevent unnecessary re-renders

## Performance Optimization

### Rendering Performance
- **Lazy Loading**: Images and components loaded lazily (`loading="lazy"`, `decoding="async"`)
- **Memoization**: Strategic use of `useCallback` and `useMemo` for expensive operations
- **Conditional Rendering**: Performance-based conditional rendering (`shouldDisable`, `shouldReduceQuality`)
- **Animation Optimization**: Frame rate adaptation based on device capabilities

### Memory Management
- **Cleanup Functions**: Proper cleanup in `useEffect` return functions
- **Event Listener Cleanup**: Removal of event listeners in cleanup functions
- **Canvas Cleanup**: Proper disposal of Three.js resources and canvas contexts
- **Reference Management**: `useRef` for persistent references that don't trigger re-renders

### Bundle Optimization
- **Code Splitting**: Dynamic imports and lazy loading where appropriate
- **Tree Shaking**: Proper exports to enable tree shaking
- **Asset Optimization**: Image optimization and fallback handling

## Security Practices

### Input Sanitization
- **HTML Sanitization**: Custom `sanitizeHtml` function to prevent XSS attacks
- **Content Security**: Safe DOM manipulation using `textContent` instead of `innerHTML`
- **Event Prevention**: Proper use of `preventDefault()` to prevent unwanted behaviors

### Safe DOM Manipulation
- **DOMParser Usage**: Safe HTML parsing with DOMParser instead of innerHTML
- **Attribute Filtering**: Whitelist approach for allowed HTML attributes
- **Script Prevention**: Removal of dangerous tags and JavaScript protocols

## Arabic Language Support

### RTL Support
- **Direction Handling**: Proper `direction: "rtl"` styling for Arabic content
- **Text Alignment**: Right-to-left text alignment for Arabic text
- **Unicode Handling**: Proper Unicode range handling for Arabic characters (`\u0600-\u06FF`)

### Content Processing
- **Arabic Verb Recognition**: Comprehensive Arabic action verb detection system
- **Text Normalization**: Functions for normalizing Arabic text (removing diacritics, normalizing separators)
- **Pattern Matching**: Regex patterns specifically designed for Arabic text structure

## Error Handling

### Graceful Degradation
- **Fallback Values**: Default values for all potentially undefined properties
- **Error Boundaries**: Proper error handling with fallback UI
- **Progressive Enhancement**: Features work without advanced capabilities

### Validation Patterns
- **Type Guards**: Runtime type checking for external data
- **Null Checks**: Comprehensive null/undefined checking
- **Default Values**: Sensible defaults for all optional properties

## Testing Considerations

### Testable Code Structure
- **Pure Functions**: Business logic extracted to pure functions for easy testing
- **Dependency Injection**: External dependencies passed as parameters
- **Mocking Support**: Code structured to support easy mocking of external dependencies

### Performance Testing
- **Performance Metrics**: Built-in performance monitoring and metrics collection
- **Device Testing**: Code designed to work across different device capabilities
- **Network Conditions**: Handling of various network conditions and offline states

## Documentation Standards

### Code Documentation
- **JSDoc Comments**: Comprehensive JSDoc for all public functions and hooks
- **Usage Examples**: Code examples in documentation comments
- **Type Documentation**: Clear documentation of complex types and interfaces
- **Arabic Comments**: Bilingual comments where appropriate for Arabic-specific functionality

### README Structure
- **Clear Setup Instructions**: Step-by-step setup and installation guides
- **Feature Documentation**: Comprehensive feature documentation with examples
- **Architecture Overview**: High-level architecture documentation
- **Performance Guidelines**: Performance optimization recommendations

## Development Workflow

### Code Organization
- **Feature-Based Structure**: Code organized by features rather than file types
- **Shared Utilities**: Common utilities in dedicated directories
- **Configuration Management**: Centralized configuration files
- **Environment Handling**: Proper environment variable management

### Quality Assurance
- **Linting Rules**: Strict ESLint configuration with TypeScript rules
- **Code Formatting**: Consistent code formatting with Prettier
- **Type Checking**: Comprehensive TypeScript type checking
- **Performance Budgets**: Performance budget enforcement in build process