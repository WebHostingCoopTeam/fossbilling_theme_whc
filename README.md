# fossbilling_theme_whc
WHC Theme for FOSSbilling

This is a docker-compose directory to help with theme development.

### Install

First untar the themes directory:

```
tar zxvf themes.tgz
```

Then bring up the containers:

```
docker compose up -d
```

or use the script:

[up.sh](./scripts/up.sh)

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

[post-install.sh](./scripts/post-install.sh)

Now you can login here:

```
http://localhost:5080/admin
```

### Cron

You can simulate the cronjob with a simple:



```
docker exec fossbilling_theme_whc-fossbilling-1 php /var/www/html/cron.php
```

or use the script:

[cronjob.sh](./scripts/cronjob.sh)

or add it to your own cron:

```
*/5 * * * * docker exec fossbilling_theme_whc-fossbilling-1 php /var/www/html/cron.php
```

### Reset

Want to try again with a full reset? Do this

[full-reset.sh](./scripts/full-reset.sh)

### Other scripts

[exec.sh](./scripts/exec.sh) - exec a shell inside the fossbilling container

[logs.sh](./scripts/logs.sh) - get logs form the fossbilling container
