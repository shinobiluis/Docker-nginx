FROM  php:5.6-fpm

RUN apt-get update && apt-get install -y \
    vim

CMD ["php-fpm"]