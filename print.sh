#!/bin/bash

# Set the threshold values for CPU and memory usage
CPU_THRESHOLD=70
MEMORY_THRESHOLD=80

# Specify the worker node name
WORKER_NODE="worker1"

# Get current CPU and memory usage for the specified worker node
METRICS=$(kubectl top node $WORKER_NODE | tail -n +2)

# Extract CPU and memory usage percentages and remove '%' and 'm' characters
CPU_USAGE=$(echo "$METRICS" | awk '{print $2}' | tr -d '%m')
MEMORY_USAGE=$(echo "$METRICS" | awk '{print $3}' | tr -d '%m')

# Check if CPU or memory usage exceeds the thresholds
if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ] || [ "$MEMORY_USAGE" -gt "$MEMORY_THRESHOLD" ]; then
    echo "yes"
else
    echo "no"
fi
