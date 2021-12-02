#/usr/bin/bash

#Installing all the basics required for each pi and running correct commands
#This requires internet access, therefore a connection should be established before connecting to internal pi network
#Also, there is user input required to click y for upgrade and install default-jdk

sudo apt update
sudo apt upgrade

sudo apt install default-jdk
