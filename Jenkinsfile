/* groovylint-disable-next-line CompileStatic */
pipeline {
    // environment {
    //     registry = "https://docker.okit.in/"
    //     registryCredential = 'docker-hub-credentials'
    //     dockerImage = ''
    // }
    // agent {
    //     docker {
    //         image 'node:12.17.0-alpine3.11'
    //         args '-p 3000:3000'
    //     }
    // }
    // stages {
    //     stage('Cloning Git') {
    //         steps {
    //             git 'https://github.com/vinotht-okit/jenkins-angular.git'
    //         }
    //     }        
    //     stage('Build image') {
    //         steps {
    //             sh 'npm install'
    //         }
    //     }
    //     stage('Build image') {
    //         steps {
    //             // sh 'npm install'
    //         }
    //     }
    // }
    // agent { dockerfile true }
    agent any
    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/vinotht-okit/jenkins-angular.git'
            }
        }  
        stage('Building Image') {
            steps {
               sh "docker-compose build --no-cache"
            }
        }
        stage('Launching Container') {
            steps {
               sh "docker-compose down"
               sh "docker-compose up -d"
            }
        }
        stage('Cleaning Containers') {
            steps {
               sh "docker image prune"
               sh "y"
            }
        }
    }

}
