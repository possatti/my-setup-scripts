#!/usr/bin/fish


## ====================
## ===  FISH SHELL  ===
## ====================

# Install Fish
sudo apt-get -y install fish

# Make it the default shell
chsh -s /usr/bin/fish

# Remove annoying message from the top
fish -c set -U fish_greeting ""

# Generate completion files from man pages
fish_update_completions

# Show message bellow
tail -n 7 "`pwd`/$0"

## ===================================
## ===  FISH MANUAL CONFIGURATION  ===
## ===================================
# - Run `fish_config` to set the prompt and theme
# - If you got time, read this:
#   - https://hackercodex.com/guide/install-fish-shell-mac-ubuntu/
