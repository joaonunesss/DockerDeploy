#!/bin/bash

mysqld_safe & sleep 1
mysql -u root -e "
				CREATE DATABASE IF NOT EXISTS ${DB_NAME};
				DROP USER IF EXISTS '${DB_USER}'@'%';
				CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
				GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' WITH GRANT OPTION;
				FLUSH PRIVILEGES;
"
exec mysqld