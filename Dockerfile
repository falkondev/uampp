# Use the official Ubuntu image as the base image
FROM ubuntu:latest

WORKDIR /var/www/html

ARG PHP_VERSION=8.2
ENV PHP_VERSION=$PHP_VERSION

# Update packages and install Apache and PHP
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt install -y apache2 software-properties-common
    
RUN add-apt-repository ppa:ondrej/php

RUN DEBIAN_FRONTEND=noninteractive apt install -y php${PHP_VERSION} php${PHP_VERSION}-mysqli libapache2-mod-php \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# Start Apache on foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
