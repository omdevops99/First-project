pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Code has been checked out from GitHub'
            }
        }

        stage('Run Python Application') {
            steps {
                sh 'python3 application/test_app.py'
            }
        }

    }
}