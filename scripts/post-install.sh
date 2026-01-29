
#!/usr/bin/env bash
set -ux
docker exec fossbilling_theme_whc-fossbilling-1 ls /var/www/html/install
docker exec fossbilling_theme_whc-fossbilling-1 rm -rfv /var/www/html/install
set -e
docker exec fossbilling_theme_whc-fossbilling-1 ls /var/www/html
docker exec fossbilling_theme_whc-fossbilling-1 chmod 644 /var/www/html/config.php
docker exec fossbilling_theme_whc-fossbilling-1 chown -R www-data: /var/www/html/themes
docker exec fossbilling_theme_whc-fossbilling-1 ls -alh /var/www/html/config.php

set +x 
echo 'login with your admin creds at: http://localhost:5080/admin'
