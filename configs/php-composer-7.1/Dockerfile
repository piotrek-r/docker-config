FROM ubuntu:18.04
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1

RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt-get update && \
    apt-get install -y --allow-unauthenticated \
      php7.1 \
      php7.1-curl \
      php7.1-gd \
      php7.1-gmp \
      php7.1-intl \
      php7.1-json \
      php7.1-mbstring \
      php7.1-mcrypt \
      php7.1-mongodb \
      php7.1-mysql \
      php7.1-pgsql \
      php7.1-xml \
      php7.1-zip \
      php-xdebug \
      git \
      unzip
RUN update-alternatives --set php /usr/bin/php7.1
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
