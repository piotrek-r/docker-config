FROM ubuntu:18.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1

RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php7.2 \
      php7.2-curl \
      php7.2-gd \
      php7.2-gmp \
      php7.2-intl \
      php7.2-json \
      php7.2-mbstring \
      php7.2-mongodb \
      php7.2-sqlite3 \
      php7.2-mysql \
      php7.2-pgsql \
      php7.2-xml \
      php7.2-yaml \
      php7.2-zip \
      php-xdebug \
      git \
      unzip
RUN update-alternatives --set php /usr/bin/php7.2
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
