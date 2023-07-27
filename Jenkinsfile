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
        
        stage('Deploy to Dev') {
            when {
                // This stage will only run if the build is triggered by a pull request from the master branch
                expression { githubPullRequestAction() == 'opened' && githubPullRequestTargetBranch() == 'master' }
            }
            steps {
                echo "Deploying to Dev environment..."
                // Add your deployment steps for the dev environment here
            }
        }
    }

    post {
        always {
            echo 'This will always run'
        }
    }
}
