#!/usr/bin/env groovy

node('master') {
	try {
		
		stage('build') {
			git url: 'git@github.com:CraicTechnology/testing.git'
		}

	} catch(error) {
		throw error
	} finally {
		// docker-compose down to turn off all the containers
		sh './develop down'
	}
}