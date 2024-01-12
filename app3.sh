#!/bin/bash

# Check if the node name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <node-name>"
    exit 1
fi

# Assign the node name from the command line argument
node_name=$1

# Use kubectl to get the number of Nginx pods on the specified node
nginx_pod_count=$(kubectl get pods --field-selector spec.nodeName=$node_name -o jsonpath='{range .items[*]}{.metadata.name}{" "}{.spec.containers[0].name}{"\n"}{end}' | grep nginx | wc -l)

# Print the result
echo "Number of Nginx pods on node $node_name: $nginx_pod_count"
