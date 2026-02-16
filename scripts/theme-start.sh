#!/usr/bin/env bash
set -eux

cd /var/www/html
composer install
cd /var/www/html/themes/fb_whc
#npm install @symfony/webpack-encore --save-dev
#composer require symfony/webpack-encore-bundle
npm i
npm run build
