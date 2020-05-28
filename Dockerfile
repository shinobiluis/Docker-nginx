FROM  php:5.6-fpm

# Instalar dependencias
RUN apt-get update && apt-get install -y \
        build-essential \
        default-mysql-client \
        libpng-dev \
        libjpeg62-turbo-dev \
        libfreetype6-dev \
        locales \
        zip \
        jpegoptim optipng pngquant gifsicle \
        vim \
        unzip \
        git \
        curl \
    && docker-php-ext-configure gd \
    && docker-php-ext-install gd \
    && docker-php-ext-install sybase

CMD ["php-fpm"]