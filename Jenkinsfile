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
                       if (
                          expression {
                                BRANCH_NAME=='dev'  || GIT_URL== 'https://github.com/dawnbenny123/dawn.git'
                          }
                       )      
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
