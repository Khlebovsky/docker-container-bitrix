FROM php:8.0-fpm

ADD . /usr/share/nginx/html

RUN apt-get update && apt-get -y upgrade && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable pdo_mysql && \
    chown -R www-data:www-data /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

WORKDIR /usr/share/nginx/html

CMD ["php-fpm"]