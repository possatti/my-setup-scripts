#!/bin/sh


## ======================
## ===  TRANSMISSION  ===
## ======================

# Install Transmission
sudo apt-get -y install transmission

# Show message bellow
tail -n 6 "`pwd`/$0"

## ================================
## ===  CONFIGURE TRANSMISSION  ===
## ================================
## - Configure Transmission's "turtle" (haha)
## - To improve the script, automate the change on '~/.config/transmission/settings.json'
