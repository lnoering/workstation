#!/bin/bash

#url test because nor have package to fedora 28 (get.docker.com)
#curl -fsSL test.docker.com -o get-docker.sh
# sudo wget -O get-docker.sh get.docker.com

# sudo sh get-docker.sh

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf config-manager --set-enabled docker-ce-edge

sudo dnf install -y -q docker-ce

sudo usermod -aG docker ${USER}

sudo systemctl enable docker

sudo systemctl start docker