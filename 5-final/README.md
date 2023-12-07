As final step, we will update Jenkins job to create a k8s deployment on EKS cluster.

Lecture introduces k8s bootstrap server, I used ansiblehost instead.

## install kubectl and eksctl on ansiblehost
```
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.28.3/2023-11-14/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
sudo mv /tmp/eksctl /usr/local/bin
```
## Configure eksctl and kubectl
```
aws configure # put in access keys
# awscli gave an error from SSL self-signed cert. Declare a env var to avoid
export AWS_CA_BUNDLE=/usr/local/etc/ca-certificates/cert.pem
aws eks list-clusters # verify
eksctl get cluster # verify
# generate kubeconfig for kubectl
aws eks update-kubeconfig --region ap-southeast-1 --name jiwon-eks
kubectl get pod # verify
```
## Ansible playbook to deploy k8s pods
- Place `/opt/docker/regapp-deployment.yaml`
- Create Ansible playbook regapp_deploy_eks.yml
- Update Jenkins job to run new playbook and test the build!
