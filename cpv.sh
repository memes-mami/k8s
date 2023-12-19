#!/bin/bash

cat <<EOF > pvr.yaml
apiVersion: v1
kind: List
items:
EOF

for i in {1..39}
do
cat <<EOF >> pvr.yaml
- apiVersion: v1
  kind: PersistentVolume
  metadata:
    name: local-pv$i
  spec:
    storageClassName: local-storage
    capacity:
      storage: 100Mi
    accessModes:
      - ReadWriteOnce
    hostPath:
      path: "/storage/data$i"
EOF
done
