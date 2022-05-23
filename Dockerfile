FROM tomcat:latest
RUN docker exec -it  mydevopsContainer bash
COPY /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps


