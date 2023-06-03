 pipeline {
    agent any
    stages {
      stage('fetch_latest_code') {
        steps {
          git credentialsId: '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', url: 'https://github.com/gauravrathod007/OCI_migration.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }

      stage('TF Apply') {
        steps {
          sh 'terraform apply -input=false'
        }
      }
    } 
  }
