#!/bin/bash

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker
usermod -aG docker ec2-user

# to run this below command to execute the rawscript of docker installation
#( curl https://raw.githubusercontent.com/sid2417/docker-morrisons-bykithu/refs/heads/main/docker-installation.sh | sudo bash )

