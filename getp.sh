#!/bin/bash

# Check if the pod name is provided as an argument
if [ -z "$1" ]; then
    echo "Error: Pod name not provided."
    exit 1
fi

# Get the pod name from the first command-line argument
pod_name="$1"

# Get the labels of the pod using kubectl
pod_labels=$(kubectl get pod "$pod_name" -o json | jq -r '.metadata.labels')

# Extract the app name from the labels
app_name=$(echo "$pod_labels" | jq -r '.app')

# Print the extracted app name
echo "App Name: $app_name"
