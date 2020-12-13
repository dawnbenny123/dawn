pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
      }
    }

    stage('BUZZ TEST') {
      steps {
        sh '/home/ec2-user/python/test-all.sh'
      }
    }

  }
}