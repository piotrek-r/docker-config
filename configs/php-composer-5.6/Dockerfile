FROM ubuntu:16.04
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main" > /etc/apt/sources.list.d/php.list
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated \
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
    git \
    unzip
RUN apt-get install -y --allow-unauthenticated php-xdebug

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
