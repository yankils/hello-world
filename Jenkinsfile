pipeline {
    agent any
environment{
    PATH= "/opt/maven/bin:$PATH"
}
    stages{
        stage("Git Checkout"){
            steps{
                git credentialsId:'github', url:'https://github.com/MonikaTrajkovska/hello-world.git'
            }
        }
        // stage("Maven Build"){
        //     steps{
        //         sh "mvn clean package"
        //         sh "mv target/*.war target/webapp.war"
        //     }
        // }
        stage("deploy-dev"){
           steps{
               sshagent(['tomcat-new']) {
    sh """
    scp -o StrictHostKeyChecking=no target/webapp.war ec2-user@3.138.105.110:/opt/tomcat/webapps/
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/shutdown.sh
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/startup.sh
    """
           }
} 
        }
    }
}