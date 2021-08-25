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

  }

}
