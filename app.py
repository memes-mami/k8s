import sys
from kubernetes import client, config

def get_application_pod_count(node_name):
    try:
        # Load the Kubernetes configuration
        config.load_kube_config()

        # Create a Kubernetes API client
        api_instance = client.CoreV1Api()

        # Get all pods in the cluster
        pods = api_instance.list_pod_for_all_namespaces(watch=False)

        # Filter pods running on the specified node
        node_pods = [pod for pod in pods.items if pod.spec.node_name == node_name]

        # Extract unique application names from pod labels
        application_names = set()
        for pod in node_pods:
            if pod.metadata.labels and 'app' in pod.metadata.labels:
                application_names.add(pod.metadata.labels['app'])

        # Get the count of unique application pods
        application_count = len(application_names)

        return application_count

    except Exception as e:
        print(f"Error: {e}")
        return None

if __name__ == "__main__":
    # Check if the node name is provided as a command-line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <node_name>")
        sys.exit(1)

    # Get the node name from the command-line argument
    node_name = sys.argv[1]

    count = get_application_pod_count(node_name)

    if count is not None:
        print(f"Number of different application pods on node '{node_name}': {count}")
    else:
        print(f"Failed to retrieve pod information.")
