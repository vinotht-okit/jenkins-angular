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
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }

}
