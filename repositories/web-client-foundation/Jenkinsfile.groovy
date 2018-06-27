#!/usr/bin/env groovy

node {
    checkout scm

    def dockerImage

    stage('Build') {
        dockerImage = docker.build('damlys/webdock-web-client-foundation')
    }

    stage('Test') {
        dockerImage.inside {
            sh 'curl --version'
            sh 'envsubst --version'
            sh 'htpasswd --help'
            sh 'nginx -v'
        }
    }

    stage('Release') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            dockerImage.push('example')
        }
    }
}
