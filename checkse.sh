#!/bin/bash

# Check if the worker node name is provided
if [ -z "$1" ]; then
    echo "Error: Worker node name not provided."
    exit 1
fi

# Specify the worker node name from the command line argument
WORKER_NODE="$1"
pod_name="$2"


start_time=$(date +%s.%N)
bash restorese.sh "$WORKER_NODE" 
end_time=$(date +%s.%N)


start_time=$(date +%s.%N)
bash restorese.sh "$WORKER_NODE" 
end_time=$(date +%s.%N)


execution_time=$(echo "$end_time - $start_time" | bc)

python_script="delete.py"
python3 "$python_script" "$pod"
