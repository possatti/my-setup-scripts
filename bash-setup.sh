#!/bin/sh


## ==============
## ===  BASH  ===
## ==============

# Put a pretty theme to bash's prompt
echo '' >> ~/.bashrc
echo '# Custom prompt (Brazil color scheme) (@possatti)' >> ~/.bashrc
echo 'export PS1="\[\e[32m\]\u\[\e[m\] at \[\e[33m\]\h\[\e[m\] in \[\e[34m\]\w\[\e[m\] \\$ "' >> ~/.bashrc
