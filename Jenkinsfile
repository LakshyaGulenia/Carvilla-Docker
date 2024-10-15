pipeline {
    agent any

    stages {
        stage('Stop and Remove Containers') {
            steps {
                script {
                    // Stop and remove current containers
                    sh 'docker compose down'
                }
            }
        }

        stage('Build and Start Containers') {
            steps {
                script {
                    // Rebuild and start with the latest changes
                    sh 'docker compose up -d --build'
                }
            }
        }

        stage('Remove Dangling Images') {
            steps {
                script {
                    // Remove only dangling images (tagged as <none>)
                    sh 'docker image prune -f'
                }
            }
        }
    }
}
