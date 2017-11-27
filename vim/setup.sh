#!/bin/bash

# Install vim package
sudo apt update > /dev/null
sudo apt install -y vim

# Sym-link .vimrc file
rm ~/.vimrc &> /dev/null
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
