pipeline {
  agent any
  stages {
    stage('Fluffy Build') {
      steps {
        sh 'sh /home/ec2-user/python/build.sh'
        dir(path: '/home/ec2-user/my-app/target') {
          archiveArtifacts '**/*.jar'
        }

      }
    }

    stage('Fluffy Test') {
      parallel {
        stage('Fluffy Test') {
          steps {
            dir(path: '/home/ec2-user/my-app/target/') {
              junit 'surefire-reports/**/*.xml'
            }

          }
        }

        stage('Backend') {
          steps {
            echo 'HAI DAWN'
            dir(path: '/home/ec2-user/my-app/target') {
              archiveArtifacts '**/*.jar'
            }

          }
        }

        stage('Frontend') {
          steps {
            echo 'HAI BUDDY'
          }
        }

        stage('Performance') {
          steps {
            dir(path: '/home/ec2-user/my-app/target/') {
              junit 'surefire-reports/**/*.xml'
            }

          }
        }

        stage('Static') {
          steps {
            echo 'BYE'
          }
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