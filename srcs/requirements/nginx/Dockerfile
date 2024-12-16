FROM debian:bullseye

# Install required dependencies and nginx
RUN apt update -y && apt upgrade -y && apt install -y \
    nginx \
    openssl \
    curl \
    && apt clean

EXPOSE 443

# Copy Nginx config (default site configuration)
COPY default /etc/nginx/sites-available/default

# Copy SSL certificates (server.crt and server.key)
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=PT/L=OPO/O=42Porto/OU=student/CN=jmarinho.42.fr"

# Start Nginx in the foreground
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]