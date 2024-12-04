FROM debian:bullseye

# Install required dependencies and PHP  with PHP-FPM
RUN apt update && \
    apt upgrade -y && \
    apt -y install php7.4-fpm

RUN mkdir /run/php
    
COPY www.conf /etc/php/7.4/fpm/pool.d/.

CMD ["php-fpm7.4", "-F"]