#!/bin/sh

# Daily builds PPA
sudo add-apt-repository ppa:snwh/pulp
# Update repository info
sudo apt-get update
# Install Icon Theme
sudo apt-get -y install paper-icon-theme
# Install GTK Theme
sudo apt-get -y install paper-gtk-theme
# Install Cursor Theme
sudo apt-get -y install paper-cursor-theme
