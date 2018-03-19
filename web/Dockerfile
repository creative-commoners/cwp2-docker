FROM php:5.6-apache
MAINTAINER Robbie Averill <robbie@silverstripe.com>

COPY php.ini /usr/local/etc/php/

# Set up Apache and PHP 5.6 with required libraries
RUN apt-get -y update
RUN apt-get install -y zlib1g-dev libicu-dev g++ libpng-dev libmcrypt-dev;
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl pdo_mysql mysqli gd iconv zip

RUN apt-get install -y git-all

# Copy Apache configuration into place
COPY ./silverstripe.conf /etc/apache2/sites-available/
COPY ./hosts /etc/hosts

# Ensure mod_rewrite is enabled
RUN a2enmod rewrite
RUN service apache2 restart

# Install composer
RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer | php \
  && mv composer.phar /usr/local/bin/composer

# Install sspak for managing database and asset snapshots
RUN composer global require silverstripe/sspak:dev-master

# Include composer's global path
ENV PATH="/root/.composer/bin:${PATH}"

WORKDIR /var/www/html/
RUN a2ensite silverstripe.conf
