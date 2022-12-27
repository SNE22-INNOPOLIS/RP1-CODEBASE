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
        sh 'docker rm -f sne22-webapp'
        sh 'docker build -t my-webapp .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -d --name sne22-webapp -p 9000:9000 my-webapp'
        echo 'container deployment was successfull>>>'
      }
    }

        stage('Push to Repo') {
      steps {
        sh 'docker login -u samsonidowu -p dckr_pat_qKDzQb7FvH9_keGP_gZCM4V1d_c'
        sh 'docker tag my-webapp samsonidowu/sne22-rp1/my-webapp:latest'
        sh 'docker push samsonidowu/sne22-rp1/my-webapp:latest'
        echo 'container image push was successfull>>>'
      }
    }
  }
}
