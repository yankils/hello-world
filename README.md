## Learn CI/CD with Jenkins
Documenting the learning journey. Took the reference from a course and added my own enhancements and experiments.

Reference Course:
[DevOps Project - CI/CD with Jenkins Ansible Docker Kubernetes)](https://www.udemy.com/course/valaxy-devops/?referralCode=8147A5CF4C8C7D9E253F)

Once completed, once a code commit is pushed to Github, Jenkins is triggered to build a Java webapp using Maven. Jenkins job uses Ansible to create a new tomcat container image and pushes it to Dockerhub. In the end, this is deployed on AWS EKS cluster and becomes accessible via a LoadBalancer.
This uses 3 EC2 instances and 1 EKS cluster.

### 1. Setup Jenkins and Maven. Build a Java project w Github code
### 2. Deploy on Tomcat in VM. Automate CI using Github webhook
### 3. Deploy on Tomcat in container. Automate CD using Docker
### 4. Using Ansible, push new image to Dockerhub and deploy a custom tomcat container
### 5. Create EKS cluster. Create k8s Deployment and expose it via LoadBalancer
### 6. Full integration
