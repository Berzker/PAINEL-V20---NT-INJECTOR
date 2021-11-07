#!/bin/bash
database="/root/usuarios.db"
while read uline
        do
                user="$(echo $uline | cut -d' ' -f1)"
                [[ -e /etc/openvpn/openvpn-status.log ]] && ovp="$(cat /etc/openvpn/openvpn-status.log | grep -E ,"$user", | wc -l)" || ovp=0
                [[ "$(grep -wc $user /etc/passwd)" != '0' ]] && {
                        s1ssh="$(ps -u $user | grep -c sshd)"
                        conex=$(($s1ssh + $ovp))
                        tput setaf 3 ; tput bold ; printf '  %-35s%s\n' $user,$conex,; tput sgr0
                }
done < "$database"
