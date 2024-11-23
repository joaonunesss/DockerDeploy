FROM debian:bookworm-slim

EXPOSE 3306

RUN apt update && apt upgrade -y
RUN apt install -y mariadb-server \
    mariadb-client \
    curl \
    wget \
    nano
RUN service mariadb start

# To secure your MariaDB server
# mysql_secure_installation
# Enter current password for root (enter for none): enter
# Switch to unix_socket authentication [Y/n]: n
# Change the root password? [Y/n]: n
# Remove anonymous users? [Y/n]: y
# Disallow root login remotely? [Y/n]: y
# Remove test database and access to it? [Y/n]:  y
# Reload privilege tables now? [Y/n]:  y

RUN service mariadb restart

# Create a New Database for WordPress
# mysql -u root -p
# MariaDB [(none)]> CREATE DATABASE wordpress_db;
# MariaDB [(none)]> GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'wordpress_pass';
# MariaDB [(none)]> FLUSH PRIVILEGES;
# MariaDB [(none)]> EXIT