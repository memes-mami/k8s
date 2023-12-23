for ((i=6; i<=7; i++)); do
  for ((j=0; j<=30; j++)); do
    cat <<EOF
---
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod-worker${i}-${j}
  labels:
    app: nginx
spec:
  nodeName: worker${i}
  containers:
    - name: nginx-container
      image: nginx:latest
EOF
  done
done
