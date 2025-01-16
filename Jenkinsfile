pipeline {
    agent any
    stages {
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
    }
}
