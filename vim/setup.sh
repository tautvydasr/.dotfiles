#!/bin/bash

rm ~/.config/nvim &> /dev/null
mkdir -p ~/.config/nvim &> /dev/null

ln -s ~/.dotfiles/vim/nvim-config ~/.config/nvim

