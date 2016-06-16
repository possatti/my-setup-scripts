#!/bin/sh


# Install Unity Tweak Tool
sudo apt-get -y install unity-tweak-tool

# Install Numix theme and icons
sudo apt-get -y install numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Show options to change on Unity Tweak Tool
tail -n 7 "`pwd`/$0"

## ===================================================
## =====  OPTIONS TO CHANGE ON UNITY TWEAK TOOL  =====
## ===================================================
# - Multiple Workspaces
# - Hide laucher bar
# - Set numix themes and icons
