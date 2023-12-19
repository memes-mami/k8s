#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Worker node name not provided."
    exit 1
fi

# Define variables
WORKER_NODE="$1"
NEW_POD_NAME="new-redis-pod$WORKER_NODE"
REDIS_IMAGE="redis:6.2.3-alpine"  # Replace with your Redis image and tag
BACKUP_FILE="new_filename.tar"
BACKUP_DEST_PATH="/tmp/$BACKUP_FILE"
REDIS_EXEC_PATH="redis-server"

# Define a unique PVC name based on the worker node
PVC_NAME="redis-data-$WORKER_NODE"

# Step 1: Create a new Redis pod on the specified worker node
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
spec:
  containers:
  - name: redis
    image: $REDIS_IMAGE
    command: ["redis-server"]
    args: ["/etc/redis/redis.conf"]
    ports:
    - containerPort: 6379
      name: redis
    volumeMounts:
    - name: data
      mountPath: /data
    - name: redis-config
      mountPath: /etc/redis/
    - name: local-pv1
      mountPath: /storage/data1
    - name: local-pv2
      mountPath: /storage/data2
    - name: dynamic-pvc
      mountPath: /storage/data  # Adjust the mount path accordingly
EOF

while [ "$(kubectl get pod $NEW_POD_NAME -o jsonpath='{.status.phase}')" != "Running" ]; do
    echo "Waiting for the pod to be in the 'Running' state..."
    sleep 1
done

# Step 2: Copy the backup file into the new pod
kubectl cp checkpointw/$BACKUP_FILE $NEW_POD_NAME:$BACKUP_DEST_PATH

# Step 3: Access the new pod and restore the backup
kubectl exec $NEW_POD_NAME -- /bin/sh -c "cd /tmp && tar -xvf $BACKUP_DEST_PATH"

# Add additional steps if necessary for your Redis setup

# Step 4: Create a Persistent Volume Claim (PVC)
kubectl apply -f - <<EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: $PVC_NAME
spec:
  accessModes:
  - ReadWriteOnce
  storageClassName: local-storage  # Adjust the storage class accordingly
  resources:
    requests:
      storage: 100Mi  # Adjust the storage size accordingly
EOF

# Step 5: Bind the PVC to the pod
kubectl exec $NEW_POD_NAME -- /bin/sh -c "echo 'apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
spec:
  volumes:
  - name: dynamic-pvc
    persistentVolumeClaim:
      claimName: $PVC_NAME
' | kubectl apply -f -"