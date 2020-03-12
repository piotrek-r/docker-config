FROM ubuntu:18.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1

# Install PHP
RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php7.4 \
      php7.4-curl \
      php7.4-gd \
      php7.4-gmp \
      php7.4-intl \
      php7.4-json \
      php7.4-mbstring \
      php7.4-mongodb \
      php7.4-sqlite3 \
      php7.4-mysql \
      php7.4-pgsql \
      php7.4-xml \
      php7.4-yaml \
      php7.4-zip \
      php-xdebug \
      git \
      unzip \
    && update-alternatives --set php /usr/bin/php7.4

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
