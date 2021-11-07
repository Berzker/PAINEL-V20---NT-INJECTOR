__Painel-v20__

__Recomendado__
- Ubuntu 14
<a href="https://github.com/NT-GIT-HUB/VPS-MANAGER-1.0" target="_blank">
  Compativel com VPS Manager
</a>
<br>
__Comando para instalar__

```apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/NT-GIT-HUB/PAINEL-V20/main/install; chmod 777 install && ./install```

__Comando para instalar new__

```apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/NT-GIT-HUB/PAINEL-V20/main/install_new; chmod 777 install_new && ./install_new```

-------------------------------------------------------------------------------
__SINCRONIZAR PAINEL WEB__

```bash <(wget -qO- https://raw.githubusercontent.com/NT-GIT-HUB/PAINEL-V20/main/modulos/inst)```

-------------------------------------------------------------------------------
__TUTORIAL DE COMO IMPORTAR O BANCO DE DADOS (painel.sql)  EM UM NOVO PAINEL__

* 1 Baixe o banco de dados (painel.sql) nas configurações do painel atual
* 2 Apos instalar o script do painel em uma nova vps, coloque o arquivo (painel.sql) no diretório /root da nova vps, via SFTP
* 3 Execulte o comando abaixo e seja feliz !

__INSTALAÇÃO BACKUP-PAINEL-V20 (Script de restauração da base de dados do painel v20)__

```bash <(wget -qO- https://raw.githubusercontent.com/NT-GIT-HUB/PAINEL-V20/main/restaurar.sh)```

__OBS: A SENHA ADMIN SERA A MESMA SENHA DO PAINEL ANTERIOR !__

-------------------------------------------------------------------------------
![logo](https://github.com/NT-GIT-HUB/PAINEL-V20/blob/main/home.png)
