pipeline {
    agent any

    stages {
        stage('scm') {
            steps {
                git branch: 'main', url: 'https://github.com/SATYENDRAMONU1644/jenkins_docker.git'
            }
        }
    stage('docker build') {
        steps {
                sh 'sudo docker build -t satyendramonu1644/pipeline:v1 .'
            }
        }
    stage('docker images') {
        steps {
                sh 'sudo docker images'
            }
        }
    stage('docker rm') {
            steps {
                sh 'sudo docker rm -f pipe1'
            }
        }
    stage('docker run') {
            steps {
                sh 'sudo docker run -d --name pipe1  -p 8099:80 satyendramonu1644/pipeline:v1'
            }
        }
    stage('docker login') {
            steps {
                sh 'sudo docker login -u ${dockerhub_username} -p ${dockerhub_password}'
            }
        }
    stage('docker push') {
            steps {
                sh 'sudo docker push satyendramonu1644/pipeline:v1'
            }
        }
    stage('print success') {
            steps {
                sh 'echo success'
            }
        }
    }
}
