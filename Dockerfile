FROM php:7.4-apache-bullseye

RUN apt-get update
RUN apt-get install ssl-cert -y
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
