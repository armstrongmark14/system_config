#!/bin/bash

# Script for configuring a fresh system

# Creating folders
mkdir ~/backups ~/bin ~/books ~/code ~/financial ~/jobs ~/school
mkdir ~/.icons ~/.ssh ~/.themes

# Cloning my setup repo
cd ~/code
git clone https://github.com/armstrongmark14/system_config.git

# Moving config files
mv ~/code/system_config/.bashrc ~/.bashrc
mv ~/code/system_config/.vimrc ~/.vimrc

# Installing vim plugins
sh ~/code/system_config/plugins/plugins.sh

