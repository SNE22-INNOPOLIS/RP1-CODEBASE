pipeline {
  agent any

  stages {

    stage('Build and Install') {
      steps {
        sh 'sudo apt-get update'
        sh 'apt-get install nodejs -y'
        sh 'sudo apt install docker.io -y && sudo snap install docker'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-webapp .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -p 3000:3000 */webdata/my-webapp'
      }
    }
  }
}
