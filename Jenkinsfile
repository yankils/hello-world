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

	    } }
				stage('Print Msg'){
	    steps {
              
                // Run Maven on a Unix agent.
                echo "This is End Of Pipeline"

	    } }

           
			stage('Deploy') {
            steps {
              
                 deploy adapters: [tomcat8(credentialsId: 'tomcat', path: '', url: 'http://34.207.185.187:8080/')], contextPath: null, war: '**/*.war'
            }

            
            }
			
        }
    }
