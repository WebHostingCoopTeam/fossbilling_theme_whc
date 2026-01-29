# fossbilling_theme_whc
WHC Theme for FOSSbilling

This is a docker-compose directory to help with theme development.

### Install

```
docker compose up -d
```

```
http://localhost:5080/
```

```
Hostname: mysql
port: 3306
Database: fossbilling
Username: fossbilling
Password: fossbilling
```

Choose an admin user and password.  Then to run the commands the installer asks you to do these:

```
docker exec fossbilling_theme_whc-fossbilling-1 ls /var/www/html/install
docker exec fossbilling_theme_whc-fossbilling-1 rm -rfv /var/www/html/install
docker exec fossbilling_theme_whc-fossbilling-1 ls /var/www/html
docker exec fossbilling_theme_whc-fossbilling-1 chmod 644 /var/www/html/config.php
docker exec fossbilling_theme_whc-fossbilling-1 ls -alh /var/www/html/config.php
```

Now you can login here:

```
http://localhost:5080/admin
```

### Reset

Want to try again with a full reset? Do this

```
docker compose down
docker volume rm fossbilling_theme_whc_mysql 
docker volume rm fossbilling_theme_whc_fossbilling
```
