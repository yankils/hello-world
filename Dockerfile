FROM tomcat:8

LABEL IMAGE=JAVAAPP

COPY ./webapp/target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]



