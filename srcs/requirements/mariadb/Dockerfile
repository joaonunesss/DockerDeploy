FROM debian:bullseye

# Install required dependencies and mariadb-server
RUN apt update -y && apt upgrade -y && apt install -y \
    mariadb-server

EXPOSE 3306

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./init.sql /etc/mysql/init.sql
COPY setup.sh .

RUN chmod +x setup.sh
RUN mkdir -p /run/mysqld

# Start the mariadb service
CMD [ "./setup.sh"]