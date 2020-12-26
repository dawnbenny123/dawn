pipeline {
  agent none
  stages {
    stage('Build Java 7') {
      parallel {
        stage('Build Java 7') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'Hai! Dawn'
            dir(path: '/home/ec2-user/my-app') {
              stash(name: 'Java 7', includes: 'target/**')
            }

          }
        }

        stage('Build Java 8') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'Hai! Benny'
            dir(path: '/home/ec2-user/my-app') {
              stash(name: 'Java 8', includes: 'target/**')
            }

            dir(path: '/home/ec2-user/my-app/target') {
              archiveArtifacts '**/*.jar'
            }

          }
        }

      }
    }

    stage('Fluffy Test') {
      parallel {
        stage('Fluffy Test') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'Completed Testing'
            dir(path: '/home/ec2-user/my-app') {
              unstash 'Java 7'
            }

          }
        }

        stage('java 7 test-1') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'Hai'
          }
        }

        stage('java 7 test-2') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'Hai'
          }
        }

        stage('java 7 test-3') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'java 7 test-3'
          }
        }

        stage('java 7 test-4') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'java 7 test-4'
          }
        }

        stage('java 8 test-1') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            sh 'sh /home/ec2-user/python/build.sh'
          }
        }

        stage('java 8 test-2') {
          agent {
            node {
              label 'java7'
            }

          }
          steps {
            echo 'hai'
          }
        }

      }
    }

    stage('Fluffy Deploy') {
      agent {
        node {
          label 'java7'
        }

      }
      steps {
        dir(path: '/home/ec2-user/my-app') {
          unstash 'Java 7'
        }

      }
    }

  }
}