#!/bin/bash

echo "Iniciando processo..."

##"Criar diretórios"
mkdir publico adm ven sec

##Permissões pastas
chmod 777 /publico 
chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec

##"Criar grupos"
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

##"Criar usuário"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd rogerio -e

##Setar dono de pastas e grupos
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Processo Finalizado!!!"