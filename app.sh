#!/bin/bash

function get_application_pod_info() {
    local node_name=$1

    # Load the Kubernetes configuration
    kubectl config use-context YOUR_KUBE_CONTEXT

    # Get all pods in the cluster
    local node_pods=$(kubectl get pods --all-namespaces -o json | jq --arg node "$node_name" '.items[] | select(.spec.nodeName == $node)')

    # Extract application names and count of pods for each application
    local application_info=""
    while IFS= read -r line; do
        local app_name=$(echo "$line" | jq -r '.metadata.labels.app')
        if [[ ! -z "$app_name" ]]; then
            application_info+="$app_name"$'\n'
        fi
    done <<< "$node_pods"

    echo "$application_info"
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
