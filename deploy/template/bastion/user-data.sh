#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install -y docker
sudo systemctl enable dcker.service
sudo systemctl start service.docker
sudo usermod -aG docker ec2-user