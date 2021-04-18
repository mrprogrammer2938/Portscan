#!/usr/bin/bash
# This code write by (Ms.nope)
# installing portscan
printf '\033]2;Installing Portscan installing\a'
clear
echo "installing..."
sleep 1
echo "

   ░█▀▀█ █▀▀█ █▀▀█ ▀▀█▀▀ 　 ░█▀▀▀█ █▀▀ █▀▀█ █▀▀▄ 
   ░█▄▄█ █──█ █▄▄▀ ──█── 　 ─▀▀▀▄▄ █── █▄▄█ █──█ 
   ░█─── ▀▀▀▀ ▀─▀▀ ──▀── 　 ░█▄▄▄█ ▀▀▀ ▀──▀ ▀──▀
             (🅟🅞🅡🅣 🅢🅒🅐🅝)"
echo ""
echo "[*] Checking Internet Connection: "
wget -q --tries=10 --timeout=20 --spider https://google.com
if [[ $? -eq 0 ]]; then
    echo ""
    echo "Internet connected!"
    echo ""
    echo "Installing portscan package..."
    echo ""
    sleep 1
    apt install update
    apt install python3
    apt install python-pip
    pip install --upgrade pip
    chmod +x portscan
    pip install requirments.txt
    echo ""
    echo "finish installing!"
    echo ""
    echo "
          usage:
                ./portscan"
    exit
else
    echo "
         internet disconnected!
         please check your internet connection..."
         sleep 1
    exit
fi       
