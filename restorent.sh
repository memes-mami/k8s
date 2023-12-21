#!/bin/bash
# Check if worker node argument is provided
if [ -z "$1" ]; then
    echo "Error: Worker node name not provided."
    exit 1
fi

# Define variables
WORKER_NODE="$1"
NEW_POD_NAME="new-nginx-pod-$(date +%Y%m%d%H%M%S)"
NGINX_IMAGE="nginx"  # Replace with your Nginx image and tag
BACKUP_FILE="new_filename.tar"
BACKUP_DEST_PATH="/tmp/$BACKUP_FILE"

# Step 1: Create a new Nginx pod on the specified worker node
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: $NEW_POD_NAME
  labels:
    app: nginx
spec:
  containers:
  - name: nginx
    image: $NGINX_IMAGE
    ports:
    - containerPort: 80
  nodeSelector:
    kubernetes.io/hostname: $WORKER_NODE

EOF
start_time=$(date +%s.%N)

while [ "$(kubectl get pod $NEW_POD_NAME -o jsonpath='{.status.phase}')" != "Running" ]; do
    echo "Waiting for the pod to be in the 'Running' state..."
    sleep 1
done

end_time=$(date +%s.%N)

# Calculate the time taken for the pod to be in the 'Running' state
execution_time=$(echo "$end_time - $start_time" | bc)

echo "Pod '$NEW_POD_NAME' is now in the 'Running' state."
echo "Time taken for the pod to be in the 'Running' state: $execution_time seconds"

# Append the execution time to a CSV file
# Append the execution time and pod name to a CSV file
echo "$NEW_POD_NAME,$execution_time" >> pod_time_n_t.csv



# Step 2: Copy the backup file into the new pod
kubectl cp checkpointw/$BACKUP_FILE $NEW_POD_NAME:$BACKUP_DEST_PATH
start_time2=$(date +%s.%N)
# Step 3: Access the new pod and restore the backup
kubectl exec $NEW_POD_NAME -- /bin/bash -c "cd /tmp && tar -xvf $BACKUP_DEST_PATH"
end_time2=$(date +%s.%N)
execution_time2=$(echo "$end_time - $start_time" | bc)
echo "$NEW_POD_NAME,$execution_time2" >> extract_n_t.csv

echo "Nginx pod '$NEW_POD_NAME' created and restored from backup."
