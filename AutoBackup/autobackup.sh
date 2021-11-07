#!/bin/bash
clear
DirBackup="banco28653"
rm /var/www/html/admin/pages/apis/$DirBackup/painel.sql > /dev/null 2>&1
senha=$(cat /var/www/html/pages/system/pass.php |cut -d"'" -f2)
mysqldump -u root -p$senha painel > /var/www/html/admin/pages/apis/$DirBackup/painel.sql