# Use official PHP with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite (useful if you add routing later)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY . /var/www/html/

# Fix permissions (important on some systems)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache (default CMD already does this, but explicit is clean)
CMD ["apache2-foreground"]

