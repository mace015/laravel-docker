FROM php:7.2-fpm

# Update system
RUN apt-get update

# Install dependencies for the PHP extensions
RUN apt-get install -y zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libmagickwand-dev gnupg2 libc-client-dev libkrb5-dev

# Configure gd
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# Configure imap
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl

# Install php extensions
RUN docker-php-ext-install pdo_mysql zip gd pcntl intl bcmath imap

# Copy custom php.ini into the container
COPY php/php.ini /usr/local/etc/php/conf.d

# Install and enable imagick
RUN pecl install imagick
RUN docker-php-ext-enable imagick
