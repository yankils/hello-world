pipeline {
    /* insert Declarative Pipeline here */
  agent any

  tools{
   maven 'MAVEN_HOME'
  }
  stages{
    stage('Intialize'){
      steps {
        sh '''
          echo "PATH = ${PATH}"
          echo "M2_HOME = ${M2_HOME}"
          '''
     }
      
    }
    stage('Build') {
        steps {  
           sh 'mvn clean package'		
      }      
    }
    stage('Deploy-Tomcat'){
        steps{
            /*sshagent('tomcat'){ */
               /* sh 'sudo cp -r /var/lib/jenkins/workspace/Mave-Project/webapp/target/*.war /opt/apache-tomcat-9.0.52/webapps/'*/
            /*}*/
             sshagent(['deployer']) {
          sh 'sudo scp -o StrictHostKeyChecking=no target/webapp.war  ec2-user@65.0.92.55:/opt/apache-tomcat-9.0.52/webapps/'
          }
            
        }
    }         

  }

}
