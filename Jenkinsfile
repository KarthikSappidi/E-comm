pipeline {
    agent any
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout from Git') {
            steps {
                git branch: 'main', url: 'https://github.com/KarthikSappidi/E-comm.git'
            }
        }
        
        stage('Docker Build & Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {
                        sh 'docker build -t karthiksappidi/ecomm:v1 .'
                        sh 'docker push karthiksappidi/ecomm:v1'
                    }
                }
            }
        }
        stage('Trivy') {
            steps {
                sh 'trivy image karthiksappidi/ecomm:v1 > trivy.txt'
            }
        }
        stage('Deploy to Container') {
            steps {
                sh 'docker container run -dt --name ecomm -p 80:80 karthiksappidi/ecomm:v1'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up after pipeline run.'
        }
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
