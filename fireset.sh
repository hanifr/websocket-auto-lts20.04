sudo ufw enable
sudo ufw allow OpenSSH
sudo ufw allow 80
# Allow Websocket ports
sudo ufw allow 1880
sudo ufw allow 8883
sudo ufw allow 8888
echo "${_YELLOW}Now the firewall is enabled.${_RESET}"
echo
echo "${_YELLOW} Ports OpenSSH, 80, 1880, 8883, and 8888 are all active.${_RESET}"
echo "${_MAGENTA}Installation Progress....securing the droplet :: completed${_RESET}"