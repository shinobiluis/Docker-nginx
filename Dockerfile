FROM  php:5.6-fpm

RUN sed -i 's/:9000/:3001/' /usr/local/etc/php-fpm.d/zz-docker.conf


CMD ["php-fpm"]