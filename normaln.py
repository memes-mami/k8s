import time
import csv
import subprocess
import random
import pandas as pd
import numpy as np
from kubernetes import client, config

def update_csv_file(file_path, row):
    with open(file_path, 'a', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(row)

def get_nginx_pods_on_node(node_name):
    try:
        command = [
            'kubectl',
            'get',
            'pods',
            '--all-namespaces',
            f'--field-selector=spec.nodeName={node_name}',
            '-l', 'app=nginx',
            '-o', 'custom-columns=:metadata.name',
            '--no-headers'
        ]
        nginx_pods = subprocess.check_output(command, text=True).strip().split('\n')
        return nginx_pods
    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
        return None

def run_bash_script(script_path, script_arguments):
    try:
        command = ['bash', script_path] + script_arguments
        subprocess.run(command, check=True)
        print("Bash script executed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Bash script execution failed. {e}")

def process_nodes(first_node, last_node):
    nginx_pods = get_nginx_pods_on_node(last_node)
    picked_nginx_pod = None
    b1 = 'finding_n_n_n.sh'
    run_bash_script(b1, [last_node])
    run_bash_script(b1, [first_node])
    if len(nginx_pods) > 0:
        picked_nginx_pod = random.choice(nginx_pods)
        print(f"Picked nginx Pod: {picked_nginx_pod}")
    else:
        print(f"Failed to retrieve nginx pods running on node '{last_node}'.")
        return  # Return early to skip the rest of the function

    # Rest of your code here
    bash_script_path = 'checktry.sh'
    print(f"the selected node to checkpoint :{last_node}")
    start_time = time.time()
    run_bash_script(bash_script_path, [last_node, picked_nginx_pod])
    duration1 = time.time() - start_time
    print(f"Time Duration for the checkpoint script: {duration1} seconds")

    bash_s2 = 'checknn.sh'
    print(f"the selected pod to checkpoint :{first_node}")
    run_bash_script(bash_s2, [first_node])
    durationt = time.time() - start_time
    duration2 = durationt - duration1
    print(f"Time Duration for the restore script: {duration2} seconds")
    print(f"Time Duration of total time : {durationt} seconds")
    csv_file_path = 'timenormaln.csv'
    update_csv_file(csv_file_path, [durationt, duration1, duration2])
    arguments = [picked_nginx_pod]
    subprocess.run(["python3", "delete.py"] + arguments)

# Read the CSV file into a list of dictionaries
with open('node_metrics.csv', 'r') as file:
    reader = csv.DictReader(file)
    data = list(reader)

# Remove rows with '<unknown>' in the 'CPU(%)' column
filtered_data = [row for row in data if row['CPU(%)'] != '<unknown>']

# Sort the list based on the 'CPU(%)' column in ascending order
sorted_data = sorted(filtered_data, key=lambda x: float(x['CPU(%)'].rstrip('%')))

# Print the ascending order list
print("Ascending Order List based on CPU(%):")
for row in sorted_data:
    print(row)

# Determine the last node to extract
last_node = sorted_data[-1]['Node']
if last_node == 'master':
    last_node = sorted_data[-2]['Node']

# Extract the first and last nodes
first_node = sorted_data[0]['Node']
process_nodes(first_node, last_node)
