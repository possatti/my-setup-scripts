#!/bin/sh


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
