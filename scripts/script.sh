#! /bin/bash

# installing my packages
neovim 0.4.4-2 vim 8.2.2891-1 vim-plug 0.10.0-1 vim-runtime 8.2.2891-1 vimb-git 3.6.0.r1719.652f411-1
zathura 0.4.7-1 zathura-pdf-poppler 0.3.0-1
xorg
xorg-xinit
sudo
# create new user
useradd -m fforelle fforelle 

# installing aur pacakges 
#-------fforelle-------#

sudo fforelle
cd ~
git clone https://aur.archlinux.org/yay.git
# installing aur pacakges 
yay -S translate-shell
yay -S pywal
yay -S vim-plug
#-------end-fforelle-------#
# dotfiles
sudo root #-------ROOT-------#
cd ~
git clone https://github.com/fforellee/dotfiles
mv dotfiles .dotfiles

# setting up dwm
git clone #link
cd ~/dwm/
makeinstall

#-------END-ROOT-------#

