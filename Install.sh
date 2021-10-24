php7.4 bin/magento setup:uninstall

php7.4 bin/magento setup:install \
--base-url=http://localhost:8888 \
--db-host=127.0.0.1:1234 \
--db-name=magento \
--db-user=root \
--db-password=root \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=admin@admin.com \
--admin-user=admin \
--admin-password=admin123 \
--language=en_US \
--currency=EGP \
--timezone=Africa/Cairo \
--use-rewrites=1

php7.4 bin/magento module:disable Magento_TwoFactorAuth --clear-static-content

php7.4 bin/magento cron:install

php7.4 bin/magento cron:run