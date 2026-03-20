FROM php:8.1-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy application code into the image
COPY . /var/www/html/

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R 755 /var/www/html/
