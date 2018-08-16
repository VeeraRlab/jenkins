pipeline {
    agent any
    stages {
        stage('Cloning Repo') {
            step{
                checkout scm
            }
        }
        stage('Building Docker image') {
            sh 'docker build -t testtodo .'
        
        }
        stage('Deploy ') {
            sh 'docker run -p 3100:3100 testtodo'        
        }
    }
}