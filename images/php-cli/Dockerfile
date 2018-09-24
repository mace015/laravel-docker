FROM php:7.2-cli

# Update system
RUN apt-get update

# Install dependencies for the PHP extensions
RUN apt-get install -y zlib1g-dev libpng-dev libmagickwand-dev gnupg2

# Install php extensions
RUN docker-php-ext-install pdo_mysql zip gd pcntl intl bcmath

# Install and enable imagick
RUN pecl install imagick
RUN docker-php-ext-enable imagick