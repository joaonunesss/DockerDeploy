#!/bin/bash
echo -e "\e[32mWaiting for MariaDB to initialize...\e[0m"
sleep 5

cd /var/www/html

# - Check if WordPress is already installed
if [ -f "wp-config.php" ]; then
    echo -e "\e[34mWordPress is already installed.\e[0m"
else
    # - Install WordPress using WP-CLI
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar

    # - change the default values
    ./wp-cli.phar core download --allow-root

    ./wp-cli.phar config create --dbname="${DB_NAME}" \
                                --dbuser="${DB_USER}" \
                                --dbpass="${DB_PASS}" \
                                --dbhost="${DB_HOST}" \
                                --allow-root

    ./wp-cli.phar core install --url="${WP_URL}" \
                               --title="${WP_TITLE}" \
                               --admin_user="${WP_ADM_USER}" \
                               --admin_password="${WP_ADM_PASS}" \
                               --admin_email="${WP_ADM_EMAIL}" \
                               --allow-root
 

    ./wp-cli.phar user create ${WP_USER} \
                              ${WP_USER_EMAIL} \
                              --role="${WP_USER_ROLE}" \
                              --user_pass="${WP_USER_PASS}" \
                              --allow-root
fi

exec php-fpm7.4 -F