pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git 'git@github.com:CraicTechnology/testing.git'
        sh './docker-compose -f docker-compose.dev.yml up -d --build'
      }
    }
  }
}