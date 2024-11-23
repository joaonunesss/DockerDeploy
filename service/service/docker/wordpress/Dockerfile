FROM debian:bookworm-slim

EXPOSE 80

RUN apt update && apt upgrade -y

## PHP and depencencies
RUN apt install -y php \ 
    php-curl \
    php-fpm \
    php-bcmath \
    php-gd \
    php-soap \
    php-zip \
    php-curl \
    php-mbstring \
    php-mysqlnd \
    php-xml \
    php-intl
COPY ./docker/wordpress/php.ini /etc/php/8.2/fpm/php.ini
RUN service php8.2-fpm restart

## Wordpress
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip -d /var/www/html/
COPY ./docker/wordpress/wp-config.php /var/www/html/wordpress/wp-config.php
RUN chown -R www-data:www-data /var/www/html/wordpress/
