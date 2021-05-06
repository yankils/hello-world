# Pull base image 
From nirmata/tomcat9-alpine-jre12-openj9

# Maintainer 
MAINTAINER "aravind" 
COPY ./webapp.war /usr/local/tomcat/webapps

