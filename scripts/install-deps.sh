#!/bin/bash

# UNEXUSI Dependency Installer
# Installs project dependencies

set -e

echo "=========================================="
echo "Installing UNEXUSI Dependencies"
echo "=========================================="

# Check for Python
if command -v python3 &> /dev/null; then
    echo "✓ Python3 found: $(python3 --version)"
else
    echo "✗ Python3 not found. Please install Python 3.8+"
    exit 1
fi

# Install Python dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing Python packages..."
    pip install -r requirements.txt
    echo "✓ Python packages installed"
else
    echo "ℹ No requirements.txt found"
fi

echo ""
echo "=========================================="
echo "Dependencies Ready!"
echo "=========================================="