FROM php:8.0-fpm

ADD . /usr/share/nginx/html

RUN apt-get update && apt-get upgrade -y \
    build-essential \
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
    libonig-dev \
    libzip-dev \
    zip \
    git

RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable pdo_mysql

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

WORKDIR /usr/share/nginx/html

CMD ["php-fpm"]