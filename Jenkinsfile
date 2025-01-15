pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'yourdockerhubusername/your-app-name:latest'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'docker run --rm $DOCKER_IMAGE ./runTests.sh'
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker run -d -p 8080:8080 $DOCKER_IMAGE'
                }
            }
        }
    }
    post {
        always {
            script {
                sh 'docker container prune -f'
            }
        }
    }
}
