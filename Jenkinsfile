pipeline {
  agent none
  stages {
    stage('Build Java 7') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        dir(path: '/home/ec2-user/my-app') {
          stash(name: 'Buzz Java 7', includes: 'target/**')
        }

      }
    }

    stage('Testing A') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        unstash 'Buzz Java 7'
      }
    }

    stage('Confirm Deploy to Staging') {
      steps {
        input(message: 'Do you want to deploy to staging?', ok: 'Yes', submitter: 'dawn')
      }
    }

  }
}