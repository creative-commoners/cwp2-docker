FROM php:5.6-apache
MAINTAINER Robbie Averill <robbie@silverstripe.com>

COPY php.ini /usr/local/etc/php/

# Set up Apache and PHP 5.6 with required libraries
RUN apt-get -y update
RUN apt-get install -y zlib1g-dev libicu-dev g++ libpng-dev libmcrypt-dev
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl pdo_mysql mysqli gd iconv zip

# Copy Apache configuration into place
COPY ./silverstripe.conf /etc/apache2/sites-available/
COPY ./hosts /etc/hosts

# Ensure mod_rewrite is enabled
RUN a2enmod rewrite
RUN service apache2 restart

WORKDIR /var/www/html/

RUN a2ensite silverstripe.conf
