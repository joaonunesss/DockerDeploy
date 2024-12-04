FROM debian:bullseye

# Install required dependencies and PHP  with PHP-FPM
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get -y install php7.4-fpm && \
    apt-get -y install php-mysqli

COPY www.conf /etc/php/7.4/fpm/pool.d/.


CMD ["php-fpm7.4", "-F"]
