pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh 'echo "I am a ${BUZZ_NAME}"'
      }
    }

    stage('Buzz test') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }

  }
  environment {
    BUZZ_NAME = 'worker bee'
  }
}