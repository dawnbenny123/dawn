pipeline {
  agent none
  stages {
    stage('BUZZ Build') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        echo HAI
      }
    }

    stage('Deploy') {
      agent {
        label 'jdk7'
      }
      steps {
        echo DEPLOYED
      }
    }

  }
}