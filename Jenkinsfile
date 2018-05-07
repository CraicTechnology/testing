#!groovy

pipeline {

	agent any

	stages {

		stage('Build') {
			steps {
				git url: 'git@github.com:CraicTechnology/testing.git'

				// bring up containers
				sudo sh "./develop up -d --build"
			}
		}

		stage('Test') {
			steps {
				sh "./develop test"
			}
		}

	}

}