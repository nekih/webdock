#!/usr/bin/env groovy

node {
    checkout scm

    def dockerImage

    stage('Build') {
        dockerImage = docker.build('damlys/webdock-php-web-server-foundation')
    }

    stage('Test') {
        dockerImage.inside {
            sh 'composer --version'
            sh 'curl --version'
            sh 'dpkg --status cron'
            sh 'envsubst --version'
            sh 'git --version'
            sh 'htpasswd --help'
            sh 'nginx -v'
            sh 'pecl version'
            sh 'php --version'
            sh 'php-fpm --version'
            sh 'which cron'
            sh 'which crontab'
        }
    }

    stage('Release') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            dockerImage.push('example')
        }
    }
}
