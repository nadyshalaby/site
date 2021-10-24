## Install magento project
```
sudo docker-compose up -d
sh ./Install.sh
```
## Remove database docker completely
```
sudo docker-compose stop
sudo docker-compose rm
sudo docker rmi mariadb:10.2
```
## Disable Two-Factor Authentication
```
php7.4 bin/magento module:disable Magento_TwoFactorAuth --clear-static-content
```
## Run magento locally
```
php7.4 -S 127.0.0.1:8888 -t ./pub/ ./phpserver/router.php
```
## Install crons
```
php7.4 bin/magento cron:install
```
## Remove crons
```
php7.4 bin/magento cron:remove
```
## Run all crons
```
php7.4 bin/magento cron:run
```
## Run index crons
```
php7.4 bin/magento cron:run --group index
```