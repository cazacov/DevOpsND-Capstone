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
                        dockerImage.push('latest') 
                    }
                } 
            }
        }
        stage('Deploy web-app to Kubernetes') {
            steps {
                script {
                    withAWS(credentials: 'aws-credentials', region: 'us-west-2') {
                        sh 'sed "s/latest/$BUILD_NUMBER/g" kubernetes-deployment/deployment.yaml > deployment.yaml'
                        sh 'cat deployment.yaml'                        
                        withKubeConfig([credentialsId: 'eks_file', contextName: 'arn:aws:eks:us-west-2:579060413136:cluster/udacity-devops-eks']) {
                           sh 'kubectl apply -f deployment.yaml --kubeconfig $KUBECONFIG'
                        }
                    }
                }
            }
        }
    }
}