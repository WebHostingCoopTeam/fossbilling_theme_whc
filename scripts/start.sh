#!/bin/sh
set -eu
THIS_CWD=$(pwd)

if [ -f ./themes/start.sh ]
then
    cd ./themes
    ./start.sh
fi
if [ ${DEBUG} -eq 1 ]
then
    echo 'WARN: DEBUG MODE ENABLED!'
    echo '<?php phpinfo(); ?>' > /var/www/html/phpinfo.php
fi

cd ${THIS_CWD}
cron && apache2-foreground
