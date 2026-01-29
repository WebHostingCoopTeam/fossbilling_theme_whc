#!/usr/bin/env bash
set -eux
docker compose up -d
set +x
echo '
login to http://localhost:5080/
here are the database details
Hostname: mysql
port: 3306
Database: fossbilling
Username: fossbilling
Password: fossbilling
'
