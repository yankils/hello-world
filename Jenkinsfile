pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh './jenkins/build.sh'
      }
    }

    stage('Buzz test') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }

  }
}