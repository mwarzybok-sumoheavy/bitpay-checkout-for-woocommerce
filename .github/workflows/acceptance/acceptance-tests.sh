#!/usr/bin/env bash

echo "ACCEPTANCE TESTS"
ls -lha

#pwd
#/home/runner/work/bitpay-checkout-for-woocommerce/bitpay-checkout-for-woocommerce

ls -lha /etc/

mysql -h127.0.0.1 -uroot -proot bitpay-wordpress-test <./.github/workflows/acceptance/dump.sql && echo "Restored Database"

sudo a2enmod rewrite
sudo systemctl apache2 status
sudo systemctl apache2 restart