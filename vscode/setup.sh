#!/bin/bash

source ~/.dotfiles/scripts/os.sh

if is_linux; then 
    VSCODE_SETTINGS_DIR=""
    echo "Not implemented yet...";
fi    

if is_mac; then 
    VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
    brew install visual-studio-code
fi    

# Sync vscode settings
rm -f "$VSCODE_SETTINGS_DIR/settings.json" &> /dev/null
rm -f "$VSCODE_SETTINGS_DIR/keybindings.json" &> /dev/null
ln -s ~/.dotfiles/vscode/settings.json "$VSCODE_SETTINGS_DIR/settings.json"
ln -s ~/.dotfiles/vscode/keybindings.json "$VSCODE_SETTINGS_DIR/keybindings.json"

