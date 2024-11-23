FROM debian:bookworm-slim

EXPOSE 80

RUN apt update && apt upgrade -y

## Nginx and other apps
RUN apt install -y nginx \
    curl \
    wget \
    nano \
    unzip

COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

RUN service nginx start

