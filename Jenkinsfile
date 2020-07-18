pipeline {
      agent any
      stages {
           stage ('BUILD'){
              steps {
                   when {
                          expression {
                                BRANCH_NAME=='test'
                          }
                    }  
                    
                    echo "BUILDING"
                    echo "BUILD SUCCESSFULL "
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
