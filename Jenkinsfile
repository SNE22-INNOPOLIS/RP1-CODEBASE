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
        sh 'docker build -t sne_webapp .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -d -p 9000:9000 sne_webapp'
      }
    }
  }
}
