import subprocess
from kubernetes import client, config
import sys
import re

def key_function(item):
    return int(item[1][:-1]) + int(item[2][:-2])

def get_zookeeper_pods_on_node(node_name):
    config.load_kube_config()  # Load the kubeconfig file

    v1 = client.CoreV1Api()

    # List all pods in the default namespace
    pod_list = v1.list_namespaced_pod(namespace="default")

    zookeeper_pods = []

    # Iterate over pods and identify Zookeeper pods on the specified node
    for pod in pod_list.items:
        if pod.spec.node_name == node_name and "zookeeper" in pod.metadata.name.lower():
            zookeeper_pods.append(pod.metadata.name)

    return zookeeper_pods

def get_pod_metrics(pod_name):
    try:
        # Get CPU and memory metrics for the pod
        command = ['kubectl', 'top', 'pod', pod_name]
        metrics = subprocess.check_output(command, text=True)
        return metrics
    except subprocess.CalledProcessError as e:
        print(f"Error fetching metrics for pod {pod_name}: {e}")
        return None

def extract_cpu_memory_usage(metrics):
    # Extract CPU and memory usage from the metrics
    match = re.search(r'(\d+m)\s+(\d+Mi)', metrics)
    if match:
        cpu_usage, memory_usage = match.groups()
        return cpu_usage, memory_usage
    else:
        return None, None

if len(sys.argv) != 2:
    print("Usage: python script.py <node_name>")
    sys.exit(1)

# Take the node name as an argument
node_name = sys.argv[1]

# Example: Retrieve Zookeeper pods on a specific node
zookeeper_pods = get_zookeeper_pods_on_node(node_name)

if zookeeper_pods:
    print(f"Zookeeper pods running on node '{node_name}':")

    # Create a list to store pod names along with total resources
    pod_resources = []

    for pod in zookeeper_pods:
        metrics = get_pod_metrics(pod)
        if metrics:
            cpu_usage, memory_usage = extract_cpu_memory_usage(metrics)
            if cpu_usage is not None and memory_usage is not None:
                pod_resource = [pod, cpu_usage, memory_usage]
                pod_resources.append(pod_resource)

    # Sort pods based on total resources
    sorted_list = sorted(pod_resources, key=key_function, reverse=True)
    print(sorted_list)
