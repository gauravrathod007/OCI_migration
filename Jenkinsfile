pipeline {
  agent any


  stages {
    stage('Git Checkout') {
      steps {
        git credentialsId: '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', url: 'https://github.com/gauravrathod007/OCI_migration.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh label: '', script: 'terraform init'
      }
    }
    
    stage('Terraform apply') {
      steps {
        sh label: '', script: 'terraform apply --auto-approve'
      }
    }
  }
}

