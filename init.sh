#!/bin/bash

create_dir_tree(){

    mkdir ~/{livros,Livros,imgs,.emacs.d,.config};
    mkdir -p ~/.config/{qutebrowser,i3,nvim,alacritty};
    git clone https://github.com/fforelle/baum;

    }

create_symlinks(){
    ln -s /home/fforelle/dotfiles/dotfiles/alacritty.yml /home/fforelle/.config/alacritty/;
    ln -s /home/fforelle/dotfiles/dotfiles/init.vim      /home/fforelle/.config/nvim/;
    ln -s /home/fforelle/dotfiles/dotfiles/init.vim      /home/fforelle/.vimrc;
    ln -s /home/fforelle/dotfiles/dotfiles/config        /home/fforelle/.config/i3/;
    ln -s /home/fforelle/dotfiles/dotfiles/config.py     /home/fforelle/.config/qutebrowser/;
    ln -s /home/fforelle/dotfiles/dotfiles/init.org      /home/fforelle/.emacs.d/;
    ln -s /home/fforelle/dotfiles/dotfiles/init.el       /home/fforelle/.emacs.d/;
    ln -s /home/fforelle/dotfiles/dotfiles/init.org      /home/fforelle/.emacs.d/;
    ln -s /home/fforelle/dotfiles/dotfiles/.zshrc        /home/fforelle/;
    ln -s /home/fforelle/dotfiles/dotfiles/.xinitrc      /home/fforelle/;
    }

install_packages(){
    pacman -S -< ~/dotfiles/packages;
    }

update_packages(){
    pacman -Qqen >> ~/dotfiles/packages;
    }
update_packages
