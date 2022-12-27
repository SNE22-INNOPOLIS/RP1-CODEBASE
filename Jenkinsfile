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
        sh 'docker stop -t 10 my-webapp .'
        sh 'docker build -t my-webapp .'
        
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -p 8080:8080 my-webapp'
      }
    }
  }
}
