for ((i=1; i<=11; i++)); do
  for ((j=0; j<=2; j++)); do
    cat <<EOF
---
apiVersion: v1
kind: Pod
metadata:
  name: zookeeper-pod-worker${i}-${j}
  labels:
    app: zookeeper
spec:
  nodeName: worker${i}
  containers:
    - name: zookeeper-container
      image: digitalwonderland/zookeeper
      ports:
      - containerPort: 2181
      - containerPort: 2888
      - containerPort: 3888
      env:
      - name: ZOOKEEPER_ID
        value: "${i}-${j}"
      - name: ZOOKEEPER_SERVER_1
        value: zoo1
      - name: ZOOKEEPER_SERVER_2
        value: zoo2
EOF
  done
done

for ((i=12; i<=21; i++)); do
  for ((j=0; j<=2; j++)); do
    cat <<EOF
---
apiVersion: v1
kind: Pod
metadata:
  name: zookeeper-pod-worker${i}-${j}
  labels:
    app: zookeeper
spec:
  nodeName: worker${i}
  containers:
    - name: zookeeper-container
      image: digitalwonderland/zookeeper
      ports:
      - containerPort: 2181
      - containerPort: 2888
      - containerPort: 3888
      env:
      - name: ZOOKEEPER_ID
        value: "${i}-${j}"
      - name: ZOOKEEPER_SERVER_1
        value: zoo1
      - name: ZOOKEEPER_SERVER_2
        value: zoo2
EOF
  done
done
