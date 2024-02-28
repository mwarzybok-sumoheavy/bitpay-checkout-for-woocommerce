#!/usr/bin/env bash

echo ls -lha

mysql -h127.0.0.1 -uroot -proot bitpay-wordpress-test <./dump.sql && echo "Restored Database"



a2enmod rewrite
service apache2 status
service apache2 restart