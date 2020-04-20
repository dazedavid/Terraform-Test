pipeline {
   agent any
   stages {
      stage ('Checking out GIT Files') {
         steps {
            checkout scm
        }
      }
      stage('Preparing the Environment') {
         steps {
            script {
               def tfHome = tool 'Terraform'
               def jdk = tool 'jdk8'
               env.PATH = "${tfHome}:${env.PATH}"
            }
            sh 'terraform -version'
         }
      stage ('Provisioning Infrastructure'){
         steps {
           dir ('Azure') {
              withCredentials([azureServicePrincipal(credentialsId: 'credentials_id', subscriptionIdVariable: 'SUBS_ID', clientIdVariable: 'CLIENT_ID', clientSecretVariable: 'CLIENT_SECRET', tenantIdVariable: 'TENANT_ID')]) {
                  sh 'az login --service-principal -u $CLIENT_ID -p $CLIENT_SECRET -t $TENANT_ID'
                  sh 'terraform init'
               }   
            }
         }      
      }
   }
}