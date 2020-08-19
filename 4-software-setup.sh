#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo "-------------------------------------------------"
echo "Setting up software                              "
echo "-------------------------------------------------"

# Configure awesome-wm
git clone https://github.com/ChrisTitusTech/material-awesome.git ~/.config/awesome

sed -i 's/^gtk-theme-name=Adwaita/gtk-theme-name=Materia-dark/' ~/.config/gtk-3.0/settings.ini
sed -i 's/^gtk-icon-theme-name=Adwaita/gtk-icon-theme-name=Papirus-Dark/' ~/.config/gtk-3.0/settings.ini

# Configure zsh
