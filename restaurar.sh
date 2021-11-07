#!/bin/bash
#---------------------------------------------------------------------
# CRIADO POR @CRAZY_VPN
# CANAL OFICIAL @PAINEL (TELEGRAM)
#----------------------------------------------------------------------
clear

echo -e "\033[1;33mESSE SCRIPT RESTAURA O BANCO DE DADOS\n(BACKUP) DO PAINEL PAINEL V20 !\033[0m" 
echo -e "\n\033[1;33mÉ NECESSÁRIO O PAINEL INSTALADO E O\nAQUIVO (\033[1painel.sql.sql\033[1;33m) NO DIRETORIO ROOT !\033[0m\n" 
echo -ne "\033[1;32mEnter para continuar...\033[0m"; read

[[ ! -e /var/www/html/pages/system/pass.php ]] && {
	echo -e "\n\033[1;31mO PAINEL NAO ESTA INSTALADO !\033[0m"; exit 0
}

[[ ! -e $HOME/painel.sql ]] && {
	echo -e "\n\033[1;31mARQUIVO (\033[1;32mpainel.sql\033[1;31m) NAO ENCONTRADO !\033[0m"; exit 0
}

passdb=$(cut -d"'" -f2 /var/www/html/pages/system/pass.php)
[[ $(mysql -h localhost -u root -p$passdb -e "show databases" | grep -wc painel) == '0' ]] && {
	echo -e "\n\033[1;31mSEU PAINEL NAO É COMPATIVEL !\033[0m"; exit 0
}

mysql -h localhost -u root -p$passdb -e "drop database painel"
mysql -h localhost -u root -p$passdb -e 'CREATE DATABASE painel'
mysql -h localhost -u root -p$passdb --default_character_set utf8 painel < painel.sql
echo -e "\n\033[1;32mBACKUP RESTAURADO !\033[0m"
