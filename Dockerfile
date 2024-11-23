FROM debian:bookworm-slim

RUN apt update && apt upgrade -y

#nginx install

RUN sudo apt install -y nginx \
    curl \
    wget \
    nano \
    vim \
    unzip \
COPY ./default.conf etc/nginx/conf.d/default.conf

RUN service nginx start

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

