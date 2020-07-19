pipeline {
      agent any
      environment {
            VERSION ='1.1.0'
            WORKSPACE = "/home/ubuntu/project/stormpath-spring-boot-war-example-master"
           }
      tools {
         maven 'mymvn'
         }
      stages {
           stage ('BUILD'){
            steps {
                    dir("${env.WORKSPACE}") {
                    sh "pwd"
                    echo "BUILDING"
                    sh "mvn clean install"
                   } 
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
