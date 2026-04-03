FROM php:8.2-apache

# Install dependencies for PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev

# Install required PHP extensions (PostgreSQL support)
RUN docker-php-ext-install pdo pdo_pgsql

# Copy project files
COPY . /var/www/html/

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Fix permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80