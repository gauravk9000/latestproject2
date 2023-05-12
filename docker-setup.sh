#!/bin/bash

# Update the package index
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y

# Start Docker and enable it to start at boot
sudo systemctl start docker
sudo systemctl enable docker

# Add the default user to the docker group
sudo usermod -aG docker ec2-user