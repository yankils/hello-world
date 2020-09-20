pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh 'echo "Build"'
        archiveArtifacts(artifacts: 'target/*.jar', fingerprint: true)
      }
    }

    stage('Test') {
      steps {
        sh 'echo "Test"'
        junit 'target/**/TEST*.xml'
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