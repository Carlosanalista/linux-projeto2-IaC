#!/bin/bash

#Infrastructure as Code (IaC) é o gerenciamento e provisionamento da infraestrutura por meio de códigos.

#Primeiro vamos atualizar o Servidor

echo "Atualizando o Servidor"
apt-get update
apt-get upgrade -y

#Vamos instalar o apache2 e o unzip

echo "Instalando Apache2"
apt-get install apache2 -y
systemctl enable apache2

echo "Instalando unzip"
apt-get install unzip -y

#Vamos baixar a aplicação do github e colocar na pasta /tmp

echo "Baixando e colocando a aplicação na pasta TMP"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

#Vamos copiar a aplicação para o diretório padrão do apache

echo "Copiando os arquivos para diretório do apache"
cd linux-site-dio-main
cp  -R * /var/www/html/ 

