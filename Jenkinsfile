pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git 'git@github.com:CraicTechnology/testing.git'
        sh 'whoami'
        sh 'chmod 755 ./develop'
      }
    }
  }
}