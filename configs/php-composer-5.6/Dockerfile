FROM ubuntu:18.04
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ="UTC"

RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt-get update && \
    apt-get install -y --allow-unauthenticated \
      php5.6 \
      php5.6-curl \
      php5.6-gd \
      php5.6-intl \
      php5.6-json \
      php5.6-mbstring \
      php5.6-mcrypt \
      php5.6-mysql \
      php5.6-pgsql \
      php5.6-xml \
      php-xdebug \
      git \
      unzip
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer
RUN update-alternatives --set php /usr/bin/php5.6

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
