import sys
from kubernetes import client, config

def get_application_pod_info(node_name):
    try:
        # Load the Kubernetes configuration
        config.load_kube_config()

        # Create a Kubernetes API client
        api_instance = client.CoreV1Api()

        # Get all pods in the cluster
        pods = api_instance.list_pod_for_all_namespaces(watch=False)

        # Filter pods running on the specified node
        node_pods = [pod for pod in pods.items if pod.spec.node_name == node_name]

        # Extract application names and count of pods for each application
        application_info = {}
        for pod in node_pods:
            if pod.metadata.labels and 'app' in pod.metadata.labels:
                app_name = pod.metadata.labels['app']
                if app_name in application_info:
                    application_info[app_name]['count'] += 1
                else:
                    application_info[app_name] = {'count': 1, 'pod_names': []}
                application_info[app_name]['pod_names'].append(pod.metadata.name)

        return application_info

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

    app_info = get_application_pod_info(node_name)

    if app_info is not None:
        print(f"Application pods information on node '{node_name}':")
        for app_name, info in app_info.items():
            print(f"Application: {app_name}, Pod Count: {info['count']}")
            print(f"Pod Names: {', '.join(info['pod_names'])}")
            print("---")
    else:
        print(f"Failed to retrieve pod information.")
