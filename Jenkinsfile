pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/deeppawar11/martin_repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-world-java .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm hello-world-java'
            }
        }
    }
}


