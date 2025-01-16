pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    // Add any build commands here, for example:
                    sh 'docker build -t b-safe-image .'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Run your test script here
                    sh './test.sh'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Deploy your container here
                    sh 'docker run -d -p 8081:80 b-safe-image'
                }
            }
        }
    }
}
