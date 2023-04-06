pipeline {
  agent any
  stages {
    stage('Git Clone') {
      steps {
        git 'https://github.com/its-pushpaks-world/Jenkins-Terraform'
      }
    }

    stage('Terraform init') {
      steps {
        sh 'terraform init'
      }
    }

  }
}