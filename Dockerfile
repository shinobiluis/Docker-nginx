FROM  php:7.0.9-fpm

#Instalar dependencias
RUN apt-get update && apt-get install -y \
    unzip

CMD ["php-fpm"]