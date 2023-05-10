#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_ADM
useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_ADM
useradd joao -m -c "João da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_ADM

useradd debora -m -c "Débora da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_VEN
useradd roberto -m -c "Roberto da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_VEN

useradd josefina -m -c "Josefina da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_SEC
useradd amanda -m -c "Amanda da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_SEC
useradd rogerio -m -c "Rogério da Silva" -s /bin/bash -p $(openssl passwd -crypt SenhadoUsuario) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."