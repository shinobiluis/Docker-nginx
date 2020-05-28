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
    && docker-php-ext-configure php5.6-sybase \
    && docker-php-ext-install php5.6-sybase

CMD ["php-fpm"]