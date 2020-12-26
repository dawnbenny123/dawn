pipeline {
  agent none
  stages {
    stage('Fluffy Build') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        echo 'Hai! Dawn'
        dir(path: '/home/ec2-user/my-app') {
          stash(name: 'Java 7', includes: 'target/**')
        }

      }
    }

    stage('Fluffy Test') {
      steps {
        echo 'Completed Testing'
        dir(path: '/home/ec2-user/my-app') {
          unstash 'Java 7'
        }

      }
    }

  }
}