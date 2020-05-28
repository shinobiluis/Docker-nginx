FROM  php:5.6-fpm

RUN apt-get update && apt-get install -y

CMD ["php-fpm"]