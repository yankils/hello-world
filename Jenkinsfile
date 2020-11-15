node{
   stage('SCM Checkout'){
      //github project url
     git 'https://github.com/Sreedhar-Muktham/hello-world'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'M2_HOME', type: 'maven'   
      sh "${mvnHome}/bin/mvn package"
   }
  }
