pipeline {
      agent any
      environment {
            VERSION ='1.1.0'
            WORKSPACE = 'cd /home/ubuntu/stormpath-spring-boot-war-example-master'
           }
      tools {
         maven 'mymvn'
         }
      stages {
           stage ('BUILD'){
            steps {
                    env.$WORKSPACE 
                    echo "BUILDING"
                    sh "mvn clean install"
                   } 
                
                 }
             
           stage ('TEST'){
                 steps {
                   
                       echo "TESTING"
                 }
           }
           stage ('DEPLOY'){
                  steps {
                    echo "DEPLOYING"
                 }
             }
       }
}
