pipeline {
    agent any

    environment {
        IMAGE_NAME = "lacomart:latest"
    }

    stages {

        stage('Clean Up') {
            steps {
                echo 'Stopping and removing existing containers (if any)...'
                sh 'docker compose down --volumes || true'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker compose build'
            }
        }

        stage('Run Container') {
            steps {
                echo 'Starting containers...'
                sh 'docker compose up -d'
            }
        }

        stage('Verify Database') {
            steps {
                sh '''
                sleep 10
                docker exec lacomart-db mysql -u root -proot -e "USE etoko; SHOW TABLES;"
                '''
            }
        }
    }
}
