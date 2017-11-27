#!/bin/bash

source ~/.dotfiles/scripts/confirm.sh

dpkg -l google-chrome-stable > /dev/null
if [ $? -eq 0 ]; then
    if confirm "Chrome already exists. Remove it"; then
        ./remove.sh 
    fi
fi

if [ $(uname -m) != "x86_64" ]; then 
    echo 'Error! Your system is not 64-bit';
    exit 1;
fi 

sudo apt-get update > /dev/null
sudo apt-get install -f > /dev/null
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

if [ $? -eq 0 ]; then 
    echo 'Google chrome installed, use `google-chrome` to run browser from terminal'
fi

