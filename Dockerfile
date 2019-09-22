# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "awslogin7@gmail.com" 
COPY ./webapp.war /var/lib/tomcat/webapps
