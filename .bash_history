cd
bash contiaddzoo.sh
nano contiaddzoo.sh
bash contiaddzoo.sh
nano electres.py
nano predict.sh
nano predict.csv
tail -n +20 predict.csv > predict_new.csv
mv predict_new.csv predict.csv
nano predict.csv
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
Now we have to make a cgroup set to kublet to set cgroup driver to system
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
kubeadm token create --print-join-command
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
------------------------------------------------------------------
sudo nano /etc/crio/crio.conf
nano /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
kubectl drain worker5 --ignore-daemonsets
kubectl get no
sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo systemctl restart crio
kubectl get no
sudo nano /etc/kubernetes/manifests/kube-apiserver.yaml
sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo systemctl restart crio
curl -skv -X GET  "https://localhost:10250/pods"   --key /etc/kubernetes/pki/apiserver-kubelet-client.key   --cacert /etc/kubernetes/pki/ca.crt   --cert /etc/kubernetes/pki/apiserver-kubelet-client.crt
clea
cd
clear
kubectl top no
kubectl get no
ls
nano k8s
cd k8s
ls
cd
cp -r ./k8s/* .
ls
kubectl top no
ls
nano createn.sh
nano podz2.sh.sh
nano podz2.sh
nano contiadd.sh
ls | grep rand
nano randomadd.sh
bash access.sh
kubectl apply -f .
kubectl get po
kubectl apply -f pvc.yaml
bash access.sh
kubectl get po
ls
bash createn.sh > n1.yaml
kubectl apply -f n1.yaml
ls

kubectl apply -f pvr.yaml
kubectl get po
bash podz2.sh
rm predict.csv
nano predict.csv
clear
kubectl top no
bash podz2.sh
ls
ls | grep _s
ls | grep _e
ls | grep s
nano electres.py
nano restorese.sh
ls | grep .csv | grep s
rm timeelectres.csv 
nano restorese.sh
nano podrunse.csv
nano restorese.sh
nano electres.py
nano checktryse.sh
nano curl_s_e.csv
nano checkse.sh
ls | grep rest
python3 electrese.py
python3 electres.py
pip install pandas
python3 electres.py
nano predict.csv
python3 electres.py
kubectl top no
python3 electres.py
cd
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
yes | sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
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
cd
bash infinite.sh
clear
cd
ls
bash infinite.sh
cd
l
python3 electres.py
kubectl top no\
clear
kubectl top no
while {1..9} ; do echo hii; done
for { 1..19}; do
for {1..19}; do echo hiiiiiiiii; done
for i in {1..19}; do echo hiiiiiiiii; done
kubectl top no
kubectl ge po
kubectl get po
kubectl top no
kubectl get po 
kubectl delete pods -l app=zookeeper
kubectl get pods --no-headers=true | awk '/zookeeper/ {print $1}' | xargs kubectl delete pod
kubectl get pods --no-headers=true | awk '/zookeeper/ {print $1}' | xargs kubectl delete pod --grace-period=0 --force
kubectl get po
kubectl get pods --no-headers=true | awk '/acc/ {print $1}' | xargs kubectl delete pod --grace-period=0 --force
kubectl get po
ls
kubectl apply -f pvc.yaml
bash access.sh
nano pod-terminal.yam
nano pod-terminal.yaml
nano pod-template.yaml
kubectl apply -f pod-template.yaml
kubectl get po
nano predict.csv
nano electres.py
cat  electres.py
rm electres.py
cat  electres.py
nano electres.py
ls
kubectl top no
kubectl get po
kubectl top no
cd
kubectl get pods --no-headers=true | awk '/nginx/ {print $1}' | xargs kubectl delete pod
kubectl get pods --no-headers=true | awk '/nginx/ {print $1}' | xargs kubectl delete pod --grace-period=0 --force
cd
kubectl top no
nano contiaddzoo.sh
bash contiaddzoo.sh
nano contiaddzoo.sh
bash contiaddzoo.sh
cd
kubectl top no
l
nano podz2.sh
bash podz2.sh
kubectl top no
kubectl get po
l
nano checkne.sh
nano restorez.sh
nano checkne.sh
nano restorene.sh
nano checktryne.sh
cl4r
clear
nano electren.py
nano checktryne.sh
nano restorene.sh
ls | grep finding
nano finding_z_e_n.py
cat finding_z_e_n.py
kubectl top no
bash podz2.sh
bash access.sh
kubectl get po
kubectl top o
nano electres.py
ls
kubectl top no
nano electres.py
nano finding_s_e.py
nano electres.py
nano checktryse.sh
nano finding_s_e.py
nano checktryse.sh
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano pods_s_e.csv
python3 electres.py
ls
l | grep .csv
ls | grep .csv
nano electres.py
python3 electres.py
kubectl top no
python3 electres.py
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano electres.py
python3 electres.py
nano restorese.sh
nano checkse.sh
nano delete.py
python3 electres.py
bash access.sh
nano pod-template.yaml
bash access.sh
kubectl get po | grep accc
kubectl get po | grep acc
python3 electres.py
nano re.py
python3 re.py
tail -n +41 predict.csv > modified_predict.csv
nano  modified_predict.csv
nano  predict.csv
{ head -n 1 predict.csv && tail -n +41 predict.csv; } > modified_predict.csv
nano  predict.csv
nano  modified_predict.csv
rm predict.csv
mv modified_predict.csv predict.csv
python3 re.py
python3 electres.py
rm re.py
python3 electres.py
nano predict.csv
ls
nano migrations.csv
nano electres.py
nano predict.csv
kubectl top no
python3 electres.py
nano migrations.csv
nano electres.py
cd
kubectl top no
nano checkse,py
nano electrese.py
nano electres.py
nano restorese.sh
nano checkse.sh
kubectl top no
cd
bath infinite.sh
bash infinite.sh
cd
ls | grep me
rm node_metrics_trace.csv
bash metric.sh
cd
bash infinite.sh
kubectl top no
bash infinite.sh
cd
nano node_metric_trace.csv
nano node_metrics_trace.csv
cat node_metrics_trace.csv
cd
clear
ls
kubectl top no
ls
rm predict.csv
nano predict.csv
ls | grep .csv
rm podrun_s_e.csv restore_s_e.csv pods_s_e.csv curl_s_e.csv extract_s_e.csv
ls | grep _s
clear
python3 electres.py
nano predict.csv
cd
nano electres.py
cd
python3 electres.py
cd
bash infinte.sh
bash infinite.sh
cd
ls | grep .csv
nano podrun_s_e.csv
nano extract_s_e.csv
cd
nano electres.py
cd
ls
ls | grep _e
nano curl_n_e.csv
nano curl_s_e.csv
[A
nano curl_z_e.csv
nano extract_z_e.csv
nano extract_s_e.csv
nanp podrun_s_e.csv
nano podrun_s_e.csv
nano pods_e_z.csv
nano restore_z_e.csv
nano restore_s_e.csv
cd
kubectl top no
kubectl get po
bash  podz2.sh
kubectl top nokubec
kubectl top nok
cd
kubectl top no
bash infinte.sh
bash infinite.sh
cd
ls
kubectl get po
kubectl get pods --no-headers | awk '/new-zookeeper-podworker[0-9]+/ || /zookeeper-pod-worker[0-9]+/ {print $1}' | xargs kubectl delete pod
kubectl get po
cd
kubectl delete pod zookeeper-pod2-worker1 zookeeper-pod2-worker10 zookeeper-pod2-worker11 zookeeper-pod2-worker12 zookeeper-pod2-worker121 zookeeper-pod2-worker13 zookeeper-pod2-worker14 zookeeper-pod2-worker15 zookeeper-pod2-worker16 zookeeper-pod2-worker17 zookeeper-pod2-worker18 zookeeper-pod2-worker19 zookeeper-pod2-worker2 zookeeper-pod2-worker20 zookeeper-pod2-worker3 zookeeper-pod2-worker4 zookeeper-pod2-worker5 zookeeper-pod2-worker6 zookeeper-pod2-worker7 zookeeper-pod2-worker8 zookeeper-pod2-worker9
ls
nano pod2.yaml
nano podz2.sh
nano podz.sh
cat podz2.sh
nano podz3.sh
bash podz3.sh
kubectl top no
cd
bash infinte.sh
bash infinite.sh
cd
bash podz3.sh
kubectl top no
bash podz3.sh
kubectl top no
cd
bash infinite.sh
cd
sudo us
kubectl top no
cd
bash infinite.sh
cd
bash infinite.sh
cd
kubectl top no
kubectl get no
kubectl top no
python3 electres.py
nano pods_s_e.csv
python3 electres.py
cd
kubectl top no
python3 electres.py
cd
ls
bash contiaddzoo.sh
cd
bash infinite.sh
cd
ls
ls | grep _s
nano curl_s_e.csv
nano extract_s_e.csv
finding_s_e.py7nano 
nano finding_s_e.py
nano podrun_s_e.csv
nano pods_s_e.csv
cd
ls | grep _ s
ls | grep _s
nano pods_s_e.csv
nano restore_s_e.csv
nano curl_s_e.csv
cd
cd
ls
nano nano contimaster.sh
ls
kuebctl top no
kubectl top no
kubectl get po
kubectl get pods --no-headers=true | awk '{print $1}' | xargs kubectl delete pod --force --grace-period=0
kubectl top no
bash access.sh
kubectl top no
bash podz2.sh\
sudo su
cds
cd
bash infinte.sh
bash infinite.sh
cd
bash infinite.sh
kubectl top no
kubectl get po 
bash electren.sh
ls | grep ele
bash finalelectren.sh
ls
nano contimaster.sh
bash contimaster.sh
bash podz2.sh
bash contiaddzoolsh
bash contiaddzoo.sh
cd
cd
ls
nano metricz-m.csv
cd
kubectl top o
kubectl top no
bash podz2.sh
kubectl top no
cd
kubectl top no
nano restoreze.sh
nano bash1.sh
nano bash2.sh
bash bash1.sh
chmod +x bash2.sh
bash bash1.sh
nano bash2.sh
nano bash1.sh
nano bash2.sh
bash bash1.sh
nano bash1.sh
clear
kubectl top no
kubectl get po
bash access.sh
sl | grep congi
ls | grep conti
nano contimaster.sh
nano contimasterze.sh
nano bash1.sh
nano contimasterze.sh
nano bash1.sh
nano restoreze.sh
cat resotreze.sh
cat restoreze.sh
nano restoreze.sh
bash contiaddzoo.sh
cd
bash finalelectreze.sh
bash finalelectree.sh
bash finalelectrez.sh
cd
bash infinite.sh
ls
nano metricbah contiaddzoo.sh
bash contiaddzoo.sh
bash infinite.sh
bash finalelectrez.sh
nano electrez.py
nano checktryze.sh
nano checkze.sh
bash finalelectrez.sh
cd
kubectl tpo no
kubectl top no
cd
ls 
nano contimasterze.sh
bash access.sh
kubectl top no
cd
bash infinite.sh
cd
cd
kubectl top no
cd
bash infinite.sh
cd
kubectl top mno
kubectl top no
cd
cd
bash infininte.sh
bash infinite.sh
cd
nano checktryze.sh
nano checkze.sh
bash finalelectrez.sh
bash podz2.sh
cd
bash infinite.sh
cd
kubectl top no
bash access.sh
bash contiaddzoo.sh
cd
ssh -T git@github.com
eval "$(ssh-agent -s)"
nano restoreze.sh
nano restorene.sh
nano checbe.sh
nano checkne.sh
nano resotrene.sh
nano restorene.sh
s
ls
nano  metricz-m.csv
cd
eval "$(ssh-agent -s)"
cd
ssh -T git@github.com
ssh -T git@github.comssh -T git@github.com
ssh -T git@github.com
git clone git@github.com:memes-mami/k8s.git
git checkout -b master11
git add .
git commit -m "Add files to master4 branch"
git push origin master11
git clone git@github.com:memes-mami/k8s.git
git checkout -b master11
git add .
git commit -m "Add files to master4 branch"
git push origin master11
git init
git add .
git commit -m "Add files to master4 branch"
git checkout -b master11
git push origin master11
git clone git@github.com:memes-mami/k8s.git
git checkout -b master11
git add .
git commit -m "Add files to master4 branch"
git push origin master11
git remote -v
ssh -T git@github.com
git init
git remote -v
git clone git@github.com:memes-mami/k8s.git
git checkout -b master11
git add .
git commit -m "Add files to master4 branch"
git push origin master11
git clone git@github.com:memes-mami/k8s.git
ls
rm k8s
rm -rf k8s
git init
git remote -v
git clone git@github.com:memes-mami/k8s.git
git checkout -b master11
git add .
git commit -m "Add files to master4 branch"
git push origin master11
