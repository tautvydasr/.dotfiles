#!/bin/bash

rm -rf ~/.config/nvim &> /dev/null
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/nvim/config/* ~/.config/nvim
