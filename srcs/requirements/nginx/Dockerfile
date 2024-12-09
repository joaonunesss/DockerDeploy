FROM debian:bullseye

RUN apt upgrade -y && apt update -y && apt install -y \
    nginx -y \
    openssl -y

COPY default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]