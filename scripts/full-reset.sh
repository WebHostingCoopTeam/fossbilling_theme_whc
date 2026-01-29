#!/usr/bin/env bash
set -x
docker compose down
docker volume rm fossbilling_theme_whc_mysql 
docker volume rm fossbilling_theme_whc_fossbilling
