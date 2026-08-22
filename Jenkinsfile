pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Code has been checked out from GitHub'
            }
        }

        stage('install the dependencies') {
             steps {
                sh 'python3 -m pip install -r requirements.txt'
             }
        }


        stage('Run Python Application') {
            steps {
                sh 'python3 -m pytest application/test_app.py -v'
            }
        }

    }
}