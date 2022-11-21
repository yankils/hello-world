
pipeline{
    agent any
    triggers {
        pollSCM '* * * * *'
    }

    environment {
        endUrl = "https://index.docker.io/v1/"
        repository="anujgupta1"
        imageName ="tomcat"
        tag = "v5"
        PATH = "/opt/apache-maven-3.8.6/bin:$PATH"
    }
    stages{
        stage("GIt Checkout"){
            steps{
                git branch: 'master', credentialsId: 'git', url: 'https://github.com/anujguptatecnotree/hello-world.git'
            }
        }
        stage("Build clean and compile Project"){
            steps{
                sh 'mvn clean compile'
            }

        }
        stage("Test Maven Project"){
            steps{
                sh 'mvn test'
            }
            post{
                always{
                    echo "========Running Junit========="
                    //sh 'make check || true'
                    //junit '**/target/*.xml'
                }
            } 

        }
        stage("mvn Build"){
            steps{
                sh 'mvn install'
                sh 'pwd'
            }
        }
        
        stage("Build Docker Image"){
            steps{
                sh 'docker build -t ${repository}/${imageName}:${tag} . -f Dockerfile'
               
            }
        }
        stage("Upload the image to Hub"){
            steps{
                withDockerRegistry(credentialsId: 'dockerhub', url: "${endUrl}") {
                sh 'docker push ${repository}/${imageName}:${tag}'
                }
               
            }
        }
        stage("Cleaning the environment"){
            steps{
                sh 'docker stop tomcat-server && docker rm tomcat-server || true' 
                sh 'docker rmi ${repository}/${imageName}:${tag} || true'
                sh 'docker system prune -f -a || true'
            }

        }
        stage("Deployment tomcat server"){
            steps{
                sh 'docker run -it -d -p 8083:8080 --name "tomcat-server" ${repository}/${imageName}:${tag}'
            }
        }
        
    }
}
