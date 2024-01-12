#!/bin/bash

# Function to handle termination signals
cleanup() {
  echo "bash2 is stopping..."
  exit
}

# Trap termination signals
trap cleanup SIGTERM SIGINT

# Your main logic for bash2 goes here
echo "bash2 is running..."

# Simulate a long-running task
#sleep 20

# The script will automatically exit when it completes its task
echo "bash2 is done."
