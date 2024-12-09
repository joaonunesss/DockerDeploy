FROM debian:bullseye

RUN apt upgrade -y && apt update -y && apt install -y \
    php-fpm -y \
    php-mysql -y \
    curl -y

CMD ["./script.sh"]