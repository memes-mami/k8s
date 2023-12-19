cd
ls nano electren.py
ls nano electrez.py
ls nano electren.py
OS="xUbuntu_20.04"
VERSION=1.27
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/$OS/ /" > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
echo "deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable:/cri-o:/$VERSION/$OS/ /" > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable:cri-o:$VERSION.list
curl -L https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable:cri-o:$VERSION/$OS/Release.key | apt-key add -
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/$OS/Release.key | apt-key add -
# Install CRI-O
sudo apt update
yes | sudo apt install cri-o cri-o-runc
# Update CRI-O CIDR subnet
sudo sed -i 's/10.85.0.0/172.24.0.0/g' /etc/cni/net.d/100-crio-bridge.conf
sudo sed -i 's/10.85.0.0/172.24.0.0/g' /etc/cni/net.d/100-crio-bridge.conflist
# Start and enable Service
sudo systemctl daemon-reload
sudo systemctl restart crio
sudo systemctl enable crio
---------------------------
Error 1 (its better if we run it early to escape the error
for code :  kubectl edit cm kubelet-config -n kube-system
error: 
/usr/local/bin/kubectl: line 2: syntax error near unexpected token `<'
/usr/local/bin/kubectl: line 2: `<html><head>'
Do 
sudo rm /usr/local/bin/kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
---------------------------------------------------------------------------------------------------------------
sudo  cp kube.yaml /etc/kubernetes/kubelet
-------------------------------------------------------------------------------------
then check kubelet running status by 
sudo systemctl daemon-reload
systemctl restart kubelet
systemctl stop kubelet
systemctl enable kubelet
systemctl start kubelet
systemctl restart kubelet
yes | sudo kubeadm config images pull --cri-socket unix:///var/run/crio/crio.sock
sudo sysctl -p
sudo kubeadm init   --cri-socket unix:///var/run/crio/crio.sock
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
Alternatively, if you are the root user, you can run:
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
----------------
TO CHECK CLUSTER STATUS 
kubectl cluster-info
---------------------------------------------------------------------------------------------------------
the next configuration is needed for k8s cluster 
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/tigera-operator.yaml
------------------------------------------------------------------------------------------
Next download the custom resources necessary to configure Calico:
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/custom-resources.yaml -O
--------------------------------------------------------------------------------------------
Create the manifest in order to install Calico:
kubectl create -f custom-resources.yaml
Untaint the node: (needed or else the pods wont run) 
kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl taint nodes --all  node-role.kubernetes.io/control-plane-
configure calcio to work ( as coredns pods don’t run at first time) 
kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.ymlserviceaccount/flannel
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-
kubectl create -f custom-resources.yaml
kubectl apply -f https://github.com/jetstack/cert-manager/releases/latest/download/cert-manager.crds.yaml
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/custom-resources.yaml -O
Create the manifest in order to install Calico:
kubectl create -f custom-resources.yaml
kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.ymlserviceaccount/flannel
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-
kubectl create -f custom-resources.yaml
curl -LO https://raw.githubusercontent.com/memes-mami/k8s/main/components.yaml
kubectl apply -f components.yaml
------------------------------------------------------------------------------------------------
kubeadm token create --print-join-command # (used to connect worker nodes)
sudo sysctl -p
sudo kubeadm init   --cri-socket unix:///var/run/crio/crio.sock
kubectl get no
kubeadm token create --print-join-command # (used to connect worker nodes)
kubectl get no
sudo apt-get update
yes | sudo apt-get install libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf libnl-3-dev libcap-dev libaio-dev libnet-dev
yes | sudo apt install libprotobuf-dev protobuf-c-compiler protobuf-compiler python-protobuf libnl-3-dev libcap-dev libaio-dev libnet-dev libprotobuf-c-dev
yes | sudo apt install gcc
yes | sudo apt-get install libdrm-dev libdrm-amdgpu1
yes | sudo apt-get install libgnutls28-dev
yes | sudo apt-get install libnftables-dev
yes | sudo apt install pkg-config libbsd-dev asciidoc
git clone https://github.com/checkpoint-restore/criu.git
yes | sudo apt install python3-pip
yes | sudo pip3 install protobuf
sudo pip3 install psutil
pip install redis
pip install kubernetes
pip install /root/criu/crit
pip install wheel
pip install build
pip install numpy
sudo apt update
apt-get update
yes | sudo apt install buildah
make
sudo make install
sudo sed -i 's|# enable_criu_support = false|enable_criu_support = true\ndrop_infra_ctr=false\nenable_Checkpoint=true|' /etc/crio/crio.conf
sudo sed -i 's|# Enable/disable the generation of the container,|# Enable/disable the generation of the container,|' /etc/crio/crio.conf
sudo systemctl restart crio
nano /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo nano /etc/kubernetes/manifests/kube-apiserver.yaml
nano /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo systemctl daemon-reload
sudo systemctl restart kubelet
systemctl status kubelet  #check is kubelet is running or not
clear
ls
cd
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
----------------
TO CHECK CLUSTER STATUS 
kubectl cluster-info
---------------------------------------------------------------------------------------------------------
the next configuration is needed for k8s cluster 
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/tigera-operator.yaml
------------------------------------------------------------------------------------------
Next download the custom resources necessary to configure Calico:
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/custom-resources.yaml -O
--------------------------------------------------------------------------------------------
Create the manifest in order to install Calico:
kubectl create -f custom-resources.yaml
Untaint the node: (needed or else the pods wont run) 
kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl taint nodes --all  node-role.kubernetes.io/control-plane-
configure calcio to work ( as coredns pods don’t run at first time) 
kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.ymlserviceaccount/flannel
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-
kubectl create -f custom-resources.yaml
kubectl apply -f https://github.com/jetstack/cert-manager/releases/latest/download/cert-manager.crds.yaml
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/custom-resources.yaml -O
Create the manifest in order to install Calico:
kubectl create -f custom-resources.yaml
kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.ymlserviceaccount/flannel
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-
kubectl create -f custom-resources.yaml
curl -LO https://raw.githubusercontent.com/memes-mami/k8s/main/components.yaml
kubectl apply -f components.yaml
------------------------------------
kubectl top no
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
apt install xclip
apt install jq
pip install pandas
pip install subproccess
pip install kubernetes
pip install csv
xclip -sel clip < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com
git clone https://github.com/memes-mami/k8s.git
ls
cd k8s
ls
cd
# Clone the repository and checkout the master branch
git clone -b master https://github.com/memes-mami/k8s.git
rm -rf k8s
# Clone the repository and checkout the master branch
git clone -b master https://github.com/memes-mami/k8s.git
ls
nano k8s
cd k8s
ls
curl -skv -X GET  "https://localhost:10250/pods"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
clear
cd
curl -skv -X GET  "https://localhost:10250/pods"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
curl -skv -X GET  "https://localhost:10250/pods"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
clear
# Download the master branch as a zip file
wget -O k8s-master.zip https://github.com/memes-mami/k8s/archive/refs/heads/master.zip
# Unzip the downloaded file
unzip k8s-master.zip
# Navigate into the extracted directory
cd k8s-master
ls
cd
ls
# Copy all files from the k8s folder to the current folder
cp -r k8s/* .
;s
ls
rm -rf k8s
ls
rm -rf k8s-master.zip
rm -rf k8s-master
ls
kubectl apply -f .
kubectl get po -o wide
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
kubectl tget po -o wide
kubectl get po -o wide
kubectl top no
kubectl apply -f components.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
kubectl top no
kubectl get po -o wide
bash finalelectren.sh
[Als
ls
bash access.sh
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
bash access.sh
ls
nano c.sh
bash finalelectre.sh
bash finalelectren.sh
nano finalelectren.sh
nano electren.sh
nano electren.py
bash finalelectren.sh
nano electren.py
bash finalelectren.sh
nano electren.py
bash finalelectren.sh
bash finalelectrez.sh
nano electrez.py
nano topsisz.py
nano topsisn.py
nano topsisz.py
nano topsisn.py
nano topsisz.py
bash finaltopsisz.sh
kubectl get po -o wide | grep worker1
bash finaltopsisn.sh
nano normaln.py
bash finalnormaln.sh
ls
nano vikorn.py
bash finalvikorn.sh
nano finalvikorn.sh
nano finalnormaln.sh
nano finalnormalz.sh
python3 normaln.sh
python3 normaln.py
bash metrics.sh
ls
bash metric.sh
python3 normaln.py
yes | sudo apt update && sudo apt -y full-upgrade
snap install helm  --classic
yes | apt install rpm
snap install jq 
yes | apt install git
yes | sudo apt-get install telnet
yes | sudo apt -y install curl apt-transport-https
yes| curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
--------------------------------------------------------------------------------------------------
Install kubelet, kubeadm and kubectl
sudo apt -y install curl apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo  snap install kubectx --classic
sudo apt update
sudo apt install -y curl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/relsudo ease/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update
yes | sudo apt install -y kubelet
kubelet --version
sudo systemctl enable kubelet
sudo systemctl start kubelet
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update
yes | sudo apt install -y kubeadm
kubeadm version
sudo apt-mark hold kubelet kubeadm kubectl
--------------------------------------------------------------------------------------------------
Step 3: Disable Swap (run seerately each line in group) 
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo swapoff -a
sudo mount -a
free -h
Enable kernel modules and configure sysctl.
# Enable kernel modules
sudo modprobe overlay
sudo modprobe br_netfilter
# Add some settings to sysctl
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

# Reload sysctl
sudo sysctl --system
-----------------------------------------------
Step 4: Install Container runtime
FOR DOCKER
# Add repo and Install packages
sudo apt update
yes | sudo apt install -y77 curl gnupg2 software-properties-common apt-transport-https ca-certificates
yes | curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
yes | sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
yes | sudo apt install -y containerd.io docker-ce docker-ce-cli
# Create required directories
sudo mkdir -p /etc/systemd/system/docker.service.d
# Create daemon json config file
sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

# Start and enable Services
sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo systemctl enable docker
-------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
FOR CRI-O 
# Ensure you load modules
sudo modprobe overlay
sudo modprobe br_netfilter
# Set up required sysctl params
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

# Reload sysctl
sudo sysctl --system
# Add Cri-o repo
sudo su -
