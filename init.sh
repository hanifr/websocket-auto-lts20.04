#!/bin/bash
# Colors
_RED=`tput setaf 1`
_GREEN=`tput setaf 2`
_YELLOW=`tput setaf 3`
_BLUE=`tput setaf 4`
_MAGENTA=`tput setaf 5`
_CYAN=`tput setaf 6`
_RESET=`tput sgr0`
# printing greetings

echo "${_MAGENTA}Installation Progress....setup for NGINX block :: started${_RESET}"
echo
sleep 5

# Maintaining the updated version of Certbot
sudo add-apt-repository ppa:certbot/certbot
sudo apt update    
# Install Certbot's package
#works on 20.04LTS
sudo apt-get install certbot

sleep 5
. fireset.sh
   
echo "${_CYAN}Please Enter your domain_name${_RESET} $_domain"
                read -p "Enter your Domain_name or localhost: " _domain
echo
echo "${_CYAN}You have entered $_domain for your domain name${_RESET}"
echo
echo "${_YELLOW} websocket framework is ready for use.${_RESET}"
sleep 5
# Get Let's Encrypt certificate for example.com
#works on 20.04LTS
sudo certbot certonly --standalone --preferred-challenges http -d $_domain
. websock.sh 
sleep 5