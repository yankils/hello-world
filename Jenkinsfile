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
               sshagent(['tomcat-new1']) {
    sh """
<<<<<<< HEAD
    scp -o StrictHostKeyChecking=no *.war ec2-user@3.138.105.110:/opt/tomcat/webapps/
=======
    scp -o StrictHostKeyChecking=no webapp.war ec2-user@3.138.105.110:/opt/tomcat/webapps/
>>>>>>> fc03afa0bdc6486f1b3b72b2f610b8d8984e69eb
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/shutdown.sh
    ssh ec2-user@3.138.105.110 /opt/tomcat/bin/startup.sh
    """
           }
} 
        }
    }
}
