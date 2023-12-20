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
clear
cd
ls
bash finalnormaln.sh
cd
kubectl get po 
kubectl get deployments
kubectl get replicationconroller
kubectl get replicationcontroller
kubect delete replicationcontroller kafka1 zookeeper-worker15 zookeeper-worker16 zookeeper-worker17
kubectl delete replicationcontroller kafka1 zookeeper-worker15 zookeeper-worker16 zookeeper-worker17
kubectl get po -o wide | grep zook
2 5 11 15 16 17 18 
ls
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
---------sudo systemctl daemon-reload
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
nano timeelectren.csv
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
v
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
kubectl appl y -f components.yaml
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
---------kubectl delete pods new-nginx-podworker7 new-nginx-podworker9 new-zookeeper-podworker11 new-zookeeper-podworker19 new-zookeeper-podworker4 new-zookeeper-podworker6 new-zookeeper-podworker7 new-zookeeper-podworker8 new-zookeeper-podworker9
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
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
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
kubectl aplpy -f components.yaml
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
kubectl apply -f components.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
apiVersion: v1
kind: ReplicationController
metadata:
spec:
---
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
kubectl apply -f components.aml
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
kubectl apply -f components.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
nano timevikorz.csv
nano timevikorn.csv
nano timevikorz.csv
nano timevikorn.csv
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
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
kubectl top no
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl top no
nano timevikorz.csv
nano timevikorn.csv
kubectl top no
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
nano timenormalz.csv
---------
nano timenormalz.csv
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
cd
ls
bash finalelectren.sh
nano checkz.py
nano checkz.sh
bash finalelectrez.sh
kubectl get po 
kubectl delete pods new-nginx-podworker7 new-nginx-podworker9 new-zookeeper-podworker11 new-zookeeper-podworker19 new-zookeeper-podworker4 new-zookeeper-podworker6 new-zookeeper-podworker7 new-zookeeper-podworker8 new-zookeeper-podworker9
nano timetopsisn.csv
nano timetopsisz.csv
nano timeelectrz.csv
nano timeelectrez.csv
nano checkz.sh
bash finalvikorn.sh
bash finalnormalz.sh
nano normalz.py
bash finalnormalz.sh
nano normalz.py
bash finalnormalz.sh
cd
ls
git add .
git init
git add .
git commit -m "Add new_file.txt and make changes"
git push origin master
git remote add origin git@github.com:memes-mami/k8s.git
git push origin master
ssh-add ~/.ssh/id_rsa
git fetch origin
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
# Stage changes
git add .
# Commit changes
git commit -m "Your commit message"
# Fetch changes from the remote repository
git fetch origin
# Merge the changes into your local branch (master)
git merge origin/master
# Resolve any merge conflicts if necessary
# After resolving conflicts, continue the merge with:
git merge --continue
# Now, push your changes to the remote repository
git push origin master
# Fetch changes from the remote repository
git fetch origin
# Merge the changes into your local branch (master)
git merge origin/master
# Pull the latest changes from GitHub and rebase your local changes
git pull origin master --rebase
# Push your changes to the remote repository (force push)
git push origin master --force
ls
clear
ls
nano zoo1.yaml
nano zoo17.yaml
kubectl apply -f zoo17.yaml
kubectl top no
nano testelectrez.csv
nano testelectren.csv
nano electrez.py
nano timeelectrez.csv
kubecctl top no
kubectl top no
nano timeelectrez.csv
kubectl top no
kubectl apply -f components.yaml
bash finaltopsisn.sh
bash finaltopsisz.sh
kubectl get po 
kubectl get statefulset
kubectl delete statefulset redis
kubectl top no
nano zoo17.yaml
kubectl apply -f zoo17.yaml
nano timeelectrez.csv
nano timetopsisz.csv
clear
nano timeelectren.csv
nano timetopsisn.csv
kubectl get po -o wide | grep worker1
bash finaltopsisz.sh
bash finalvikorz.sh
nano vikorz.py
bash finalvikorz.sh
bash finalelectrez.sh
ls
nano timeelectrez.csv
cd
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
kubectl top m
kubectl top no
cd
ls
ls | grep test
ls | grep time
nano timeelectrez.py
nano timeelectrez.csv
cat timeelectrez.csv
cat timeelectren.csv
cat timetopsisn.csv
cat timetopsisz.csv
cat timevikorz.csv
cat timevikorn.csv
cat timenormaln.csv
cat timenormalz.csv
bash finalnormaln.sh
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
bash finalnormaln.sh
nano timenormaln.sh
nano timenormaln.csv
nano timenormalz.csv
cc
cd
ls
git clone git@github.com:memes-mami/k8s.git
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com
git clone git@github.com:memes-mami/k8s.git
git push origin master2
git checkout -b master2
# Make changes to your files
git add .
git commit -m "Your commit message"
v
git push origin master2
cd
ls
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
nano electren.py
nano t.py
nano t2.py
python3 t2.py
nano t2.py
python3 t2.py
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
clear
nano electren.sh
nano electren.py
ls
kubectl apply -f tn.yaml
kubectl get po | grep nginx-pod
nano electren.sh
nano electren.py
nano delete.py
bash finalelectren.sh
ls
nano multi-node-pods.yaml
nano createn.sh
./createn.sh >  multi-node-pods.yaml
kubectl apply -f  multi-node-pods.yaml 
bash finalelectren.sh
kubectl get po -o wide | grep worker1
bash finalelectren.sh
nano multi-node-pods.yaml
nano createn.sh
nano electren.sh
nano electren.py
nano createn.sh
./createn.sh >  multi-node-pods.yaml
kubectl apply -f  multi-node-pods.yaml 
kubectl get po
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------
kubectl get po
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
cd
ls
kubectl get daemon set
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
kubectl get daemonset
kubectl delete daemonset nginx-daemonset1 2nginx-daemonset1
kubectl delete daemonset nginx-daemonset2
ls
ls | grep .yaml
nano sc.yaml
nano nd.yaml
kubectl get deployments
kubectl delete deployment nginx-deployment
kubectl get replicationcontroller
kubectl delete replicationcontroller zookeeper2
nano test.yaml
kubectl apply -f test.yaml
kubectl get po | grep nginx
kubectl delete po nginx-replicaset-nwr5r
kubectl get po | grep nginx
nano ns.yaml
kubecctl apply -f ns.yaml
kubectl apply -f ns.yaml
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-replicaset-z6mnr/zookeeper"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-replicaset-z6mnr/zookeeper"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-replicaset-z6mnr/nginx"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-replicaset-z6mnr/nginx-container"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
clear
ls
nano tn.yaml
kubectl apply -f tn.yaml
kubectl get po | grep nginx
kubectl delete po nginx-pod
kubectl get po | grep nginx
kubectl  top no
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
kubectl top no
kubectl get po 
kubectl delete pods my-single-pod     new-nginx-podworker1     new-nginx-podworker20     new-nginx-podworker7     new-nginx-podworker9     new-zookeeper-podworker1     new-zookeeper-podworker10     new-zookeeper-podworker12     new-zookeeper-podworker16     new-zookeeper-podworker19     new-zookeeper-podworker2     new-zookeeper-podworker4     new-zookeeper-podworker6     new-zookeeper-podworker7     new-zookeeper-podworker8     new-zookeeper-podworker9
kubectl top no
nano w6n.yaml
kubectl apply -f w6n.yaml
nano w6n.yaml
kubectl top no
nano w6n.yaml
kubectl top no
nano createn.sh
bash createn.sh
ls
bash createn.shclear
clear
chmod +x createn.sh
./createn.sh > multi-node-pods.yaml
kubectl apply -f multi-node-pods.yaml
ls
nano checktry.sh
nano electren.sh
nano electren.py
nano delete.py
kubectl get po 
kubectl top no
kubectl top nols
ls
python3 delete.py
python3 delete.py nginx-pod2
nano electren.py
kubectl get po  -o wide
kubectl get no
kubectl get no -o wide
curl -sk -X POST  "https://17.0.0.5:10250/checkpoint/default/nginx-pod-worker6-6/nginx-container"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
clear
kubectl apply -f multi-node-pods.yaml
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-pod2/nginx-container"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
curl -sk -X POST  "https://localhost:10250/checkpoint/default/nginx-pod2/nginx-container"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
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
kubectl apply -f components.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------kubectl top no
kubectl top no
bash finalelectren.sh
kubectl get po
kubectl get po | grep nginx-pod-worker
clear
cd
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
kubectl apply -f nginxn.yaml
kubectl get po
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
ssh -T git@github.com
git checkout -b master3
git add .
git commit -m "Add files to master3 branch"
git push origin master3
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
kubectl apply -f components.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
---------v
bash finalelectrez.sh
ssh -T git@github.com
git clone git@github.com:memes-mami/k8s.git
git checkout -b master3
git add .
git commit -m "Add files to master3 branch"
git push origin master3
cd
kubectl get po
kubectl top no
kubectl apply -f  multi-node-pods.yaml
kubectl get po
sudo systemctl daemon-reload
sudo systemctl restart kubelet
mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get po
kubectl apply -f  multi-node-pods.yaml
kubectl get po
nano createn.sh
./createn.sh > nginxn.yaml
kubectl get po
kubectl delete pods -l app=nginx
kubectl apply -f nginxn.yaml
kubectl get no
kubectl get po
kubectl get replicaset
kubectl delete nginx-replicaset
kubectl delete replicaset nginx-replicaset
ls
kubectl get po
bash finalelectrez.sh
bash finalelectren.sh
ls
nano electren.py
nano vikorn.py
nano normaln.py
nano topsisn.py

nano electrez.py.py
nano electrez.py
nano vikorz.py
nanonormalz.py
nano normalz.py
ls
nano zood.yaml
ls
nano createn.sh
nano restorez.sh
nano createz.sh
kubectl get po | grep zoo
kubectl delete pods -l app=zookeeper -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' | xargs -I {} kubectl delete pod {}
kubectl delete pods -l app=zookeeper
kubectl get po | grep zoo
bash createz.sh > zooz.yaml
nano zooz.yaml
kubectl apply -f zoos.yaml
kubectl apply -f zooz.yaml
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/your_private_key
cat ~/.ssh/your_public_key.pub
cat  ~/.ssh/your_private_key
ssh-add ~/.ssh/your_private_key
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/your_private_key
git clone git@github.com:memes-mami/k8s.git
git checkout -b master2
git .add
git add .
git commit -m "Add new "
git push origin master2
ssh-keygen -t rsa -b 4096 -C "vishnu107109@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
kubectl top no
