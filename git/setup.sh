#!/bin/bash

# Install or update git
sudo apt-get install -y git

# Global settings
git config --global user.name "Tautvydas Rasimavicius"
git config --global user.email "tautvydas.rasimavicius@gmail.com"

git config --global core.editor nvim
git config --global core.excludesfile ~/.dotfiles/git/.gitignore
git config --global push.default tracking
git config --global pull.rebase true
git config --global color.ui true
git config --global gpg.program gpg
git config --global commit.gpgsign true
git config --global pager.branch false
git config --global pager.config false
git config --global init.defaultBranch main
