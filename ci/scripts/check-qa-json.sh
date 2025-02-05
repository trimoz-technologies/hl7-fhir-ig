#!/bin/bash
# check-qa-json.sh
# This script checks the QA JSON file (output/qa.json) for errors or warnings.
# Usage: ./check-qa-json.sh [error|warning]

# Function to display help/usage information
usage() {
    echo "Usage: $0 [error|warning]"
    echo ""
    echo "Options:"
    echo "  --help, -h    - Show this help message."
    echo "  error   - Check the 'errs' count in output/qa.json. Exits with a non-zero code if errors are found."
    echo "  warning - Check the 'warnings' count in output/qa.json. Displays warnings but always exits with 0."
}

# Ensure exactly one parameter is provided.
if [ "$#" -ne 1 ]; then
    echo "Error: Exactly one argument is required."
    usage
    exit 1
fi

MODE="$1"

# Display help if requested.
if [ "$MODE" = "-h" ] || [ "$MODE" = "--help" ]; then
    usage
    exit 0
fi

# Check that the JSON file exists.
if [ ! -f output/qa.json ]; then
    echo "Error: File output/qa.json not found!"
    exit 1
fi

# Use jq to check the JSON file based on the mode.
case "$MODE" in
    error)
        ERR_COUNT=$(jq '.errs' output/qa.json)
        if [ "$ERR_COUNT" -gt 0 ]; then
            echo "Error: Found $ERR_COUNT errors in output/qa.json."
            exit 1  # Fail the job.
        else
            echo "No errors found in output/qa.json."
            exit 0
        fi
        ;;
    warning)
        WARN_COUNT=$(jq '.warnings' output/qa.json)
        if [ "$WARN_COUNT" -gt 0 ]; then
            echo "Warning: Found $WARN_COUNT warnings in output/qa.json."
            exit 1  # Fail the job.
        else
            echo "No warnings found in output/qa.json."
        fi
        ;;
    *)
        echo "Error: Invalid mode '$MODE'."
        usage
        exit 1
        ;;
esac
