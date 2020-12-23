pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        label 'bzzzmaven'
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