## Learn CI/CD with Jenkins
![image](/cicd-flow-final.png)

Documenting the learning journey. Took the reference from a course and added my own enhancements and experiments.

#### Reference Course: [DevOps Project - CI/CD with Jenkins Ansible Docker Kubernetes](https://www.udemy.com/course/valaxy-devops/?referralCode=8147A5CF4C8C7D9E253F)

Once completed, once a code commit is pushed to Github, Jenkins is triggered to build a Java webapp using Maven. Jenkins job uses Ansible to create a new tomcat container image and pushes it to Dockerhub. In the end, this is deployed on AWS EKS cluster and becomes accessible via a LoadBalancer.
This uses 3 EC2 instances and 1 EKS cluster.

### 1. Setup Jenkins, Maven, Tomcat in 2 VMs. Let Jenkins build a Java project w Github code. Deploy on Tomcat in VM
### 2. Create a Docker image and deploy tomcat as a container. Automate CD using Docker
### 3. Using Ansible, push the new image to Dockerhub and deploy a container
### 4. Create EKS cluster. Deploy as k8s Deployment and expose via LoadBalancer to access
### 5. Full CI/CD
