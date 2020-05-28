FROM  php:7.0.9-fpm

# Instalar dependencias
RUN apt-get install -y php7.2-mysql

EXPOSE 9000
CMD ["php-fpm"]