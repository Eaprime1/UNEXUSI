```markdown
# UNEXUSI Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill introduces the core development patterns used in the UNEXUSI repository, a TypeScript codebase with no detected framework. You'll learn about file naming, import/export conventions, test file structure, and suggested workflows for consistent development.

## Coding Conventions

### File Naming
- All files use **kebab-case**.
  - Example:  
    ```
    user-service.ts
    data-models.ts
    ```

### Import Style
- Use **relative imports** for modules within the codebase.
  - Example:
    ```typescript
    import { fetchData } from './utils/fetch-data';
    ```

### Export Style
- Use **named exports** for all exported members.
  - Example:
    ```typescript
    // In utils/math-helpers.ts
    export function add(a: number, b: number): number {
      return a + b;
    }
    ```

    ```typescript
    // In another file
    import { add } from './utils/math-helpers';
    ```

### Commit Patterns
- Commit messages are **freeform** (no enforced structure).
- Prefixes may be used but are not required.
- Average commit message length: ~20 characters.

## Workflows

### Creating a New Module
**Trigger:** When adding a new feature or utility  
**Command:** `/new-module`

1. Create a new file using kebab-case (e.g., `feature-name.ts`).
2. Implement functionality using named exports.
3. Use relative imports for dependencies.
4. Write corresponding tests in a `.test.ts` file.

### Writing and Running Tests
**Trigger:** When validating code changes  
**Command:** `/run-tests`

1. Create a test file with the pattern `*.test.ts` (e.g., `feature-name.test.ts`).
2. Write tests for each exported function or class.
3. Use the project's preferred test runner (framework unknown; check project docs or package.json).
4. Run the tests and ensure all pass before committing.

### Importing and Exporting Code
**Trigger:** When reusing code across files  
**Command:** `/import-export`

1. Export all functions, classes, or constants using named exports.
2. Import them in other files using relative paths.
3. Avoid default exports for consistency.

## Testing Patterns

- Test files follow the `*.test.ts` naming convention.
- Each test file should be placed alongside the module it tests or in a dedicated `tests/` directory.
- The testing framework is not specified; check the repository for more details.
- Example test file:
  ```typescript
  // math-helpers.test.ts
  import { add } from './math-helpers';

  describe('add', () => {
    it('adds two numbers', () => {
      expect(add(2, 3)).toBe(5);
    });
  });
  ```

## Commands
| Command        | Purpose                                         |
|----------------|-------------------------------------------------|
| /new-module    | Scaffold a new module with proper conventions   |
| /run-tests     | Run all test files in the repository            |
| /import-export | Guidelines for importing and exporting code      |
```
