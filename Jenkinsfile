pipeline {
  agent none
  stages {
    stage('Build Java 7') {
      agent {
        node {
          label 'java7'
        }

      }
      post {
        always {
          dir(path: '/home/ec2-user/my-app/target') {
            archiveArtifacts(artifacts: '**/*.jar', fingerprint: true)
          }

        }

        success {
          dir(path: '/home/ec2-user/my-app') {
            stash(name: 'Java 7', includes: 'target/**')
          }

        }

      }
      steps {
        echo 'Hai! Dawn'
      }
    }

    stage('Fluffy Test') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        echo 'Completed Testing'
        dir(path: '/home/ec2-user/my-app') {
          unstash 'Java 7'
        }

      }
    }

    stage('Fluffy Deploy') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        dir(path: '/home/ec2-user/my-app') {
          unstash 'Java 7'
        }

      }
    }

  }
}