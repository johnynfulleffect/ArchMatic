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
su john
git clone https://github.com/ChrisTitusTech/material-awesome.git ~/.config/awesome

sed -i 's/^gtk-theme-name=Adwaita/gtk-theme-name=Materia-dark/' ~/.icons/default/index.theme
sed -i 's/^gtk-icon-theme-name=Adwaita/gtk-icon-theme-name=Papirus-Dark/' ~/.icons/default/index.theme

# Configure zsh
