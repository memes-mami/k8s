#!/bin/bash

#Get the current date and time for timestamp
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")

  # Rewrite the CSV file with the header
  echo "Timestamp,Node,CPU(cores),CPU(%),Memory(bytes),Memory(%)" > "metrics.csv"

  kubectl top nodes --no-headers | while read node cpu_mem; do
    # Extract CPU and memory values
    IFS=' ' read -ra metrics <<< "$cpu_mem"
    cpu_cores=${metrics[0]}
    cpu_percent=${metrics[1]}
    memory_bytes=${metrics[2]}
    memory_percent=${metrics[3]}

    # Append the new metrics to the existing CSV file
    echo "$timestamp,$node,$cpu_cores,$cpu_percent,$memory_bytes,$memory_percent" >> "metrics.csv"
done
 
