FROM php:7.0-apache

COPY grn/dist/ /var/www/html

EXPOSE 80
