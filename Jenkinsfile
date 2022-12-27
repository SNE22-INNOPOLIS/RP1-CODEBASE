pipeline {
  agent any

  stages {

    stage('Build and Install') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt install docker.io -y && sudo snap install docker'
      }
    }

    stage('Build Docker Image') {
      steps {
        //sh 'docker rm -f $(docker ps -a -q)'
        sh 'docker build -t my-webapp .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -d --name sne22-webapp -p 9000:9000 my-webapp'
        sh 'echo container deployment was successful>>>'
      }
    }
  }
}
