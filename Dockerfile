FROM php:7.4-apache
RUN apt-get update && apt-get install -y libpq-dev libzip-dev git
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN pecl install redis && \
    docker-php-ext-enable redis
RUN git clone https://waverlite:ghp_tQhDCUxv7HsOd85Mh5vps2Zt4k6@github.com/waverlite/Core.git
ADD . /var/www/html
EXPOSE 80 
