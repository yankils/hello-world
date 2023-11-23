pipeline {
  agent any
  stages {
    stage('clone git') {
      steps {
        echo "boolean parameter set to: ${params.mybool}"
        git(url: 'https://github.com/fasil916/hello-world.git', branch: 'master')
      }
    }

    stage('build') {
      steps {
        sh '''whoami
date
pwd'''
      }
    }

    stage('publish') {
      steps {
        archiveArtifacts(artifacts: 'build/lib/*.war', fingerprint: true, onlyIfSuccessful: true)
      }
    }

  }
  parameters {
    booleanParam(name: 'myboolean', defaultValue: false, description: 'service enable ?')
  }
}