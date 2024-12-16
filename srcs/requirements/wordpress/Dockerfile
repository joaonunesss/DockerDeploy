FROM debian:bullseye

# Install required dependencies and PHP  with PHP-FPM
RUN apt update && apt upgrade -y && apt -y install \
    php7.4-fpm \
    php-mysqli \
    curl

EXPOSE 9000

RUN mkdir -p /run/php
    
COPY www.conf /etc/php/7.4/fpm/pool.d/.
COPY script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]