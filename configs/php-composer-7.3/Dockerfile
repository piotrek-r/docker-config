FROM ubuntu:18.04
LABEL maintainer=piotrek@owl-labs.com

ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1

RUN apt update && apt -y upgrade && apt install -y software-properties-common && add-apt-repository ppa:ondrej/php
RUN apt update \
    && apt install -y \
      php7.3 \
      php7.3-curl \
      php7.3-gd \
      php7.3-gmp \
      php7.3-intl \
      php7.3-json \
      php7.3-mbstring \
      php7.3-mongodb \
      php7.3-sqlite3 \
      php7.3-mysql \
      php7.3-pgsql \
      php7.3-xml \
      php7.3-yaml \
      php7.3-zip \
      php-xdebug \
      git \
      unzip
RUN update-alternatives --set php /usr/bin/php7.3
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

COPY run-server.sh /
RUN chmod +x /run-server.sh

WORKDIR /app
