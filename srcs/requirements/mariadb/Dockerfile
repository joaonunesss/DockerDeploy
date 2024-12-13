FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y \
    mariadb-server

EXPOSE 3306

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY setup.sh .

RUN chmod +x setup.sh
RUN mkdir -p /run/mysqld

CMD [ "./setup.sh"]