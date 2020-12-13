pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
        archiveArtifacts(artifacts: 'target /home/ec2-user/python/*.jar', fingerprint: true, allowEmptyArchive: true)
      }
    }

  }
}