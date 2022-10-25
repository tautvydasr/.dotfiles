#!/bin/bash

source ~/.dotfiles/scripts/os.sh

if is_linux; then 
    sudo snap install --classic code
fi    

if is_mac; then 
    brew install visual-studio-code
fi    
