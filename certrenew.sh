echo "[*] Starting cerbot renewal systemd service"
    # preparing script background work and work under reboot
echo "[*] Creating cerbot renewal hook service"
echo
echo "\"sudo nano /etc/letsencrypt/renewal/$_domain.conf\""
echo "Next, append the following commands to the end of the file:"
echo "\"renew_hook = systemctl restart mosquitto.service\" for the restarting the websocket service"
echo "Please check the renewal service \"sudo systemctl status certbot.timer\" for the service status"