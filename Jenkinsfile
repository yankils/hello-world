pipeline {
    agent any

    tools {
       
        maven "maven"
    }

    stages {
        stage('Clone') {
            steps {
                // Get some code from a GitHub repository
               git credentialsId: 'git', url: 'https://github.com/sandeepsingh07/hello-world.git'

            }

            
            }
			stage('Build') {
            steps {
              
                // Run Maven on a Unix agent.
                sh "mvn clean package"

            }

            
            }
			stage('Deploy') {
            steps {
              
                 deploy adapters: [tomcat8(credentialsId: 'tomcat_server', path: '', url: 'http://13.214.147.112:8080')], contextPath: null, war: '**/*.war'
            }

            
            }
			
        }
    }
