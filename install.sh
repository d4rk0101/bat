#!/bin/bash
clear
neofetch
echo -e "\e[0;34m[ \e[3;35mVerifying Internet Connection \e[0;34m]\n"
wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo -e "\e[3;35mConected to internet \e[31m[\e[32m✓\e[31m]"
else
    echo -e "\e[3;35mYou are not connected to the Internet \e[32m[\e[31m!\e[32m]"
    exit
fi
echo -e "\n\e[0;34m[ \e[3;35mStarting Installation... \e[0;34m]\n"
echo -e "\e[3;35mInstalling : python, python2, git, figlet, tor, curl\n"
apt install python python2 git figlet tor curl
echo -e "\n\e[3;35mInstalling : ighack\n"
cd $HOME
git clone https://github.com/noob-hackers/ighack.git
echo -e "\n\e[3;35mInstalling : tweetshell\n"
cd $HOME
git clone https://github.com/Mehran/tweetshell
echo -e "\n\e[3;35mInstalling : rockyou.txt\n"
cd $HOME/bat
wget https://raw.githubusercontent.com/josuamarcelc/common-password-list/main/rockyou.txt/rockyou_1.txt
mv rockyou_1.txt $HOME/bat/hash
echo -e "\n\e[3;35mInstalling python modules : requests, stem, instagram-py\n"
pip install requests requests[socks] stem instagram-py
echo -e "\e[0;0m"
sleep 2
bash bat.sh
