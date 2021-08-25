pipeline {
    /* insert Declarative Pipeline here */
  agent any

  tools{
   maven 'Maven'
  }
  stages{
    stage('Intialize'){
      steps {
        sh ...
               echo "PATH = ${PATH}"
               echo "M2_HOME = ${M2_HOME}"
           ...
     }
      
    }
    stage('Build') {
      sh 'mvn clean package'		
    }

  }

}
