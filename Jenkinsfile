pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh './jenkins/build.sh'
      }
    }

    stage('BUZZ TEST') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }

  }
}