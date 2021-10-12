FROM php:7.4-apache-bullseye

RUN apt-get update
RUN apt-get install ssl-cert wget
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
RUN wget -O /etc/apache2/sites-available/default-ssl.conf \
https://raw.githubusercontent.com/drhino/eming/main/default-ssl.conf
RUN docker-php-ext-install pdo_mysql
