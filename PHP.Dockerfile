FROM php:fpm 
# php:7.4-fpm, php:8.0-fpm, etc...

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

RUN pecl install xdebug && docker-php-ext-enable xdebug

# Get latest Composer
# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
