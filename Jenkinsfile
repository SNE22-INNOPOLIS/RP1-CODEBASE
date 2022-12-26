pipeline {
  agent any

  stages {
    stage('Build and Install Environment') {
      steps {
        sh 'sudo apt-get update'
        sh 'apt-get install nodejs -y'
        sh 'npm install'
<<<<<<< HEAD
        sh 'sudo chmod a+r /etc/apt/keyrings/docker.gpg'
        sh 'sudo apt-get update'
        sh 'sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin'
      }
=======
        sh 'sudo apt install docker.io && sudo snap install docker'

>>>>>>> 771309b129f0983936ed7f20031a00b1342d4fe7
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
