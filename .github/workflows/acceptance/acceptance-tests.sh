#!/usr/bin/env bash

echo "ACCEPTANCE TESTS"
ls -lha
pwd

ls -lha /etc/

mysql -hmysql -uroot -proot bitpay-wordpress-test <./.github/workflows/acceptance/dump.sql && echo "Restored Database"

a2enmod rewrite
systemctl apache2 status
systemctl apache2 restart