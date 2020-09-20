pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh 'echo "Build"'
      }
    }

    stage('Test') {
      steps {
        sh 'echo "Test"'
      }
    }

    stage('Deploy') {
      steps {
        sh 'echo "Deploy"'
      }
    }

  }
  environment {
    BUZZ_NAME = 'worker bee'
  }
}