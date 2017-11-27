#!/bin/bash

source ~/.dotfiles/scripts/confirm.sh

# Setup zsh
if [[ $SHELL != *"zsh"* ]]; then
    sudo apt-get install -y zsh
    chsh -s $(which zsh)
fi

# Setup oh-my-zsh framework
OH_MY_ZSH_PATH=~/.oh-my-zsh
if [[ -d "$OH_MY_ZSH_PATH" ]]; then
    if confirm "Oh My Zsh is already installed. Remove it"; then 
        rm -rf ~/.oh-my-zsh > /dev/null
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    fi
fi

# Setup powerline fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Setup solarized theme
sudo apt-get install -y dconf-cli
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh

# Sym-link .zshrc file
rm ~/.zshrc &> /dev/null
rm ~/.zshrc.pre-oh-my-zsh &> /dev/null
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
