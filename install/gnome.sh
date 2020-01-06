#!/bin/sh

# Ask for the administrator password upfront
sudo -v
apt-get -qq -y install gnome-tweak-tool gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0

sudo wget -O /usr/local/bin/gnomeshell-extension-manage "https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/ubuntugnome/gnomeshell-extension-manage"
sudo chmod +x /usr/local/bin/gnomeshell-extension-manage
sudo apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0

#user themes
gnomeshell-extension-manage --install --extension-id 19 --user

# Net Speed 
gnomeshell-extension-manage --install --extension-id 104 --user

# Refresh Wifi Connections  
gnomeshell-extension-manage --install --extension-id 905 --user

# Sound Input & Output Device Chooser  
gnomeshell-extension-manage --install --extension-id 906 --user

# system-monitor
gnomeshell-extension-manage --install --extension-id 120 --user
gsettings set org.gnome.shell.extensions.system-monitor cpu-show-text false
gsettings set org.gnome.shell.extensions.system-monitor icon-display false
gsettings set org.gnome.shell.extensions.system-monitor fan-show-menu false
gsettings set org.gnome.shell.extensions.system-monitor memory-show-text false
gsettings set org.gnome.shell.extensions.system-monitor net-display false
gsettings set org.gnome.shell.extensions.system-monitor net-show-menu false
gsettings set org.gnome.shell.extensions.system-monitor swap-show-menu false
gsettings set org.gnome.shell.extensions.system-monitor thermal-show-menu false

#Clipboard Indicator
gnomeshell-extension-manage --install --extension-id 779 --user
gsettings set org.gnome.shell.extensions.clipboard-indicator history-size 100

gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

# Reload Gnome Shell
# gnome-shell --replace &

# Guake Terminal
gsettings set apps.guake.general default-shell '/usr/bin/zsh'
gsettings set apps.guake.general use-popup false
gsettings set apps.guake.general start-fullscreen true
gsettings set apps.guake.keybindings.global show-hide 'F1'
gsettings set apps.guake.keybindings.global toggle-fullscreen 'F2'
