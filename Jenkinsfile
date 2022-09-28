timestamps {
 timeout(time: 60, unit: 'SECONDS') {
 
node
{
  
       
    try{
     /*  
        def jobname = env.JOB_NAME
def buildnum = env.BUILD_NUMBER.toInteger()

def job = Jenkins.instance.getItemByFullName(jobname)
 for (build in job.builds) {
     if (!build.isBuilding()) { continue; }
     if (buildnum == build.getNumber().toInteger()) { continue; println "equals" }
    build.doStop();
}
*/
 if (env.BRANCH_NAME=='master'){
     echo "GitHub BranhName ${env.BRANCH_NAME}"
properties([
     buildDiscarder(logRotator(daysToKeepStr: '1',numToKeepStr: '3',artifactNumToKeepStr: '3',artifactDaysToKeepStr: '1')),
     pipelineTriggers([
         pollSCM('* * * * *')
     ]),
    
   ])
}
else
{
     echo "GitHub BranhName ${env.BRANCH_NAME}"
properties([
   
     buildDiscarder(logRotator(daysToKeepStr: '10',numToKeepStr: '10',artifactNumToKeepStr: '10',artifactDaysToKeepStr: '10')),
     pipelineTriggers([
         pollSCM('* * * * *')
     ]),
    
   ])

}


 
  echo "GitHub BranhName ${env.BRANCH_NAME}"
  echo "Jenkins Job Number ${env.BUILD_NUMBER}"
  echo "Jenkins Node Name ${env.NODE_NAME}"
 
  echo "Jenkins Home ${env.JENKINS_HOME}"
  echo "Jenkins URL ${env.JENKINS_URL}"
  echo "JOB Name ${env.JOB_NAME}"
 
  def mvnHome=tool name: "maven3.6.3"
 
 stage('CheckoutCode')
  {
  git branch: 'master', credentialsId: '235e277e-7cf7-495e-b970-a22c2478d48c', url: 'https://github.com/MithunTechnologiesDevOps/maven-web-application.git'
  }
 

 stage('Build')
 {
  sh "${mvnHome}/bin/mvn clean package"
 }

 stage('ExecuteSonarQubeReport')
 {
  sh "${mvnHome}/bin/mvn sonar:sonar"
 }


 stage('UploadArtifactIntoNexus')
 {
  sh "${mvnHome}/bin/mvn deploy"
 }

 
 stage('DeployToTomcat')
 {
  
  sshagent(['bac46180-c907-4a95-b8a9-417aff7d4f5c'])
  {
    sh  "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.233.253.59:/opt/apache-tomcat-9.0.30/webapps/maven-web-application.war"
  }
 
  }
 stage('SendEmailNotification')
 {
 emailext body: '''Build is over,
 Please check the logs,

 Regards,
 Mithun Technologies,
 9980923226.''', subject: 'Build is Over', to: 'devopstrainingblr@gmail.com'
 
 }
}


}
