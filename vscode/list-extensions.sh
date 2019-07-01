#!/bin/bash

source ~/.dotfiles/scripts/os.sh

if is_linux; then
    VSCODE_BIN_DIR=""
    echo "Not implemented yet...";
fi

if is_mac; then
    VSCODE_BIN_DIR="$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"
fi

cd "$VSCODE_BIN_DIR"
code --list-extensions > ~/.dotfiles/vscode/extensions.list
cd - &> /dev/null

