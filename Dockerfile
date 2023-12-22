FROM php:7.4-apache
RUN apt-get update && apt-get install -y libpq-dev libzip-dev git
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN pecl install redis && \
    docker-php-ext-enable redis
RUN git clone https://str:<secrets>@github.com/waverlite/Core.git
ADD . /var/www/html
EXPOSE 80 
