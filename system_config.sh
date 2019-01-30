#!/bin/bash

# Script for configuring a fresh system

# Creating folders
mkdir ~/backups ~/bin ~/books ~/code ~/financial ~/jobs ~/school
mkdir ~/.icons ~/.ssh ~/.themes

# Cloning my setup repo
cd ~/code
git clone https://github.com/armstrongmark14/system_config.git

cd system_config

# Moving config files
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp gtk.css ~/.config/gtk-3.0/gtk.css

# Loading the terminal preferences, still need to install fonts manually
dconf load /org/gnome/terminal/legacy/profiles:/ < terminal_profile.dconf

# Installing vim plugins
sh ~/code/system_config/plugins/plugins.sh

