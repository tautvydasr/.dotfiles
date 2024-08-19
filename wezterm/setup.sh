#!/bin/bash

rm -rf ~/.config/wezterm &>/dev/null
mkdir -p ~/.config/wezterm
ln -s ~/.dotfiles/wezterm/config/* ~/.config/wezterm
