FROM php:7.3-fpm-alpine

# Update system
RUN apk update

# Install dependencies for the PHP extensions
RUN apk add zlib libpng-dev libjpeg-turbo-dev freetype-dev imagemagick-dev gnupg imap-dev krb5-dev openssl-dev libzip-dev icu-dev $PHPIZE_DEPS

# Configure gd
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# Configure imap
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl

# Install php extensions
RUN docker-php-ext-install pdo_mysql zip gd pcntl intl bcmath imap

# Copy custom php.ini into the container
COPY php/php.ini /usr/local/etc/php/conf.d

# Install and enable imagick
RUN pecl install imagick
RUN docker-php-ext-enable imagick
