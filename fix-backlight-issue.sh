#!/bin/sh


## =============================
## ===  FIX BACKLIGHT ISSUE  ===
## =============================
## In my computer, the brightness adjustment never worked for me
## with any of Ubuntu distros. This script changes grub and fix
## the issue.

# Put 'acpi_osi=Linux acpi_backlight=vendor' into the GRUB_CMDLINE_LINUX variable and update grub
sudo chmod o+w /etc/default/grub
cat /etc/default/grub | sed -r 's/GRUB_CMDLINE_LINUX="(.*)"/GRUB_CMDLINE_LINUX="\1 acpi_osi=Linux acpi_backlight=vendor"/' > $HOME/grub-fix
cp $HOME/grub-fix /etc/default/grub
sudo chmod o-w /etc/default/grub
rm $HOME/grub-fix
sudo update-grub
