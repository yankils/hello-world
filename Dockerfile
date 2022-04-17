FROM tomcat:7.0.82-jre8
RUN apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat
COPY /app.war /usr/local/tomcat/webapps/app.war
RUN apt-get update && apt-get install -y dos2unix
EXPOSE 8080
COPY tomcat-users.xml /usr/local/tomcat/conf/
