#!/bin/bash

# Prereqs and docker
sudo apt-get update &&
    sudo apt-get install -yqq \
        curl \
        git \
        apt-transport-https \
        ca-certificates \
        gnupg-agent \
        software-properties-common

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo chmod +x get-docker.sh
sudo sh get-docker.sh

# docker-compose
sudo curl -L --fail https://gist.githubusercontent.com/bikramtuladhar/53ee33767c192d1aa280ef5aff7f3e69/raw/3e01ed997c6fec89a09e4018b3748f59b1213a0f/docker-compose -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# wirehole
git clone https://github.com/bikramtuladhar/wirehole.git &&
    cd wirehole &&
    sudo docker-compose up
