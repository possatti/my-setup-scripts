#!/bin/sh

## == About ==
##
## This is a script to make my life easier. It downloads, installs
## and sets most of the stuff I use all the time. So when I install
## another Ubuntu OS on my computer I will have most of the initial
## stuff automated.
##
## == Instructions ==
##
## Before running the script, double check that everything is how
## it's supposed to be. Comment out the lines you don't want. And
## write new lines for things that I forgot, or didn't care at the
## time. That's it. Cheers.
##
## by possatti


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
#   3.2. a portuguese dictionary
# 4. Change settings in the Appearence settings
# 5. Change Wallpaper. :D


## =============================
## ===  FIX BACKLIGHT ISSUE  ===
## =============================
# Put 'acpi_osi=Linux acpi_backlight=vendor' into the GRUB_CMDLINE_LINUX variable and update grub
sudo chmod o+w /etc/default/grub
cat /etc/default/grub | sed -r 's/GRUB_CMDLINE_LINUX="(.*)"/GRUB_CMDLINE_LINUX="\1 acpi_osi=Linux acpi_backlight=vendor"/' > /etc/default/grub
sudo chmod o-w /etc/default/grub
sudo update-grub


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
