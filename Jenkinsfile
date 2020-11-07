pipeline {
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
    }
}