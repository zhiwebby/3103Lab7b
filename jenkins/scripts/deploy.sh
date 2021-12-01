#!/usr/bin/env sh

set -x
docker stop my-apache-php-app
docker rm my-apache-php-app
docker run -d -p 80:80 --name my-apache-php-app -v /home/zhiwebby/3103Lab7b/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now....'
echo 'Visit http://localhost to see your PHP application in action.'

