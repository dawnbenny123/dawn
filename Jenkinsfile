pipeline {
      agent any
      environment {
            VERSION ='1.1.0'
            WORKSPACE = '/home/ubuntu/stormpath-spring-boot-war-example-master'
           }
      tools {
             maven 'maven'
         }
      stages {
           stage ('BUILD'){
                    echo "BUILDING"
            steps {
                    cd "${WORKSPACE}"
                    "${maven}" clean install
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

