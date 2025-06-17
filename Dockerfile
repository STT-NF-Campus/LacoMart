# Gunakan image resmi PHP dengan Apache
FROM php:8.2-apache

# Install ekstensi yang dibutuhkan (mysqli & lainnya jika perlu)
RUN docker-php-ext-install mysqli

# Aktifkan mod_rewrite (jika htaccess dipakai)
RUN a2enmod rewrite

# Salin semua file aplikasi ke direktori root Apache
COPY . /var/www/html/

# Set ownership dan permission
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Expose port default Apache
EXPOSE 80
