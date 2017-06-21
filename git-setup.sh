#!/bin/sh


## =============
## ===  GIT  ===
## =============

# Install git
sudo apt-get -y install git

# Get user name and e-mail
git config --global user.name "Lucas Possatti"
git config --global user.email "lucas_possatti@hotmail.com"

# Adopt the new behavior for push.default
git config --global push.default simple

# Use terminal to ask for username and password
git config --global core.askpass ""

# Git aliases
git config --global alias.s 'status --short --branch'
git config --global alias.c 'checkout'
git config --global alias.d 'diff'
git config --global alias.dc 'diff --cached'
git config --global alias.wd 'diff --word-diff'
git config --global alias.wdc 'diff --word-diff --cached'
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.l '!git lg'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.ff 'merge --ff-only'

# Ignore
mkdir -p "$HOME/.config/git"
echo 'nohup.out' >> $HOME/.config/git/ignore
echo '*.bkp' >> $HOME/.config/git/ignore
echo '*.log' >> $HOME/.config/git/ignore
