FROM  php:7.0.9-fpm

#Instalar dependencias
RUN apt-get update && apt-get install -y \
    unzip

# Instalar extensiones
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

CMD ["php-fpm"]