pipeline {
    agent any

    parameters {
        choice(
            name: 'DEPLOY_ENV',
            choices: ['dev', 'test', 'prod'],
            description: 'Environment to deploy to'
        )
    }

    stages {
        stage('Hello') {
            steps {
                echo "Hello World! Deploying to ${params.DEPLOY_ENV} environment."
                // Add your deployment steps based on the selected environment
            }
        }
    }
}
