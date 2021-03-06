#!/bin/sh


# Confirm that the user wants to do this
read -p 'Are you sure you want to run the Ubuntu setup script? If so, answer "sure": ' answer
if [ "$answer" = 'sure' ]; then
	echo 'Ok... You asked for it.'
else
	echo 'Aborting!'
	exit
fi


## ================================
## =====  MANUAL STUFF TO DO  =====
## ================================
# 1. Install MegaSync and set it up
# 2. check that the ~/MEGAsync/Music, Pictures, etc folders have been initialized)
# 3. Install Sublime Text, Package Control and extensions:
#   3.1. MoveTab
#   3.2. EditorConfig
#   3.2. a portuguese dictionary (https://packagecontrol.io/packages/Dictionaries)
# 4. Change settings in the Appearence settings
# 5. Change Wallpaper. :D


## ============================================
## ===  LINK CLOUD DIRECTORIES (FROM MEGA)  ===
## ============================================
# Install MEGA (this is manual, I hope you've done it already)

# Link Directories
rm -r ~/Music
ln -s MEGAsync/Music Music
rm -r ~/Pictures
ln -s MEGAsync/Pictures Pictures
rm -r ~/Videos
ln -s MEGAsync/Videos Videos
ln -s MEGAsync/bin bin


## ========================
## ===  OTHER SOFTWARE  ===
## ========================
# Install Guake (remember to configure it)
sudo apt-get -y install guake
# Install htop
sudo apt-get -y install htop
# Install tree
sudo apt-get -y install tree
# Install curl
sudo apt-get -y install curl
