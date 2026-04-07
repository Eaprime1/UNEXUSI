#!/bin/bash

# UNEXUSI Setup Script
# Initializes the development environment

set -e

echo "=========================================="
echo "UNEXUSI Environment Setup"
echo "=========================================="

# Create logs directory if it doesn't exist
if [ ! -d "logs" ]; then
    mkdir -p logs
    echo "✓ Created logs directory"
else
    echo "✓ logs directory already exists"
fi

# Verify core directories
REQUIRED_DIRS=("complexity" "entities" "math-engine" "scripts" "docs")

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "✓ $dir directory verified"
    else
        echo "✗ Warning: $dir directory not found"
    fi
done

echo ""
echo "=========================================="
echo "Environment Ready!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "  - Review complexity/complexity-master.md"
echo "  - Check scripts/README.md for available tools"
echo "  - Run: bash scripts/command-log.sh \"message\""
