pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
        archiveArtifacts(artifacts: '**/python/stormpath-spring-boot-war-example-master/target/*.jar', fingerprint: true)
      }
    }

  }
}