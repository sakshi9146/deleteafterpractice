pipeline {
    agent { label 'webserver' }
    stages {
        stage('Pull') {
            steps {
               git branch: 'main', url: 'https://github.com/sakshi9146/deleteafterpractice.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo "this is build stage"'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "this is test stage"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "this is deploy stage"'
            }
        }
    }
}