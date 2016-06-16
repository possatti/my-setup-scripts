#!/bin/sh


# Gnome Tweak Tool
sudo apt-get -y install gnome-tweak-tool

# Show options to change on Gnome Tweak Tool
tail -n 17 "`pwd`/$0"

## ===================================================
## =====  OPTIONS TO CHANGE ON GNOME TWEAK TOOL  =====
## ===================================================
# - Appearence > Global Dark Theme: ON
# - Appearence > Enable Animations: OFF
# - Desktop > Lock Screen Location: Firefox_wallpaper.png
# - Extensions > Alternatetab: ON
# - Extensions > Removable drive menu: ON
# - Startup Applications > + Guake Terminal
# - Startup Applications > + Transmission
# - Top Bar > Show date: Check
# - Workspaces > Workspace Creation: Static

## ===================================================
## =====  SHORTCUTS KEYBOARDS TO CHANGE  =====
## ===================================================
# - Settings > Keyboard > Shortcuts > System > Lock Screen: Ctrl+Alt+L
