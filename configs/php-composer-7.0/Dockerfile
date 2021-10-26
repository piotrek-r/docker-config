FROM ubuntu:18.04
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ="UTC"

RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt-get update && \
    apt-get install -y --allow-unauthenticated \
      php7.0 \
      php7.0-curl \
      php7.0-gd \
      php7.0-gmp \
      php7.0-intl \
      php7.0-json \
      php7.0-mbstring \
      php7.0-mcrypt \
      php7.0-mysql \
      php7.0-pgsql \
      php7.0-xml \
      php-xdebug \
      git \
      unzip
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer
RUN update-alternatives --set php /usr/bin/php7.0

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
