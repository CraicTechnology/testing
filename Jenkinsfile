pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git 'git@github.com:CraicTechnology/testing.git'
        sh 'whoami'
        sh 'chmod 755 ./develop'
        sh './develop up -d --build'
        sh './develop composer install'
      }
    }
    stage('Test') {
      steps {
        sh './vendor/bin/phpunit'
      }
    }
    stage('CleanUp') {
      steps {
        sh './develop down'
      }
    }
  }
}