#!/bin/bash

# Specify the target worker node
WORKER_NODE="6"
WORKER_NODE_NAME="worker${WORKER_NODE}"

# Iterate to create 10 ZooKeeper pods on the specified worker node
for ((i=1; i<=20; i++)); do
    NEW_POD_NAME="zookeeper-podz-${WORKER_NODE_NAME}-${i}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the specified worker node
    kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
spec:
  containers:
  - name: zookeeper
    image: $ZK_IMAGE
    ports:
    - containerPort: 2181
    - containerPort: 2888
    - containerPort: 3888
  nodeSelector:
    kubernetes.io/hostname: $WORKER_NODE_NAME

EOF
done

#!/bin/bash

# Specify the target worker node
WORKER_NODE="7"
WORKER_NODE_NAME="worker${WORKER_NODE}"

# Iterate to create 10 ZooKeeper pods on the specified worker node
for ((i=1; i<=20; i++)); do
    NEW_POD_NAME="zookeeper-podzz-${WORKER_NODE_NAME}-${i}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the specified worker node
    kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
spec:
  containers:
  - name: zookeeper
    image: $ZK_IMAGE
    ports:
    - containerPort: 2181
    - containerPort: 2888
    - containerPort: 3888
  nodeSelector:
    kubernetes.io/hostname: $WORKER_NODE_NAME

EOF
done
