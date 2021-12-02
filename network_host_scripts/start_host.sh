#/usr/bin/bash

#This is a file you should run for the host network upon downloading this git repository.
#It will download proper dependencies, set up the files, and run the configurations.
#If you want to change network details, go to host_network_init.sh and alter the network name and wpa_passphrase
#Then run the chmod command and shown below


#Ensure you run as sudo

sudo apt install hostapd
sudo apt install dnsmasq

chmod u+x ./host_network_init.sh
chmod u+x ./start_network.sh
chmod u+x ./stop_network.sh

sudo ./host_network_init.sh
