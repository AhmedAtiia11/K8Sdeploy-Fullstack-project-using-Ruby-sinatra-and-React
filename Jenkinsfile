pipeline {
  agent any
  stages {
    stage('create backend Deployment') {
      steps {
        sh 'kubectl apply -f kubernetes/Deployment-back-end.yaml'
      }
    }
    stage('create backend Service') {
      steps {
        sh 'kubectl apply -f kubernetes/service-backend.yaml'
      }
    }    
    stage('create frontend Deployment') {
      steps {
        sh 'kubectl apply -f kubernetes/Deployment-react-nginx.yaml'
      }
    }      
    stage('create frontend Service') {
      steps {
        sh 'kubectl apply -f kubernetes/service-frontend.yaml'
      }
    }
  }
}