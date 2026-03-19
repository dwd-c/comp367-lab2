pipeline {
    agent any
    tools {
        jdk 'JDK-17'
        maven 'Maven-3'
    }
    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Docker build') {
            steps {
                script {
                    bat 'docker build -t swuare/comp367-lab2:1.0 .'
                }
            }
        }
        stage('Docker login') {
            steps {
                script {
                    bat "docker login -u swuare -p %DOCKERHUB_PWD%"
                }
            }
        }
        stage('Docker push') {
            steps {
                script {
                    bat 'docker push swuare/comp367-lab2:1.0'
                }
            }
        }
    }
}