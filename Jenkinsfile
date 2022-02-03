pipeline {
    agent any
    environment {
        DOCKER_HOST = '3.141.152.90'
    }

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven 'M2'
    }

    stages {
        stage('Building...') {
      steps {
        // Get some code from a GitHub repository
        git credentialsId: 'github-private-key', url: 'git@github.com:Success-Guy/hello-world.git'
       
      //build maven
      sh 'mvn clean package'
      }
        }
        stage('Deplying to Docker server') {
      steps {
        script {
          withCredentials([usernamePassword(credentialsId: 'docker_id', passwordVariable: 'pwd', usernameVariable: 'user')]) {
            remote = [:]
            remote.name = "${ user }"
            remote.host = "${ DOCKER_HOST }"
            remote.user = "${ user }"
            remote.password = "${ pwd }"
            remote.allowAnyHosts = true

            sshPut remote: remote, from: 'webapp/target/webapp.war', into: '.'
            sshCommand remote: remote, command: "docker build -t tomcat-pipeline ."
          }
        }
        echo 'Done succesfully'
      }
        }
    }
}
