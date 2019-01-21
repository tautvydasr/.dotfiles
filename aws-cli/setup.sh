#!/bin/bash

pip --version &> /dev/null
if [ $? -ne 0 ]; then
    echo "PIP is not installed, check ~/.dotfiles/pip/setup.sh and try again";
    exit 127;
fi

sudo pip install awscli &> /dev/null

if [ ! -f "~/.aws/credentials" ]; then
    mkdir -p ~/.aws && cp ~/.dotfiles/aws-cli/credentials.example ~/.aws/credentials
    echo "Created AWS credentials ~/.aws/credentials file";
fi    

