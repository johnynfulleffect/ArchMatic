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

lxappearance

sed -i 's/^gtk-theme-name=Adwaita/gtk-theme-name=Materia-dark/' ~/.config/gtk-3.0/settings.ini
sed -i 's/^gtk-icon-theme-name=Adwaita/gtk-icon-theme-name=Papirus-Dark/' ~/.config/gtk-3.0/settings.ini

echo 'awesome.restart()' | awesome-client

# Configure zsh
touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

sudo curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o /usr/share/fonts/TTF/MesloLGS%20NF%20Regular.ttf
sudo chmod 0444 MesloLGS%20NF%20Regular.ttf
sudo curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -o /usr/share/fonts/TTF/MesloLGS%20NF%20Bold.ttf
sudo chmod 0444 MesloLGS%20NF%20Bold.ttf
sudo curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -o /usr/share/fonts/TTF/MesloLGS%20NF%20Italic.ttf
sudo chmod 0444 MesloLGS%20NF%20Italic.ttf
sudo curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -o /usr/share/fonts/TTF/MesloLGS%20NF%20Bold%20Italic.ttf
sudo chmod 0444 MesloLGS%20NF%20Bold%20Italic.ttf

fc-cache

exit
