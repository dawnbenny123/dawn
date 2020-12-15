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
      steps {
        dir(path: '/home/ec2-user/my-app/target/surefire-reports') {
          junit '**/*.xml'
        }

      }
    }

  }
  environment {
    BUZZ_NAME = 'Worker Bee'
  }
}