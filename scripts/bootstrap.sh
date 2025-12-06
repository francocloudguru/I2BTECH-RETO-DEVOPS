#!/bin/bash
set -e

sudo apt update -y
sudo apt install -y docker.io ansible unzip curl
sudo usermod -aG docker ubuntu
