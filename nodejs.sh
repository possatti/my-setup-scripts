#!/bin/sh

sudo apt-get -y install nodejs
sudo apt-get -y install npm
echo 'alias node=nodejs' >> $HOME/.bashrc
fish -c 'alias node nodejs; funcsave node'
