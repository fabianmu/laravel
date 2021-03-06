#!/bin/sh

# apt-get install freetds freetype icu libintl libldap libjpeg libmcrypt libpng libpq libwebp

# TMP="curl-dev \
#     freetds-dev \
#     freetype-dev \
#     gettext-dev \
#     icu-dev \
#     jpeg-dev \
#     libmcrypt-dev \
#     libpng-dev \
#     libwebp-dev \
#     libxml2-dev \
#     openldap-dev"
# apt-get install $TMP

# # Configure extensions
# docker-php-ext-configure gd --with-jpeg-dir=usr/ --with-freetype-dir=usr/ --with-webp-dir=usr/
# docker-php-ext-configure ldap --with-libdir=lib/
# docker-php-ext-configure pdo_dblib --with-libdir=lib/

# docker-php-ext-install \
#     curl \
#     exif \
#     gd \
#     gettext \
#     intl \
#     ldap \
#     pdo_dblib \
#     pdo_mysql
#     xmlrpc \
#     zip

# # Download trusted certs 
# mkdir -p /etc/ssl/certs && update-ca-certificates

# # Install composer
php -r "readfile('https://getcomposer.org/installer');" | php && \
   mv composer.phar /usr/bin/composer && \
   chmod +x /usr/bin/composer

# apt-get del $TMP

# Set timezone
# RUN echo America/Maceio > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
