FROM ubuntu:16.04

RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main" > /etc/apt/sources.list.d/php.list
RUN apt-get update \
 && apt-get install -y --allow-unauthenticated \
    php7.0 \
    php7.0-curl \
    php7.0-gd \
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

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
