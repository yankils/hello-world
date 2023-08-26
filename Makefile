start-servers:
	aws ec2 start-instances --instance-id i-070cfa2385792f874
	aws ec2 start-instances --instance-id i-0d3d5088580ac59e3

stop-servers:
	aws ec2 stop-instances --instance-id i-070cfa2385792f874
	aws ec2 stop-instances --instance-id i-0d3d5088580ac59e3

tomcat:
	ssh -i /Users/dhanushdinesh/Downloads/DevOpsProjectKey.pem ec2-user@54.209.127.2
# start tomcat /opt/tomcat/bin/startup.sh
# stop tomcat /opt/tomcat/bin/shutdown.sh

jenkins:
	ssh -i /Users/dhanushdinesh/Downloads/DevOpsProjectKey.pem ec2-user@54.146.54.35	
# start Jenkins service jenkins start
# stop Jenkins service jenkins stop
# Get passwork cat var/lib/jenkisn/secrets/initialAdminPassword -> 043e9c0354fa4818959763b474fac72d

.PHONY: start-servers stop-servers tomcat jenkins