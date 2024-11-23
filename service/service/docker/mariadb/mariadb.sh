#!/bin/bash

mysql_secure_installation << EOF

password
n
n
y
y
y
y
EOF

mysql -u root -p password << EOF

CREATE DATABASE wordpress_db;
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'wordpress_pass';
FLUSH PRIVILEGES;
EXIT
EOF