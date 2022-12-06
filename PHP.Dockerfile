FROM php:fpm 
# php:7.4-fpm, php:8.0-fpm, etc...

RUN docker-php-ext-install pdo pdo_mysql

RUN pecl install xdebug && docker-php-ext-enable xdebug
