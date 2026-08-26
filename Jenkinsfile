pipeline {
    agent any
    stages {

        stage('Create Virtual Environment') {
            steps {
                sh 'python3 -m venv .venv'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '.venv/bin/pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh '.venv/bin/python -m pytest application/test_app.py -v'
            }
        }
    stage('build the image'){
           steps {
            sh 'docker build -t first-project .'
           }
    }
    stage('create the container'){
           steps {
            sh 'docker run --name first-project-container first-project:latest'
           }
    }


}




}








