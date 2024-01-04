pipeline {
	agent any
	tools {
	    maven "maven3.8"
	    jdk "jdk11"
	}

	stages {
	    stage('Fetch code') {
            steps {
               git branch: 'master', url: 'https://github.com/ikaudanaveen/hello-world.git'
            }

	    }

	    stage('Build'){
	        steps{
	           sh 'mvn install -DskipTests'
	        }

	        post {
	           success {
	              echo 'Now Archiving it...'
	              archiveArtifacts artifacts: '**/target/*.war'
	           }
	        }
	    }

	    stage('UNIT TEST') {
            steps{
                sh 'mvn test'
            }
        }
	}
}
