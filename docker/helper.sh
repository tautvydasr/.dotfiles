#!/bin/bash

git clone https://github.com/DATA-DOG/dockerfiles.git ~/.datadog-dockerfiles

echo "Add to .zshrc file"
echo "export PATH=\$PATH:~/.datadog-dockerfiles/bin"

