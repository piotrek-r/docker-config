FROM ubuntu:24.04
LABEL maintainer=piotrek@owl-labs.com

ARG PHP_VERSION=8.4

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1 \
    PHP_VERSION=${PHP_VERSION}

# Install PHP
RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php${PHP_VERSION} \
      php${PHP_VERSION}-curl \
      php${PHP_VERSION}-gd \
      php${PHP_VERSION}-gmp \
      php${PHP_VERSION}-intl \
      php${PHP_VERSION}-mbstring \
      php${PHP_VERSION}-mongodb \
      php${PHP_VERSION}-sqlite3 \
      php${PHP_VERSION}-mysql \
      php${PHP_VERSION}-pgsql \
      php${PHP_VERSION}-xml \
      php${PHP_VERSION}-yaml \
      php${PHP_VERSION}-zip \
      php-xdebug \
      git \
      unzip \
    && update-alternatives --set php /usr/bin/php${PHP_VERSION}

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
