FROM php:7.2-stretch
LABEL maintainer="fabianmu <spam@fabian.mu>"

RUN apt-get update && apt-get upgrade -y && apt-get install git bash catdoc -y

# Install PHP extensions
ADD install-php.sh /usr/sbin/install-php.sh
RUN /usr/sbin/install-php.sh

WORKDIR /var/www
CMD php ./artisan serve --port=80 --host=0.0.0.0
EXPOSE 80
HEALTHCHECK --interval=1m CMD curl -f http://localhost/ || exit 1
