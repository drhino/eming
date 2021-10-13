FROM php:7.4-apache-bullseye

RUN a2dismod deflate -f
RUN a2enmod headers
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
RUN docker-php-ext-install pdo_mysql

COPY default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY ssl.conf /etc/apache2/mods-available/ssl.conf
COPY origin_ca_ecc_root.pem /etc/ssl/certs/origin_ca_ecc_root.pem

EXPOSE 443
