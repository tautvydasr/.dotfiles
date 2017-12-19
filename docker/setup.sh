#!/bin/bash

# Install script
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh && rm get-docker.sh

# Add current user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# Setup docker-compose
sudo apt-get install -y docker-compose

echo "Logout and run verify.sh script to test out docker and docker-compose installations"

