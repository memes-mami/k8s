from kazoo.client import KazooClient
from kazoo.exceptions import KazooException

try:
    # Connect to ZooKeeper using the Kubernetes Service
    zk = KazooClient(hosts='zoo2:2181')  # 'zoo2' is the Service name, 2181 is the ZooKeeper port
    zk.start()

    # Specify the path of the node
    node_path = '/zookeeper2-drc6t'

    # Read the data from the specified node
    data, stat = zk.get(node_path)
    print(f"Data at {node_path}: {data.decode()}")

except KazooException as e:
    print(f"Error: {e}")

finally:
    # Stop the ZooKeeper client
    if zk:
        zk.stop()
