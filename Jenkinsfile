pipeline {
      agent any
      stages {
           stage ('BUILD'){
              when {
                          expression {
                                env.GIT_URL=='https://github.com/dawnbenny123/dawn.git'
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
