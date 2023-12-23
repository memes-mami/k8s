#!/bin/bash

# Define the CSV file path
csv_file="node_metrics.csv"

# Specify the node name as a command-line argument
selected_node=$1

# Extract CPU and memory values for the selected node from the CSV file
cpu_percentage=$(awk -F',' -v node="$selected_node" 'NR>1 && $2 == node {gsub(/m|%/, "", $4); print $4}' "$csv_file")
memory_percentage=$(awk -F',' -v node="$selected_node" 'NR>1 && $2 == node {gsub(/Mi|%/, "", $6); print $6}' "$csv_file")

# Remove percentages and convert to integers
cpu_percentage=$(echo "$cpu_percentage" | tr -d '%')
memory_percentage=$(echo "$memory_percentage" | tr -d '%')

# Print the values
echo "Node: $selected_node"
echo "CPU Percentage: $cpu_percentage"
echo "Memory Percentage: $memory_percentage "
