FROM php:7.4.9-fpm-alpine3.12

# Update system
RUN apk update

# Install dependencies for the PHP extensions
RUN apk add --no-cache zlib libpng-dev libjpeg-turbo-dev freetype-dev imagemagick-dev gnupg imap-dev krb5-dev openssl-dev libzip-dev icu-dev $PHPIZE_DEPS

# Install nodejs, npm and mysql-client.
RUN apk add --no-cache nodejs npm mysql-client

# Install Puppeteer and its dependencies.
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      yarn

RUN apk add --no-cache ghostscript

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

# Configure gd
RUN docker-php-ext-configure gd --with-freetype --with-jpeg

# Configure imap
RUN docker-php-ext-configure imap --with-kerberos

# Install php extensions
RUN docker-php-ext-install pdo_mysql zip gd pcntl intl bcmath imap exif mysqli

# Copy custom php.ini into the container
COPY php/php.ini /usr/local/etc/php/conf.d

# Install and enable imagick
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN docker-php-ext-enable mysqli