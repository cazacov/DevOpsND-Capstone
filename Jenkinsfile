pipeline {
    environment { 
        registry = "cazacov/learning" 
        registryCredentials = 'dockerhub_credentials' 
        dockerImage = '' 
    }
    agent any 
    stages {
        stage ('Build') {
            steps {
                sh 'echo "Hello World!"'
            }
        }
        stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e webapp/*.html'
              }
         }
        stage('Building Docker image') { 
            steps { 
                script { 
                    dockerImage = docker.build(registry + ":$BUILD_NUMBER", "./webapp") 
                }
            } 
        } 
        stage('Deploy image to DockerHub') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredentials) { 
                        dockerImage.push() 
                    }
                } 
            }
        }
    }
}