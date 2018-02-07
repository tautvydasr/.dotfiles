#!/bin/bash

# Install or update git
sudo apt-get install -y git

# Global settings
git config --global user.name "Tautvydas Rasimavicius"
git config --global user.email "tautvydas.rasimavicius@gmail.com"

git config --global core.editor vim
git config --global core.excludesfile ~/.dotfiles/git/.gitignore
git config --global push.default tracking
git config --global pull.rebase true
git config --global color.ui true
git config --global commit.gpgsign true

