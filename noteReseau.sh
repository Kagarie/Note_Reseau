#!/bin/bash

#couleur : 
rouge='\e[0;31m'
vert='\e[1;32m'
neutre='\e[0;m'

echo " "
echo -e "${rouge}Les adresses ip présente ne sont la qu'à titre d'exmple"
echo " "
#Routage
echo -e "${rouge}---------------- ROUTGE ----------------"
echo -e "${neutre}Pour fixer l'interface de la machine"
echo -e "${vert}ifconfig etho 192.51.25.192/24"
echo " "
echo -e "${neutre}Pour afficher la table de routage"
echo -e "${vert}route -n"
echo " "
echo -e "${neutre}Pour ajouter une route avec notation CIDR"
echo -e "${vert}route add -net 173.30.0.0/16 gw 193.51.25.122"
echo  " "
echo -e "${neutre}Pour ajouter une route et son masque"
echo -e "${vert}route add -net 193.52.25.0 -netmask 255.255.255.0 gw 193.51.25.3"
echo  " "
echo -e "${neutre}Pour ajouter la passerelle par défaut"
echo -e "${vert}route add default gw 193.51.25.254"
echo " " 
echo -e "${neutre}Pour devenir routeur"
echo -e "${vert}sysctl -w net.ipv4.ip_forward=1 (/etc/systl/conf)"