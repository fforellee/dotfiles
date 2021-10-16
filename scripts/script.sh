#! /bin/bash
cd ~
pacman -S --needed .dotfiles/packages
yay -S .dotfiles/aur
ln -s .dotfiles/.* ~/
#create user fforelle
useradd -m -G 
