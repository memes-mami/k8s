#!/bin/bash

for ((i=1; i<=11; i++)); do
  for ((j=0; j<=7; j++)); do
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

for ((i=12; i<=21; i++)); do
  for ((j=0; j<=7; j++)); do
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
