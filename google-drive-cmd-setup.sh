#!/bin/sh


## ==========================
## ===  GOOGLE DRIVE CMD  ===
## ==========================

# Add drive repository
sudo add-apt-repository -y ppa:twodopeshaggy/drive
sudo apt-get update

# Install go (language) for the google drive command
sudo apt-get -y install golang

# Install Drive (didn't test this one yet, hope this works)
sudo apt-get -y install drive
