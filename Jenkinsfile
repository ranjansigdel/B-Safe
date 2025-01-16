pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('List Files') {
            steps {
                sh 'ls -alh'  // List all files to verify Dockerfile is present
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t b-safe-image .'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8081:80 b-safe-image'
            }
        }
    }
}
