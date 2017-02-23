FROM ubuntu:16.04

RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main" > /etc/apt/sources.list.d/php.list
RUN apt-get update \
 && apt-get install -y --allow-unauthenticated \
    php7.1 \
    php7.1-curl \
    php7.1-gd \
    php7.1-intl \
    php7.1-json \
    php7.1-mbstring \
    php7.1-mcrypt \
    php7.1-mysql \
    php7.1-pgsql \
    php7.1-xml \
    php-xdebug \
    git \
    unzip
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer
RUN php -r "readfile('https://symfony.com/installer');" > /usr/local/bin/symfony && chmod +x /usr/local/bin/symfony

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app

