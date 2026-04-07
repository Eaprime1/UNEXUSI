#!/bin/bash

# UNEXUSI Command Logger
# Logs commands with timestamps to command history

if [ -z "$1" ]; then
    echo "Usage: bash scripts/command-log.sh \"your message here\""
    exit 1
fi

# Ensure logs directory exists
mkdir -p logs

# Get current timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Append to command history log
echo "[$TIMESTAMP] $1" >> logs/command-history.log

echo "✓ Logged: $1"