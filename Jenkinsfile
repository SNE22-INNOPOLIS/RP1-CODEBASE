pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
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
