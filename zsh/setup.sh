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
        curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    fi
fi

# Setup spaceship prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Sym-link .zshrc file
rm ~/.zshrc &> /dev/null
rm ~/.zshrc.pre-oh-my-zsh &> /dev/null
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
