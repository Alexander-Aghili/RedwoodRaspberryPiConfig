#/usr/bin/bash

#Installing all the basics required for each pi and running correct commands
#This requires internet access, therefore a connection should be established before connecting to internal pi network
#Also, there is user input required to click y for upgrade and install default-jdk

sudo apt update
sudo apt upgrade

sudo apt install default-jdk

sudo apt install network-manager
sudo nmcli radio wifi off
sudo rm -f /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo -e '\nctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev\nupdate_config=1\ncountry=US' >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo -e 'network={\nssid="RedwoodCSNetwork"\npsk="RedwoodRHSNetworkPassword"\nkey_mgmt=WPA-PSK\n}' >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo nmcli radio wifi on


