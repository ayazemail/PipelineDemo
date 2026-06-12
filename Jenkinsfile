pipeline {

    agent any

    stages {

stage('Docker Test') {
            steps {
                sh 'docker --version'
            }
        }
        stage('Checkout') {
            steps {
                echo 'Getting source code'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-demo .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f node-demo || true
                docker run -d --name node-demo -p 3000:3000 node-demo
                '''
            }
        }
    }
}