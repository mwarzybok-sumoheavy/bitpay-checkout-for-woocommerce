#!/usr/bin/env bash

ls -lha

mysql -h127.0.0.1 -uroot -proot bitpay-wordpress-test <./.github/workflows/acceptance/dump.sql && echo "Restored Database"



a2enmod rewrite
systemctl apache2 status
systemctl apache2 restart