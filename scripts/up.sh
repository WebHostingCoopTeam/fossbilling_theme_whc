#!/usr/bin/env bash
docker compose up -d
echo '
login to http://localhost:5080/
here are the database details
Hostname: mysql
port: 3306
Database: fossbilling
Username: fossbilling
Password: fossbilling
'
