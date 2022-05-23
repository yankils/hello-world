FROM tomcat:jre8-temurin-focal
COPY target/devops*.war /usr/local/tomcat/webapps/devops.war


