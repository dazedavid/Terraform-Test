pipeline {
   agent any
   stages {
      stage ('Checking out GIT Files') {
         steps {
            checkout scm
        }
      }
      stage ('Preparing the Environment') {
         steps {
            script {
               def tfHome = tool 'Terraform'
               def jdk = tool 'jdk8'
               env.PATH = "${tfHome}:${env.PATH}"
            }
            sh 'terraform -version'
            sh 'pwd'
         }
      }   
      stage ('Provisioning Infrastructure'){
         steps {
           dir ('Azure') {
                     sh  'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                      sh 'terraform init'
                      sh 'terraform plan -out "check.out"'
                      sh 'terraform apply "check.out"'
                  }   
               }
            }      
         }
      } 
   }
