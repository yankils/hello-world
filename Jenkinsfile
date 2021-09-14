pipeline {
    agent {
		node{
			label 'master'
		}
	}
	
	stages {
	
		stage("Clean workspace") {
			steps{
				deleteDir ()
			}	
		}
				
		stage("Checkout TCI repo"){
			steps{
				script {
					checkout([$class: 'GitSCM', branches: [[name: '*/prod'], [name: '*/preprod'], [name: '*/test'], [name: '*/develop']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/MonikaTrajkovska/hello-world.git']]])
				}
			}
		}
		
		stage("Checkout Ansible repo") {
		    steps {
				script {

					sh "https://github.com/MonikaTrajkovska/Ansible.git"
				}
			}
		}
		
		stage ("Build") {
			steps {
				script {
					sh "echo ${env.BRANCH_NAME}"
					if (env.BRANCH_NAME == 'develop') {
						sh "git checkout develop"
                   } 
				   else if (env.BRANCH_NAME == 'test'){
						sh "git checkout test"
                   }
				   	else if (env.BRANCH_NAME == 'preprod'){
						sh "git checkout preprod"
                   }
					else if (env.BRANCH_NAME == 'prod'){
						sh "git checkout prod"
                   }
					sh "ant -v war -f ${env.WORKSPACE}/build.xml" 
				}
			}
		}
		stage("Deploy") {
            steps {
                script {
                   if (env.BRANCH_NAME == 'develop') {
						sh "ansible-playbook -i ${env.WORKSPACE}/Ansible/inventory -u moni ${env.WORKSPACE}/Ansible/tci_dev_deploy.yml"
                   } 
				   else if (env.BRANCH_NAME == 'test'){
						sh "ansible-playbook -i ${env.WORKSPACE}/Ansible/inventory -u moni ${env.WORKSPACE}/Ansible/tci_uat_deploy.yml"
                   }
				   
                }
            }
		}
	}
		
	post {
        success {
			echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
	}
}
