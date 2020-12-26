pipeline {
  agent none
  stages {
    stage('Build Java 7') {
      steps {
        dir(path: '/home/ec2-user/my-app') {
          stash(name: 'Buzz Java 7', includes: 'target/**')
        }

      }
    }

  }
}