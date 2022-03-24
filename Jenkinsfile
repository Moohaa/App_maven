pipeline {
     environment {
          registry = "moha2/app"
          registryCredential = 'docker_hub'
          dockerIdockerImage = ''
     }
     agent any
     stages {
          stage('Build') {
               steps {
                    sh "mvn package"
               }
          }
          stage('Building image') {
               steps{
                    script {
                         dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    }
               }
          }
          stage('Deploy Image') {
               steps{
                    script {
                         docker.withRegistry( '', registryCredential ) {
                              dockerImage.push()
                         }
                    }
               }
          }
     }
}
