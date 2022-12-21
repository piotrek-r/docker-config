FROM ubuntu:22.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1

# Install PHP
RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php8.2 \
      php8.2-curl \
      php8.2-gd \
      php8.2-gmp \
      php8.2-intl \
      php8.2-mbstring \
      php8.2-mongodb \
      php8.2-sqlite3 \
      php8.2-mysql \
      php8.2-pgsql \
      php8.2-xml \
      php8.2-yaml \
      php8.2-zip \
      php-xdebug \
      git \
      unzip \
    && update-alternatives --set php /usr/bin/php8.2

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
