pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'b-safe-image'
    }

    stages {
        stage('Checkout SCM') {
            steps {
                // Checkout the code from Git
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Make the test script executable
                    sh 'chmod +x test.sh'
                    // Run the test script
                    sh './test.sh'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Deployment step (adjust according to your deployment needs)
                    echo 'Deploying the application...'
                    // Add your deployment steps here (e.g., docker run, kubectl apply, etc.)
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    // Clean up Docker images if needed
                    sh 'docker rmi ${DOCKER_IMAGE}'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed.'
        }
    }
}
