pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
        archiveArtifacts(artifacts: 'target /home/ec2-user/.jenkins/workspace/dawn_simple-pipeline/*.jar', fingerprint: true)
      }
    }

  }
}