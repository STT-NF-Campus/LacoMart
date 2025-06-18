pipeline {
    agent any

    stages {
        stage('Membersihkan Container, Volume, dan Images sebelumnya') {
            steps {
            echo 'Membersihkan container, volume, dan images sebelumnya...'
            sh 'docker compose down --volumes --remove-orphans || true'
            sh 'docker system prune -f || true'
            }
        }

        stage('Building Docker Image') {
            steps {
            echo 'Membangun gambar Docker...'
            sh 'docker compose build'
            }
        }

        stage('Jalankan Container') {
            steps {
            echo 'Menjalankan container...'
            sh 'docker compose up -d'
            }
        }

        stage('Tunggu Beberapa Detik') {
            steps {
            echo 'Menunggu beberapa detik untuk memastikan container berjalan...'
            sleep time: 10, unit: 'SECONDS'
            }
        }
        stage('Cek Status Container') {
            steps {
            echo 'Memeriksa status container...'
            sh 'docker ps -a'
            }
        }

        stage('Cek Log Container') {
            steps {
            echo 'Memeriksa log container...'
            sh 'docker logs lacomart-web || true'
            sh 'docker logs lacomart-db || true'
            }
        }

        stage('Cek Koneksi ke Aplikasi') {
            steps {
            echo 'Memeriksa koneksi ke aplikasi...'
            sh 'curl -f http://localhost:8080 || true'
            }
        }
        
        stage('Cek Koneksi ke Database') {
            steps {
            echo 'Memeriksa koneksi ke database...'
            sh 'docker exec lacomart-db mysql -u root -proot -e "USE etoko; SHOW TABLES;" || true'
            }
        }
    }
}
