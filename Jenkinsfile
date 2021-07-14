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
        //         sh "mv *.war webapp.war"
        //     }
        // }
        stage("deploy-dev"){
           steps{
               sshagent(['']) {
    sh """
    scp -o StrictHostKeyChecking=no webapp.war ec2-user@3.138.105.110:/opt/tomcat/webapps/
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/shutdown.sh
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/startup.sh
    """
           }
} 
        }
    }
}