FROM ubuntu   
RUN mkdir /opt/tomcat/
RUN apt-get update -y
RUN apt-get install curl -y
WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz
RUN tar xzvf apache*.tar.gz
RUN mv apache-tomcat-9.0.60/* /opt/tomcat/.
RUN apt install openjdk-8-jdk -y
RUN  java -version
WORKDIR /opt/tomcat/webapps
RUN apt-get install git -y
RUN git clone https://github.com/satishNunakana/html-website.git
EXPOSE 2022
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
