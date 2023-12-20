
import time,csv
import subprocess
import random
import pandas as pd
import numpy as np
from kubernetes import client, config

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
    print(len(zookeeper_pods))

    return zookeeper_pods
node_name = "worker9"
zookeeper_pods = get_zookeeper_pods_on_node(node_name)
picked_zookeeper_pod = None  # Initialize the variable

if len(zookeeper_pods) > 0:
    picked_zookeeper_pod = random.choice(zookeeper_pods)
    print(f"Picked Zookeeper Pod: {picked_zookeeper_pod}")
else:
    print(f"Failed to retrieve Zookeeper pods running on node '{node_name}'.")
