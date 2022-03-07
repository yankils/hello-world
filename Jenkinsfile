pipeline {
    agent any
    stages {
        stage ('git-checkout') {
            steps {
                 https://github.com/Krishdevops012/hello-world.git
            }
        }
        stage ('environment-setting') {
            steps  {
                script {
                    env.BUILD='yes' // Setting env variable for build
                }
            }
            
        }
        stage ('build') {
            when {environment name: 'BUILD', value: 'yes')
                  steps {
                      echo 'Building artifacts...'
                      sh 'mvn clean package'
                  }   
                  }
    }
}
                
                
