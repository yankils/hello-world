FROM tomcat
COPY target/tomcatdemoapp.war /usr/local/tomcat/webapps

WORKDIR /usr/local/tomcat
CMD catalina.sh run