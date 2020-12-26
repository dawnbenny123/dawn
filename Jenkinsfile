pipeline {
  agent none
  stages {
    stage('Buzz Java 7') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        echo 'Hai! Dawn'
      }
    }

  }
}