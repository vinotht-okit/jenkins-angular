/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent {
        docker {
            image 'node:12.17.0-alpine3.11'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
