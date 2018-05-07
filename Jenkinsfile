#!/usr/bin/env groovy

node('master') {
	try {
		stage('build') {
			// git checkout
			git url: 'git@github.com:CraicTechnology/testing.git'

			// start services *(docker-compose build containers for testing)
			sh "./docker/app/docker-compose up -d"

			// install composer dependencies

			// create .env for testing
			// s3 copy env file from there TODO
			sh 'cp .env.example .env'
			sh 'php artisan key:generate'
		}

		// stage('test') {
		// 	sh './vendor/bin/phpunit'
		// }

		// if(env.BRANCH_NAME == 'master') {
		// 	stage('package') {
		// 		sh './docker/build'
		// 	}
		// }

	} catch(error) {
		// alerting?
		throw error
	} finally {
		// docker-compose down to turn off all the containers
		// sh './docker-compose down'
	}
}