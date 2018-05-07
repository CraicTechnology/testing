#!groovy

node('') {

	try {

		stage('Build') {
			git url: 'git@github.com:CraicTechnology/testing.git'

			// start services
			sh "./develop up -d --build"
		}

	} catch (error) {
		throw error
	} finally {
		// shut down docker-compose
		sh './develop down'
		sh 'docker-cleanup'
	}

}