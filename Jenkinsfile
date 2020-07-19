pipeline {
      agent any
      environment {
            VERSION ='1.1.0'
            WORKSPACE = '/home/ubuntu/stormpath-spring-boot-war-example-master'
           }
      tools {
             maven 'myMVN'
         }
      stages {
           stage ('BUILD'){
                    echo "BUILDING"
            steps {
                    sh "${maven} clean install"
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

