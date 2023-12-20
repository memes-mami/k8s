for ((i=1; i<=11; i++)); do
  for ((j=0; j<=2; j++)); do
    WORKER_NODE="worker${i}"
    NEW_POD_NAME="zookeeper-pod-worker${i}-${j}"
    cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
  labels:
    app: zookeeper
spec:
  nodeSelector:
    kubernetes.io/hostname: $WORKER_NODE
  containers:
  - name: zookeeper
    image: digitalwonderland/zookeeper
    ports:
    - containerPort: 2181
    - containerPort: 2888
    - containerPort: 3888

EOF
  done
done

for ((i=12; i<=21; i++)); do
  for ((j=0; j<=2; j++)); do
    WORKER_NODE="worker${i}"
    NEW_POD_NAME="zookeeper-pod-worker${i}-${j}"
    cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
  labels:
    app: zookeeper
spec:
  nodeSelector:
    kubernetes.io/hostname: $WORKER_NODE
  containers:
  - name: zookeeper
    image: digitalwonderland/zookeeper
    ports:
    - containerPort: 2181
    - containerPort: 2888
    - containerPort: 3888

EOF
  done
done
