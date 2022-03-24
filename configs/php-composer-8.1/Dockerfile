FROM ubuntu:22.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1

# Install PHP
RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php8.1 \
      php8.1-curl \
      php8.1-gd \
      php8.1-gmp \
      php8.1-intl \
      php8.1-mbstring \
      php8.1-mongodb \
      php8.1-sqlite3 \
      php8.1-mysql \
      php8.1-pgsql \
      php8.1-xml \
      php8.1-yaml \
      php8.1-zip \
      php-xdebug \
      git \
      unzip \
    && update-alternatives --set php /usr/bin/php8.1

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
