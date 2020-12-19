pipeline {
  agent any
  stages {
    stage('Fluffy Build') {
      steps {
        sh 'sh /home/ec2-user/python/build.sh'
      }
    }

    stage('Fluffy Test') {
      steps {
        dir(path: '/home/ec2-user/my-app/target/') {
          junit 'surefire-reports/**/*.xml'
        }

      }
    }

    stage('Fluffy Deploy') {
      steps {
        sh 'sh /home/ec2-user/python/deploy.sh'
      }
    }

  }
}