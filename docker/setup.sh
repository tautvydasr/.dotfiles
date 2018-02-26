#!/bin/bash

# Install script
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh && rm get-docker.sh

# Add current user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# Setup docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

echo "Logout and run verify.sh script to test out docker and docker-compose installations"

