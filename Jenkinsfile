pipeline {
    agent any
    stages {
        // stage('clean dir') {
        //     steps {
        //         deleteDir()
        //     }
        // }
        
        stage('clone repos') {
            steps {
                sh "git clone https://github.com/fasil916/hello-world.git"
            }
        }
        
    stage('build') {
            steps {
                dir("hello-world") {
                sh "mvn clean install"
                }
            }
        }    
    }        

}
