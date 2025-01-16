pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t b-safe-image .'
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
                // Deploy your application here
            }
        }
    }
}
