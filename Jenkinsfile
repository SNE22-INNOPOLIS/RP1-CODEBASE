pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin'
        sh 'apt-get install nodejs -y'
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-webapp .'
      }
    }
    stage('Run Docker Container') {
      steps {
        sh 'docker run -p 3000:3000 my-webapp'
      }
    }
  }
}
