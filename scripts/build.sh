DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cp -r $DIR/../config/php $DIR/../images/php-fpm/php
cp -r $DIR/../config/php $DIR/../images/php-cli/php

docker build -t mace015/laravel-docker-php-fpm $DIR/../images/php-fpm
docker build -t mace015/laravel-docker-php-cli $DIR/../images/php-cli

docker build -t mace015/laravel-docker-application $DIR/../images/application
docker build -t mace015/laravel-docker-workspace $DIR/../images/workspace
docker build -t mace015/laravel-docker-worker $DIR/../images/worker
docker build -t mace015/laravel-docker-cron $DIR/../images/cron
