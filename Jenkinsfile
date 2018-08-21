pipeline {
     
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                sh 'git clone -b dev https://github.com/VeeraRlab/jenkins.git'
            }
        }
        stage('Creating Docker Image') {
            steps {
                sh 'cd jenkins/ && docker build -t mytodo . && docker tag  mytodo mkveera1993/mytodo:2.0'
            }

        }
        stage('Pushing Docker Image') {
            steps {
                withDockerRegistry([ credentialsId: "1234567890", url: "" ]) {
                sh 'docker push mkveera1993/mytodo:2.0'
                }
            }
        }
        stage('Pulling Docker Image') {
            steps{
                sh 'docker pull  mkveera1993/mytodo:2.0'
            }
        }
        stage('Deploy') {            
            steps{
                sh 'docker run -p 3100:3100 --env DB_HOST=$DB_HOST mkveera1993/mytodo:2.0'
            }
        }
    }      
    post {
        always {
            sh 'rm -r jenkins'
        }
    }
}