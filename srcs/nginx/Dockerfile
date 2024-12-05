FROM debian:bullseye

# Install required dependencies and nginx
RUN apt update -y && apt upgrade -y && apt install -y \
    nginx \
    openssl \
    curl \
    && apt clean

# Copy Nginx config (default site configuration)
COPY default /etc/nginx/sites-available/default

# Copy SSL certificates (server.crt and server.key)
COPY certs/ /etc/nginx/certs/

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80 443

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]