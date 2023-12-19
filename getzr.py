import subprocess
import sys
import random  # Import the random module

def get_zookeeper_pods_on_node(node_name):
    try:
        # Get the list of Zookeeper pods running on the specified node
        command = [
            'kubectl',
            'get',
            'pods',
            '--all-namespaces',
            f'--field-selector=spec.nodeName={node_name}',
            '-l', 'app=zookeeper',
            '-o', 'custom-columns=:metadata.name',
            '--no-headers'
        ]
        zk_pods = subprocess.check_output(command, text=True).strip().split('\n')
        return zk_pods
    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
        return None

if __name__ == "__main__":
    # Specify the node name as an argument
    node_name = sys.argv[1]

    if not node_name:
        print("Error: Node name not provided.")
        sys.exit(1)

    # Get Zookeeper pods on the specified node
    zookeeper_pods = get_zookeeper_pods_on_node(node_name)

    if not zookeeper_pods:
        print(f"No Zookeeper pods found on node '{node_name}'.")
        sys.exit(0)

    # Pick a random Zookeeper pod
    picked_zookeeper_pod = random.choice(zookeeper_pods)
    print(f"Picked Zookeeper Pod: {picked_zookeeper_pod}")