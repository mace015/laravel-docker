FROM mace015/laravel-docker-php-cli:latest

# Install nodejs
RUN apk add nodejs git mysql-client

# Install composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN rm composer-setup.php

WORKDIR /application

CMD ["tail", "-f", "/dev/null"]
