pipeline {
      agent any
      stages {
           stage ('BUILD'){
              when {
                          expression {
                                env.BRANCH_NAME=='*/test'
                          }
                    }
                 steps {
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
