pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh 'echo "I am a ${BUZZ_NAME}"'
      }
    }

    stage('Buzz test') {
      parallel {
        stage('Testing A') {
          steps {
            sh 'echo "Test"'
          }
        }

        stage('Testing B') {
          steps {
            sh '''sleep 10





echo done'''
          }
        }

      }
    }

  }
  environment {
    BUZZ_NAME = 'worker bee'
  }
}