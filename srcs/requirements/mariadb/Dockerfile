FROM debian:bullseye

RUN apt upgrade -y && apt update -y && apt install -y \
    mariadb-server -y

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld", "--user=root"]