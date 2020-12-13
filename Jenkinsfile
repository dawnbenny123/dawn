pipeline {
  agent any
  stages {
    stage('BUZZ BUILD') {
      steps {
        sh '/home/ec2-user/python/build.sh'
        archiveArtifacts(artifacts: '/home/ec2-user/python/stormpath-spring-boot-war-example-master/target/demo-0.0.1-SNAPSHOT.war', fingerprint: true)
      }
    }

  }
}