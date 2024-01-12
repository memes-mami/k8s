#!/bin/bash

# Iterate over worker nodes from worker1 to worker21
for WORKER_NODE in {1..20}; do
    NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the current worker node
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
    kubernetes.io/hostname: worker${WORKER_NODE}

EOF
done


for WORKER_NODE in {1..20}; do
    NEW_POD_NAME="zookeeper-pod2-worker${WORKER_NODE}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the current worker node
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
    kubernetes.io/hostname: worker${WORKER_NODE}

EOF
done


for WORKER_NODE in {121..121}; do
    NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the current worker node
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
    kubernetes.io/hostname: worker${WORKER_NODE}

EOF
done

for WORKER_NODE in {1..20}; do
    NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the current worker node
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
    kubernetes.io/hostname: worker${WORKER_NODE}

EOF
done
for WORKER_NODE in {121..121}; do
    NEW_POD_NAME="zookeeper-pod2-worker${WORKER_NODE}"
    ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image and tag

    # Create a new ZooKeeper pod on the current worker node
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
    kubernetes.io/hostname: worker${WORKER_NODE}

EOF
done
