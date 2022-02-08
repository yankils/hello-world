 <h1>My First DevOps Job using  Jenkins Pipeline with Docker</h1>
 <h2>Deploying on Docker container using Jenkins Pipeline</h2>

<h3>Modified Docker file to deploy app on tomcat server root</h3>
<h3>All is well, even inside well!</h3>
<code>
 FROM tomcat:latest

MAINTAINER Abiodun Sam

#RUN cd /usr/local/tomcat/
#RUN mv webapps webapps2
#RUN mv webapps.dist/ webapps

COPY ./ROOT.war /usr/local/tomcat/webapps

 </code>
