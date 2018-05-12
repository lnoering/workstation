#!/bin/bash

#url test because nor have package to fedora 28 (get.docker.com)
curl -fsSL test.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker ${USER}

sudo systemctl enable docker

sudo systemctl start docker