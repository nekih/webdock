#!/usr/bin/env bash

substitute_environment_variables()
{
    envsubst $(printenv | cut -f1 -d'=' | sed 's/.*/\\\${&}/' | tr '\n' ',')
}

set -e

if [ "$APP_DEBUG" == "off" ]
then
    composer run-script migrate
fi

export ENTRYPOINT_ARGUMENT=$1
case $ENTRYPOINT_ARGUMENT in
    '--start-cron')
        printenv > /etc/cronenvs
        crontab /etc/crontab
        cron -f
    ;;

#    '--start-fpm')
#        php-fpm --nodaemonize
#    ;;
#
#    '--start-nginx')
#        substitute_environment_variables < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
#        htpasswd -b -c /etc/nginx/htpasswd $APP_NGINX_BASIC_AUTH_USER $APP_NGINX_BASIC_AUTH_PASSWORD
#        nginx -g 'daemon off;'
#    ;;

    '--start-web')
        substitute_environment_variables < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
        htpasswd -b -c /etc/nginx/htpasswd $APP_NGINX_BASIC_AUTH_USER $APP_NGINX_BASIC_AUTH_PASSWORD
        nginx -g 'daemon on;'

        php-fpm --nodaemonize
    ;;

    *)
        export ENTRYPOINT_ARGUMENT="unrecognized: $@"
        exec "$@"
    ;;
esac

exit 0
