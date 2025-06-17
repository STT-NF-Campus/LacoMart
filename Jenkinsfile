pipeline {
    agent any

    environment {
        IMAGE_NAME = "lacomart:latest"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/STT-NF-Campus/LacoMart.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker-compose build'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}

