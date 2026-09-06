

pipeline {
    agent any

    stages {

        stage('Test') {
            steps {
                sh 'test -f index.html'
                echo 'Application test passed'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t devops-final-app:1.0 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker rm -f devops-final-container || true'
                sh 'docker run -d --name devops-final-container -p 8085:80 devops-final-app:1.0'
            }
        }

        stage('Application Test') {
            steps {
                sh 'curl -f http://localhost:8085'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }

        failure {
            echo 'CI/CD pipeline failed. Check the console output.'
        }
    }
}
