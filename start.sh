cp -Rv /template/galleries/* /var/www/galleries/
cp -Rv /template/themes/* /var/www/themes/
cp -Rv /template/plugins/* /var/www/plugins/
cp -Rv /template/local/* /var/www/local/

chown -R www-data. /var/www/*
php-fpm -D && lighttpd -D -f /etc/lighttpd/lighttpd.conf
