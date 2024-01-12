for ((i=1; i<=3; i++)); do
  for ((j=0; j<=12; j++)); do
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

for ((i=4; i<=4; i++)); do
  for ((j=0; j<=12; j++)); do
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

for ((i=8; i<=10; i++)); do
  for ((j=0; j<13; j++)); do
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
for ((i=11; i<=13; i++)); do
  for ((j=0; j<=14; j++)); do
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
for ((i=14; i<=16; i++)); do
  for ((j=0; j<=14; j++)); do
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
for ((i=17; i<=19; i++)); do
  for ((j=0; j<=13; j++)); do
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
for ((i=20; i<=21; i++)); do
  for ((j=0; j<=12; j++)); do
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
