FROM php:5.6-apache

RUN a2enmod rewrite
RUN docker-php-ext-install mysqli

ADD ./ /var/www/html/
ADD ./.htaccess.dist /var/www/html/.htaccess

VOLUME /var/www/html/cache
VOLUME /var/www/html/img/avatars
VOLUME /var/www/html/upl
VOLUME /var/www/html/extensions