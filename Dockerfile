FROM tomcat:latest

MAINTAINER Monika

COPY ./webapp.war /usr/local/tomcat/webapps

