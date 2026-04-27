pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/deeppawar11/martin_repo.git'
            }
        }
        stage('Compile') {
            steps {
                sh 'javac HelloWorld.java'
            }
        }
        stage('Execute') {
            steps {
                sh 'java HelloWorld'
            }
        }
    }
}

