/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent {
        stage('Initialize') {
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        docker {
            image 'node:14-alpine'
            args '-p 3000:3000'
        }
    }
    // environment {
    //     CI = 'true'
    // }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
