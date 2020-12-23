pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      dir '/home/ec2-user'
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