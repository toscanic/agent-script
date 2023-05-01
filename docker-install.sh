#!/bin/bash
#AUTHOR: TOSCANIC
#DATE: MAY 2023

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the docker group to avoid having to use "sudo" with every Docker command
sudo usermod -aG docker $USER

# Verify the version of Docker installed
docker --version
