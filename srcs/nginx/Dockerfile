FROM debian:bullseye

RUN apt upgrade -y && apt update -y && apt install -y \
    nginx

CMD ["nginx", "-g", "daemon off;"]