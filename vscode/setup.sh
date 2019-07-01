#!/bin/bash

source ~/.dotfiles/scripts/os.sh

if is_linux; then 
    VSCODE_BIN_DIR=""
    VSCODE_SETTINGS_DIR=""
    echo "Not implemented yet...";
fi    

if is_mac; then 
    VSCODE_BIN_DIR="$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"
    VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
    brew install visual-studio-code
fi    

# Sync vscode settings
rm -f "$VSCODE_SETTINGS_DIR/settings.json" &> /dev/null
rm -f "$VSCODE_SETTINGS_DIR/keybindings.json" &> /dev/null
ln -s ~/.dotfiles/vscode/settings.json "$VSCODE_SETTINGS_DIR/settings.json"
ln -s ~/.dotfiles/vscode/keybindings.json "$VSCODE_SETTINGS_DIR/keybindings.json"

# Install vscode extensions
VSCODE_EXTENSIONS_FILE=~/.dotfiles/vscode/extensions.list
if [ -d "$VSCODE_BIN_DIR" ] && [[ -x "$VSCODE_BIN_DIR/code" ]] && [[ -f "$VSCODE_EXTENSIONS_FILE" ]]; then
    cd "$VSCODE_BIN_DIR"
    for ext in $(cat $VSCODE_EXTENSIONS_FILE); do
        code --install-extension "$ext"
    done    
    cd - &> /dev/null
fi

