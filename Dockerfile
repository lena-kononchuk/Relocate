# Stage 1: Frontend build
FROM node:18 as frontend

WORKDIR /var/www
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: PHP backend
FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libzip-dev \
    libonig-dev libxml2-dev unzip git curl libpq-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd zip pdo pdo_mysql pdo_pgsql mbstring xml

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
COPY . .
COPY --from=frontend /var/www/public/build ./public/build

RUN composer install --optimize-autoloader --no-dev
RUN chown -R www-data:www-data storage bootstrap cache && chmod -R 775 storage bootstrap cache

EXPOSE 8000
CMD sh -c "php artisan migrate --force && php artisan serve --host=0.0.0.0 --port=8000"
