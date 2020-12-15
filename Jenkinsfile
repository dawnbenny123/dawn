pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
        dir(path: '/home/ec2-user/my-app/target') {
          archiveArtifacts(artifacts: '**/*.jar', fingerprint: true)
        }

      }
    }

    stage('Buzz Test') {
      parallel {
        stage('Testing A') {
          steps {
            dir(path: '/home/ec2-user/my-app/target/surefire-reports') {
              junit '**/*.xml'
            }

          }
        }

        stage('Testing B') {
          steps {
            sh '''sleep 10
echo done.'''
          }
        }

      }
    }

  }
  environment {
    BUZZ_NAME = 'Worker Bee'
  }
}