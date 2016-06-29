#!/bin/sh


# Download Sublime Text 3 (32 bit)
download_page=`wget "http://www.sublimetext.com/3" -O - `
download_subl_to="$HOME/Downloads/sublime-text.deb"
download_url=$(echo $download_page | sed -nr 's;.*<a href="(https://download.sublimetext.com/sublime-text_build-[[:digit:]]+_i386.deb)">Ubuntu 32 bit</a>.*;\1;p')
echo "Downloading Sublime Text 3 from '$download_url' to '\$HOME/Downloads/'..."
wget "$download_url" -O "$download_subl_to"
sudo dpkg -i "$download_subl_to"


# Download Package Control
mkdir -p "$HOME/.config/sublime-text-3/Installed Packages"
wget "https://sublime.wbond.net/Package%20Control.sublime-package" -O "$HOME/.config/sublime-text-3/Installed Packages/Package Control.sublime-package"


# Write up packages to be installed
#  - http://stackoverflow.com/questions/19529999/add-package-control-in-sublime-text-3-through-the-command-line
mkdir -p "$HOME/.config/sublime-text-3/Packages/User"
cat > "$HOME/.config/sublime-text-3/Packages/User/Package Control.sublime-settings" << EOF
{
        "bootstrapped": true,
        "in_process_packages":
        [
        ],
        "installed_packages":
        [
                "EditorConfig",
                "Markdown Extended",
                "Monokai Extended",
                "MoveTab"
        ]
}
EOF


# Download Portuguese Dictionaries
# Read:
#  - https://packagecontrol.io/packages/Dictionaries
#  - http://www.sublimetext.com/docs/3/spell_checking.html
dict_path="$HOME/.config/sublime-text-3/Packages/User/Portuguese (Brazilian)"
mkdir -p "$dict_path"
wget "https://raw.githubusercontent.com/titoBouzout/Dictionaries/master/Portuguese%20(Brazilian).aff" -O "$dict_path/Portuguese (Brazilian).aff"
wget "https://raw.githubusercontent.com/titoBouzout/Dictionaries/master/Portuguese%20(Brazilian).dic" -O "$dict_path/Portuguese (Brazilian).dic"
wget "https://raw.githubusercontent.com/titoBouzout/Dictionaries/master/Portuguese%20(Brazilian).txt" -O "$dict_path/Portuguese (Brazilian).txt"


# NOTE: All packages should install normally when sublime restarts.
