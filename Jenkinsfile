pipeline {
  agent any
  stages {
    stage('create backend Deployment') {
      steps {
        sh 'kubectl apply -f Deployment-back-end.yaml'
      }
    }
    stage('create backend Service') {
      steps {
        sh 'kubectl apply -f service-backend.yaml'
      }
    }    
    stage('create frontend Deployment') {
      steps {
        sh 'kubectl apply -f Deployment-react-nginx.yaml'
      }
    }      
    stage('create frontend Service') {
      steps {
        sh 'kubectl apply -f service-frontend.yaml'
      }
    }
  }
}