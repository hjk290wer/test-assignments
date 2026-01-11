#!/bin/bash

# Check arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <log_directory> <days>"
  exit 1
fi

LOG_DIR="$1"
DAYS="$2"

# Check directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Directory not found: $LOG_DIR"
  exit 1
fi

# Find old .log files
FILES=$(find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS")

# If no files found
if [ -z "$FILES" ]; then
  echo "No log files older than $DAYS days found."
  exit 0
fi

# Show files
echo "The following log files are older than $DAYS days:"
echo "$FILES"

# Ask for confirmation
read -p "Delete these files? (y/n): " CONFIRM

if [ "$CONFIRM" = "y" ]; then
  echo "$FILES" | xargs rm -f
  echo "Files deleted."
else
  echo "Operation cancelled."
fi
