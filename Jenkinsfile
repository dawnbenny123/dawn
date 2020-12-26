pipeline {
  agent none
  stages {
    stage('BUZZ Build') {
      agent {
        node {
          label 'jdk7'
        }

      }
      steps {
        echo HAI
      }
    }

    stage('Deploy') {
      agent {
        label 'bzzzproduction'
      }
      steps {
        echo DEPLOYED
      }
    }

  }
}