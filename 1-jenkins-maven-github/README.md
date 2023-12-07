Objective 1: Make Jenkins to read a public repo from Github. Manually trigger a build using Maven and deploy to a Tomcat server. Jenkins should have Tomcat’s role and credential

Objective 2: Configure Github webhook. Make a commit from the local machine to origin repo, to make Github send webhook for Jenkins for CI. Check if Tomcat runs an updated webapp.

# Steps
1. Spin up an EC2 instance and install Jenkins and Maven. Make sure security group opens port 8080 for Jenkins.
2. Spin up another EC2 instance on the same subnet and install Tomcat. Update Tomcat port to 8090 (following best practice of using the port number for single use case) and allow same port number in SG.
3. Add users and roles to Tomcat. Pick a deployer user and add its credential to Jenkins.
4. Add Post-build Action on Jenkins. Add a Tomcat 9.x container with Tomcat URL, credential. Can use Tomcat’s private IP instead of constantly-changing elastic IP.
5. Trigger a build from Jenkins and see if http://\<tomcat-public-ip\>:8090/webapp/ shows the app.

### Enhancement for CI
Course uses Jenkins' SCM poll to pull the code every minute but this is not efficient. I used Github webhook instead, which triggers Jenkins job on every code push to Github.
- Enable Build Triggers > “GitHub hook trigger for GITScm polling” from Jenkins
- Add a Github webhook, with URL http://\<jenkins-public-ip\>:8080/github-webhook/ and update to JSON.
- Make a commit from the local machine and push to origin. Confirm the webapp is updated.
