FROM ubuntu:16.04
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main" > /etc/apt/sources.list.d/php.list
RUN apt-get update \
 && apt-get install -y --allow-unauthenticated \
    php7.2 \
    php7.2-curl \
    php7.2-gd \
    php7.2-intl \
    php7.2-json \
    php7.2-mbstring \
    php7.2-mongodb \
    php7.2-mysql \
    php7.2-pgsql \
    php7.2-xml \
    php-xdebug \
    git \
    unzip
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
