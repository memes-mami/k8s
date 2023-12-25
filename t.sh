#!/bin/bash

# Function to shuffle an array
shuffle() {
    local i tmp size arr
    arr=("$@")
    size=${#arr[@]}
    for ((i=size-1; i>0; i--)); do
        j=$((RANDOM % (i + 1)))
        tmp=${arr[i]}
        arr[i]=${arr[j]}
        arr[j]=$tmp
    done
    echo "${arr[@]}"
}

# Worker node numbers
worker_nodes=(1 2 3 4  6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21)

# Shuffle worker node numbers
shuffled_nodes=($(shuffle "${worker_nodes[@]}"))

# Get the first node from shuffled_nodes
selected_node="${shuffled_nodes[0]}"

# Pass the selected node as an argument to another script
#./your_another_script.sh "$selected_node"
echo "$shuffled_nodes"
