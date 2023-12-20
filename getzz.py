from kubernetes import client, config

def identify_zookeeper_pods(node_name):
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

if __name__ == "__main__":
    node_name = "worker1"  # Replace with the desired node name
    zookeeper_pods = identify_zookeeper_pods(node_name)

    if zookeeper_pods:
        print(f"Zookeeper pods on node {node_name}:")
        for pod in zookeeper_pods:
            print(pod)
    else:
        print(f"No Zookeeper pods found on node {node_name}")
