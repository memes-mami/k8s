import subprocess
import sys
import re  # Added import statement for regular expressions
def key_function(item):
    return int(item[1][:-1]) + int(item[2][:-2])
def get_nginx_pods_on_node(node_name):
    try:
        # Get the list of Nginx pods running on the specified node
        command = [
            'kubectl',
            'get',
            'pods',
            '--all-namespaces',
            f'--field-selector=spec.nodeName={node_name}',
            '-l', 'app=nginx',  # Adjust the label selector based on your deployment
            '-o', 'custom-columns=:metadata.name',
            '--no-headers'
        ]
        nginx_pods = subprocess.check_output(command, text=True).strip().split('\n')
        return nginx_pods
    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
        return None

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

def get_total_resources(metrics):
    # Parse CPU and memory metrics and calculate total resources
    try:
        cpu_usage, memory_usage = metrics.split()[1:3]
        cpu_usage = int(cpu_usage[:-1])  # Remove the trailing %
        memory_usage = int(memory_usage[:-2])  # Remove the trailing Mi
        total_resources = cpu_usage + memory_usage
        return total_resources
    except ValueError:
        return None

if len(sys.argv) != 2:
    print("Usage: python script.py <node_name>")
    sys.exit(1)

    # Take the node name as an argument
node_name = sys.argv[1]

    # Example: Retrieve Nginx pods on a specific node
nginx_pods = get_nginx_pods_on_node(node_name)

if nginx_pods:
    print(f"Nginx pods running on node '{node_name}':")

        # Create a list to store pod names along with total resources
    pod_resources = []

    for pod in nginx_pods:
        metrics = get_pod_metrics(pod)
        if metrics:
            cpu_usage, memory_usage = extract_cpu_memory_usage(metrics)
            if cpu_usage is not None and memory_usage is not None:
                pod_resource = [pod, cpu_usage, memory_usage]
                pod_resources.append(pod_resource)
    
    # Sort pods based on total resources
    sorted_l = sorted(pod_resources, key=key_function,reverse=True)
    print(sorted_l)
    
