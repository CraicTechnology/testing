#!groovy

pipeline {

	agent any

	stages {

		stage('Build') {
			steps {
				git url: 'git@github.com:CraicTechnology/testing.git'

				// bring up containers
				sh "./docker-compose -f docker-compose.dev.yml up -d --build"
			}
		}

		stage('Test') {
			steps {
				sh "./develop test"
			}
		}

	}

}