#!/bin/bash

#irá jogar uma mensagem na tela de alerta pq não é para a versão 28.
wget http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.3.10-1.fc27.x86_64.rpm

sudo dnf -y install ./mysql-workbench-community-6.3.10-1.fc27.x86_64.rpm

rm ./mysql-workbench-community-6.3.10-1.fc27.x86_64.rpm
#sudo dnf -y install mysql-workbench-community