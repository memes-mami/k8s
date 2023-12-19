#!/bin/bash

# Run kubectl command and filter using grep
pod_info=$(kubectl get pod | grep new)

# Extract the pod name using awk and save it as a variable
pod_name=$(echo "$pod_info" | awk '{print $1}')

# Print the pod name
echo "Pod Name: $pod_name"

# Save the pod name as a variable for later use
export MY_POD_NAME="$pod_name"

# Print the variable
echo "My Pod Name (from variable): $MY_POD_NAME"
