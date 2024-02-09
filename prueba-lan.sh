#!/bin/bash

echo
#Ping para exterior
echo “ping -c 1 8.8.8.8”
ping -c 1 8.8.8.8 &>/dev/null
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con exterior"
else
        echo "No es posible la conexión con exterior"
fi

echo
#Ping para fachada
echo “ping -c 1 172.22.225.64”
ping -c 1 172.22.225.64 &>/dev/null
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con fachada"
else
        echo "No hay conexión con fachada"
fi

echo

#Ping para dmz
echo “ping -c 1 192.168.111.2”
ping -c 1 192.168.111.2 &>/dev/null
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con dmz"
else
        echo "No es posible la conexión con dmz"
fi

echo

#Resolver dns
echo “nslookup www.google.com”
nslookup www.google.com &>/dev/null
if [ $? -eq 0 ]
then
       echo "Si es capaz de resolver hacia el exterior"
else
        echo "No es capaz de resolver hacia el exterior"
fi

echo
#Para comprobar si el puerto está abierto
echo “curl http://portquiz.net:80”
curl http://portquiz.net:80 &>/dev/null
if [ $? -eq 0 ]
then
        echo "El puerto 80 está aceptado"
else
        echo "El puerto 80 está denegado"
fi

echo
echo “curl https://www.google.com:443”
curl https://www.google.com:443 &>/dev/null
if [ $? -eq 0 ]
then
        echo "El puerto 443 está aceptado"
else
        echo "El puerto 443 está denegado"
fi

echo
