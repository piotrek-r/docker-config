FROM ubuntu:22.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1

# Install PHP
RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php8.0 \
      php8.0-curl \
      php8.0-gd \
      php8.0-gmp \
      php8.0-intl \
      php8.0-mbstring \
      php8.0-mongodb \
      php8.0-sqlite3 \
      php8.0-mysql \
      php8.0-pgsql \
      php8.0-xml \
      php8.0-yaml \
      php8.0-zip \
      php-xdebug \
      git \
      unzip \
    && update-alternatives --set php /usr/bin/php8.0

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
