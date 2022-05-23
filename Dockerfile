FROM tomcat:latest
RUN  cp -R /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY  . devops /usr/local/tomcat/webapps


