pipeline{
    agent any
    environment {
        http_proxy = "http://qcwebproxylb.juniper.net:3128"
        https_proxy = "http://qcwebproxylb.juniper.net:3128"
    }
    stages{
        stage("Test"){
            steps{
                echo "Test Stage"
            }
        }
        stage("Stage"){
            steps{
                echo "Stage Deployment $http_proxy"
            }
        }
        stage("prod"){
            steps{
                echo "Prod Deployment ${env.BUILD_ID}"
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
