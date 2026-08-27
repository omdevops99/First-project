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
            sh 'docker build -t first-project:1.0 .'
           }
    }

    stage('tag the image'){
           steps {
            sh 'docker tag  first-project:1.0  omejjigiri/first-project:1.0'
        
           }
    }

    stage('Push Docker Image') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'docker hub cred',
                usernameVariable: 'DOCKER_USERNAME',
                passwordVariable: 'DOCKER_PASSWORD'
            )
        ]) {
            sh '''
                echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                docker push omejjigiri/first-project:1.0
                docker logout
            '''
        }
    }
}

        
    stage('create the container'){
           steps {
            // sh 'docker rm -f first-project-container || true'
            sh 'docker run --name first-project-container first-project:1.0'
           }
    }


}


}








