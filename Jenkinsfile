pipeline {
    agent any

     parameters {
        booleanParam(name: 'myboolean', defaultValue: false, description: 'service enable ?')
     }
    stages {
        stage('echo') {
            steps {
                echo "boolean parameter set to: ${params.mybool}"
            }
        }
    }        

}
