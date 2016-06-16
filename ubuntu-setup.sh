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
## ===  CUSTOM REPOSITORIES  ===
## =============================
#sudo add-apt-repository -y ppa:numix/ppa # No!
sudo add-apt-repository -y ppa:twodopeshaggy/drive
sudo apt-get update


## ==============
## ===  BASH  ===
## ==============
# Put a pretty theme to bash's prompt
echo '' >> ~/.bashrc
echo '# Custom prompt (Brazil color scheme) (@possatti)' >> ~/.bashrc
echo 'export PS1="\[\e[32m\]\u\[\e[m\] at \[\e[33m\]\h\[\e[m\] in \[\e[34m\]\w\[\e[m\] \\$ "' >> ~/.bashrc


## ====================
## ===  FISH SHELL  ===
## ====================
# Install Fish
sudo apt-get -y install fish

# Make the default shell
chsh -s /usr/bin/fish


## =============================
## ===  FIX BACKLIGHT ISSUE  ===
## =============================
# Put 'acpi_osi=Linux acpi_backlight=vendor' into the GRUB_CMDLINE_LINUX variable and update grub
sudo chmod o+w /etc/default/grub
cat /etc/default/grub | sed -r 's/GRUB_CMDLINE_LINUX="(.*)"/GRUB_CMDLINE_LINUX="\1 acpi_osi=Linux acpi_backlight=vendor"/' > /etc/default/grub
sudo chmod o-w /etc/default/grub
sudo update-grub


## =============
## ===  GIT  ===
## =============
# Install git
sudo apt-get -y install git

# Get user name and e-mail
git config --global user.name "Lucas Possatti"
git config --global user.email "lucas_possatti@hotmail.com"

# Git aliases
git config --global alias.s 'status --short --branch'
git config --global alias.d 'diff'
git config --global alias.dc 'diff --cached'
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.l '!git lg'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'


## ======================
## ===  GOOGLE DRIVE  ===
## ======================
# Install go (lang) for the google drive command
sudo apt-get -y install golang

# Install Drive (didn't test this one yet, hope this works)
sudo apt-get -y install drive


## ============================================
## ===  LINK CLOUD DIRECTORIES (FROM MEGA)  ===
## ============================================
# Install MEGA (this is manual, I hope you've done it already)

# Link Directories
#rm -r ~/Music
#ln -s MEGAsync/Music Music
#rm -r ~/Pictures
#ln -s MEGAsync/Pictures Pictures
#rm -r ~/Videos
#ln -s MEGAsync/Videos Videos
ln -s MEGAsync/bin bin


## ================
## ===  PYTHON  ===
## ================
# Install and upgrade pip
sudo apt-get -y install python-pip
pip install --upgrade pip # (sudo?)

# Install virtualenv
sudo pip install virtualenv

# Install virtualenv wrapper
sudo pip install virtualenvwrapper
echo '' >> ~/.bashrc
echo '# virtualenvwrapper (@possatti)' >> ~/.bashrc
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bashrc
echo 'export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
echo 'source /usr/local/bin/virtualenvwrapper_lazy.sh' >> ~/.bashrc


## ========================
## ===  OTHER SOFTWARE  ===
## ========================
# Install Transmission
sudo apt-get -y install transmission
# Install Guake (remember to configure it)
sudo apt-get -y install guake
# Install htop
sudo apt-get -y install htop


## =============================================
## ===  MANUAL STUFF TO DO AFTER THE SCRIPT  ===
## =============================================
## - Configure Transmission's "turtle" (xD)
