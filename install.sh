#!/bin/bash


#color-foregground
red='\e[31m'
light_red='\e[1;31m'
green='\e[32m'
light_green='\e[1;32m'
yellow='\e[1;33m'
brown='\e[33m'
blue='\e[34m'
done='\e[0m'

bold='\e[1m'
under_line='\e[4m'
blink='\e[5m'

echo -e "$yellow[i]$done Access$blink$red venom$done from anywhere on your terminal?$bold Y/N$done"
read -p ":" ans

if [ $ans == Y ] || [ $ans == y ];
then
    chmod +x venom.sh
    echo -e "$green[+]$done You need root permission..."
    sudo cp ./venom.sh /bin/venom
    echo -e "$blue[!]$done Done... now you can access$red venom$done from anywhere on your terminal"
    sleep 1
    echo -e "$yellow[!]$done$bold Happy Hunting$done$yellow[!]$done"
    sleep 1
    venom;
elif [ $ans == N ] || [ $ans == n ];
then
    chmod +x venom.sh
    mv venom.sh venom
    echo -e "$green[!]$done Done..."
    sleep 1
    echo -e "$green[!]$done Now you have to use ./venom to run venom"
    sleep 1
    echo -e "$yellow[!]$done$bold Happy Hunting$done$yellow[!]$done"
    sleep 1
    ./venom;
else
    echo -e "$yellow[!]$done$red Invalid command...$done"
    sleep 1
    echo -e "$yellow[x]$done$green Try again$done"
fi
