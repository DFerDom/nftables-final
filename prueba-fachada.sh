#!/bin/bash

echo
#Ping para exterior"
ping -c 1 8.8.8.8 &>/dev/null
echo “ping -c 1 8.8.8.8”
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con exterior"
else
        echo "No es posible la conexión con exterior"
fi
echo 
#Ping para lan
echo “ping -c 1 192.168.33.2”
ping -c 1 192.168.33.2 &>/dev/null
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con lan"
else
        echo "No es posible la conexión con lan"
fi

echo 
#Ping para dmz
ping -c 1 192.168.111.2 &>/dev/null
echo “ping -c 1 192.168.111.2”
if [ $? -eq 0 ]
then
        echo "Si es posible la conexión con dmz"
else
        echo "No es posible la conexión con dmz"

fi

echo
