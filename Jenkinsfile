pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('martin')
        DOCKER_IMAGE = "dockerhub_username/hello-world-java"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/deeppawar11/martin_repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:latest .'
            }
        }
        stage('Login to DockerHub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker push $DOCKER_IMAGE:latest'
            }
        }
    }
}


