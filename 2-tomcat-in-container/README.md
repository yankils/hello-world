![image](/2-tomcat-in-container/cicd-flow-2.png)


Spin up a new EC2 instance as "dockerhost". Alternatively, can reuse the tomcat instance. Dockerhost needs to be on same subnet as Jenkins instance. Create a dockeradmin user and allow ssh via /etc/ssh/sshd_config

There are 3 different ways to create a custom Tomcat image.

Option 1: from the scratch - Use a centos container and install tar file

Option 2: Use a centos container, yum install and start tomcat systemctl service

Option 3: easiest - Deploy a tomcat container

### Option 1: Create Tomcat docker image from CentOS image
pull centos from dockerhub
install Java
create /opt/tomcat directory
change work directory to /opt/tomcat
download tomcat packages
extract tar.gz file
rename to tomcat directory
tell docker that it runs on port 8080
start tomcat services

#### Dockerfile
```
from centos:latest
# Update yum mirrors to vault.centos.org since CentOS 8 reached EndOfLife in 2021 Dec
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install java-17-openjdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.83.tar.gz
RUN mv apache-tomcat-9.0.83/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
```
Build the image and start the container
```
docker build -t mytomcat .
docker run -d --name tomcat -p 8090:8080 mytomcat
```

### Option 3: Use tomcat image
#### Dockerfile
```
from tomcat:latest
#WORKDIR /usr/local/tomcat # already included in base image
RUN cp -r webapps.dist/* webapps/
```

### Create a custom tomcat image
Copy the webapps directory from jenkinshost `/var/lib/jenkins/workspace/<jenkins-job-name>/` to dockerhost.
Refer Dockerfile. Should include `RUN cp ./*.war webapps/`

### Make Jenkins create a Docker image and deploy on Docker host (CD)
#### Add Dockerhost on Jenkins
- Install “Publish over ssh” plugin in Jenkins. Go to System > Configuration and add the server with key or password.
- Course recommends the password but let's use the SSH key for enhanced security. Create the SSH key for Jenkins from another machine, not dockerhost. Put the public key in dockerhost’s ~/.ssh/authorized_keys
- Go to Manage Jenkins > System > Publish over SSH section. Add the private key. Add a SSH host with dockerhost's private ip (such as 172.31.x.x) and dockeradmin user. 
#### Update Jenkins job
- Create /opt/docker in dockerhost and give ownership to dockeradmin user
- Place Dockerfile in `/opt/docker`
- Update Jenkins job’s post-build action > Remote directory to generate file to `//opt/docker`. Use double slashes otherwise the artifact gets copied to dockeradmin’s home directory `/home/dockeradmin`.
- Update exec command. Enhancement: Added build number and cleanup to support the repeated builds
```
cd /opt/docker;
docker rm regapp -f;
docker build -t regapp:$BUILD_NUMBER .;
docker run -d --name regapp -p 8088:8080 regapp:$BUILD_NUMBER;
```

Now a git push will create the new Docker image locally and deploy a container.
