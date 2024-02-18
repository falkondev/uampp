# Use the official Ubuntu image as the base image
FROM ubuntu:latest

WORKDIR /var/www/html

# Update packages and install Apache and PHP
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 php libapache2-mod-php \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Start Apache on foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
