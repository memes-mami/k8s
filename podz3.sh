

for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {1..3}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done

for _ in {1..5}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {4..4}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done


for _ in {1..9}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {6..7}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done


for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {8..10}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done


for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {11..13}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done


for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {14..16}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done



for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {17..19}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done

  

for _ in {1..4}; do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    for WORKER_NODE in {20..21}; do
        NEW_POD_NAME="zookeeper-pod-worker${WORKER_NODE}-${TIMESTAMP}"
        ZK_IMAGE="digitalwonderland/zookeeper"  # Replace with your ZooKeeper image
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
done

