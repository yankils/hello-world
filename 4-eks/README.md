Create a AWS EKS cluster and deploy the tomcat as k8s pods.

## Install AWS CLI, eksctl, and kubectl
Lecture created a bootstrap server and I just used Mac.
- Create a user from AWS console and give IAM policies to run eksctl
https://eksctl.io/usage/minimum-iam-policies/
```
brew install awscli
brew install eksctl
# awscli gave an error from SSL self-signed cert. Declare a env var to bypass
export AWS_CA_BUNDLE=/usr/local/etc/ca-certificates/cert.pem
aws configure # put in access keys
aws eks list-clusters # to verify
eksctl get cluster # to verify
```

## Create a EKS cluster
```
eksctl create cluster --name jiwon-eks  \
--region ap-southeast-1 \
--node-type t2.small \
--nodes-min 2 \
--nodes-max 3
```
To delete the cluster `eksctl delete cluster jiwon-eks --region ap-southeast-1`

## Create a k8s deployment and expose it via LoadBalancer
```
kubectl create -f regapp-deployment.yaml
kubectl expose deployment regapp --type=LoadBalancer
```
Once LB is created, wait a minute and open the tomcat using ELB address. Such as http://a88189294000f4edd95cbad63c5d0bbe-1937471911.ap-southeast-1.elb.amazonaws.com:8080/webapp
