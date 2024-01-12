import sys
import csv
from kubernetes import client, config
import logging

logging.basicConfig(level=logging.INFO)


def get_application_pod_info(node_name):
    try:
        # Load the Kubernetes configuration
        config.load_kube_config()

        # Create a Kubernetes API client
        api_instance = client.CoreV1Api()

        # Check if the specified node exists
        nodes = api_instance.list_node().items
        if not any(node.metadata.name == node_name for node in nodes):
            logging.error(f"Node '{node_name}' not found.")
            return None

        # Get all pods in the cluster
        pods = api_instance.list_pod_for_all_namespaces(watch=False)

        # Filter pods running on the specified node
        node_pods = [pod for pod in pods.items if pod.spec.node_name == node_name]

        # Extract application names and count of pods for each application
        application_info = {}
        for pod in node_pods:
            if pod.metadata.labels and 'app' in pod.metadata.labels:
                app_name = pod.metadata.labels['app']
                application_info[app_name] = application_info.get(app_name, 0) + 1

        return application_info

    except client.rest.ApiException as api_exception:
        logging.error(f"Kubernetes API Exception: {api_exception}")
        return None
    except Exception as e:
        logging.error(f"Error: {e}")
        return None


def update_csv_file(csv_file_path, node_name, app_info):
    try:
        with open(csv_file_path, mode='a', newline='') as csv_file:
            fieldnames = ['NodeName', 'ApplicationName', 'PodCount']
            writer = csv.DictWriter(csv_file, fieldnames=fieldnames)

            # Write header if the file is empty
            if csv_file.tell() == 0:
                writer.writeheader()

            for app_name, pod_count in app_info.items():
                writer.writerow({'NodeName': node_name, 'ApplicationName': app_name, 'PodCount': pod_count})

        logging.info(f"Pod information for node '{node_name}' appended to CSV file.")

    except Exception as e:
        logging.error(f"Error updating CSV file: {e}")


if __name__ == "__main__":
    # Check if the node name is provided as a command-line argument
    if len(sys.argv) != 2:
        logging.error("Usage: python script.py <node_name>")
        sys.exit(1)

    # Get the node name from the command-line argument
    node_name = sys.argv[1]

    app_info = get_application_pod_info(node_name)

    if app_info is not None:
        # Append pod information to a common CSV file
        csv_file_path = "pod_info.csv"
        update_csv_file(csv_file_path, node_name, app_info)
    else:
        logging.error(f"Failed to retrieve pod information.")
