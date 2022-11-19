FROM tomcat:latest
COPY webapp/target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
# USER jenkins
# ADD [--chown=jenkins:docker]
# RUN   newgrp docker
