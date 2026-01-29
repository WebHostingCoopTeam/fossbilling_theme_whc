#!/usr/bin/env bash
set -eux
docker exec fossbilling_theme_whc-fossbilling-1 php /var/www/html/cron.php
