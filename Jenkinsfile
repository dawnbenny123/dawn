pipeline {
      agent any
      environment {
            VERSION ='1.1.0'
            WORKSPACE = '/home/ubuntu/stormpath-spring-boot-war-example-master'
           }
    
      stages {
           stage ('BUILD'){
            steps {
                    cd "${WORKSPACE}"
                    echo "BUILDING"
                    mvn clean install
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
