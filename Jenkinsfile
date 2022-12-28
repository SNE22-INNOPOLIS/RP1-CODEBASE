pipeline {
  //agent any
  agent {label 'Agent 2'}

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
        echo 'now pushing to dockerhub...'
        sh 'docker login -u samsonidowu -p dckr_pat_qKDzQb7FvH9_keGP_gZCM4V1d_c docker.io'
        sh 'docker tag my-webapp samsonidowu/my-webapp:latest'
        sh 'docker push samsonidowu/my-webapp:latest'
        echo 'container image push was successfull>>>'
      }
    }

    stage('Deploy to Remote Server') {
      steps {
        sshagent(['ssh-key']) {  
          sh 'ssh samson@10.1.1.24 "docker pull samsonidowu/my-webapp:latest"'
        }
      }
    }

    stage('Restart Container on Remote Server') {
      steps {
        sshagent(['ssh-key']) {
          //sh 'ssh samson@10.1.1.24 "docker stop my-web-app || true"'
          sh 'ssh samson@10.1.1.24 "docker run -p 3000:9000 -d --name sne22-webapp samsonidowu/my-webapp:latest"'
        }
      }
    }
  }
}
