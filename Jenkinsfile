pipeline {
    agent any    

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                echo 'Building and pushing Docker image to Docker Hub...'
                sh 'chmod +x dist/build-and-push.sh'
                sh './dist/build-and-push.sh'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo 'Deploying to EKS...'
                sh 'chmod +x dist/deploy.sh'
                sh './dist/deploy.sh'
            }
        }
    }
}
