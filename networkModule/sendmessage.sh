#/bin/sh
#salve o script como sendmessage. use-o assim sendmessage BUTTERS "isto é uma mensagem"
    echo $2 >/tmp/message
    netbios="$1#03"
    netbios_ip=`/usr/bin/nmblookup $netbios |grep "$net_user<03>"|cut -f
1 -d " "`
    echo "tentando enviar mensagem para $net_user ($netbios_ip)..."
    if [ "$netbios_ip" != "" ] ; then
       echo "   [OK] mensagem enviada com sucesso !"
       /usr/bin/smbclient -M $net_user -I $netbios_ip </tmp/message
>/dev/null
    else
      echo "    [FALHOU] usuario $net_user nao foi encontrado na rede."
    fi;
