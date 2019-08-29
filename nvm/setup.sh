#!/bin/bash

cd $HOME
git clone https://github.com/nvm-sh/nvm.git .nvm
cd "$HOME/.nvm"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
sh ./nvm.sh

npm install -g avn avn-nvm
avn setup

