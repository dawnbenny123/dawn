pipeline {
  agent {
    dockerfile {
      filename '/home/ec2-user/Dockerfile'
    }

  }
  stages {
    stage('Fluffy Build') {
      steps {
        sh 'sh /home/ec2-user/python/build.sh'
        dir(path: '/home/ec2-user/my-app/target') {
          archiveArtifacts '**/*.jar'
        }

      }
    }

  }
}