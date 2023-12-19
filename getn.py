import subprocess

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

def main():
    # Example: Retrieve Nginx pods on a specific node
    node_name = 'worker1'  # Replace with the actual node name
    nginx_pods = get_nginx_pods_on_node(node_name)

    if nginx_pods:
        print(f"Nginx pods running on node '{node_name}':")
        for pod in nginx_pods:
            print(pod)
    else:
        print(f"Failed to retrieve Nginx pods running on node '{node_name}'.")

if __name__ == "__main__":
    main()
