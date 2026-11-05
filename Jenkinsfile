pipeline {
  agent any
  environment {
    IMAGE = "myapp:${BUILD_NUMBER}"
  }
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Build Image') {
      steps { sh 'docker build -t $IMAGE ./app' }
    }
    stage('Test') {
      steps {
        sh '''
          docker rm -f testapp || true
          docker run -d --name testapp $IMAGE
          sleep 5
          docker exec testapp python -c "import urllib.request; print(urllib.request.urlopen('http://localhost:5000/healthz').read())"
        '''
      }
    }
  }
  post {
    always { sh 'docker rm -f testapp || true' }
  }
}
