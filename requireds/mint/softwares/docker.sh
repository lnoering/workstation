#!/bin/bash

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#caso nao encontre, verificar se existe para o code name ($(lsb_release -cs))
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce


#  curl -fsSL https://get.docker.com -o get-docker.sh
# $ sudo sh get-docker.sh
