#!/bin/sh


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