FROM php:8.2-apache

# Copy project files
COPY . /var/www/html/

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (optional but useful)
RUN a2enmod rewrite

EXPOSE 80