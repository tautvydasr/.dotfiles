#!/bin/bash

source ~/.dotfiles/scripts/confirm.sh

# Setup java
IS_JAVA_INSTALLED=false
java -version &> /dev/null
if [ $? -eq 0 ]; then
    IS_JAVA_INSTALLED=true    
fi

if [ $IS_JAVA_INSTALLED = false ] || confirm "Java already installed. Re-install"; then
    if [ $IS_JAVA_INSTALLED = true ]; then
        sudo apt-get remove -y oracle-java9-installer
        sudo apt-get purge -y oracle-java9-installer
        sudo apt-get autoremove
    fi
    sudo add-apt-repository -y ppa:webupd8team/java > /dev/null
    sudo apt-get update > /dev/null
    sudo apt-get install -y oracle-java9-installer 
fi

# Setup android studio
sudo apt-add-repository -y ppa:maarten-fonville/android-studio > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y android-studio

