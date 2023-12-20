#!/bin/bash

function get_application_pod_info() {
    local node_name=$1

    # Get all pods in the cluster on the specified node
    local node_pods=$(kubectl get pods --all-namespaces --field-selector spec.nodeName=$node_name -o json | jq -r '.items[] | select(.metadata.labels.app) | .metadata.labels.app')

    echo "$node_pods"
}

function update_csv_file() {
    local csv_file_path=$1
    local node_name=$2
    local app_info=$3

    while IFS= read -r app_name; do
        local pod_count=$(kubectl get pods --all-namespaces -l "app=$app_name" -o json | jq -r '.items | length')
        echo "$node_name,$app_name,$pod_count" >> "$csv_file_path"
    done <<< "$app_info"

    echo "Pod information for node '$node_name' appended to CSV file."
}

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <node_name>"
    exit 1
fi

node_name=$1

app_info=$(get_application_pod_info "$node_name")

if [ -n "$app_info" ]; then
    csv_file_path="pod_info_all_nodes.csv"
    update_csv_file "$csv_file_path" "$node_name" "$app_info"
else
    echo "Failed to retrieve pod information."
fi
