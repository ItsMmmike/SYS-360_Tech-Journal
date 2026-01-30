#!/bin/bash
# Script used to setup basic nginx web server

# Update Packages and install nginx
sudo apt update
sudo apt install nginx -y
sudo apt install vim -y

# Download Nginx Config Files
sudo wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/ItsMmmike/SYS-360_Tech-Journal/refs/heads/main/week2/nginx.conf"
sudo wget -O /var/www/html/index.html "https://raw.githubusercontent.com/ItsMmmike/SYS-360_Tech-Journal/refs/heads/main/week2/index.html"
sudo wget -O /var/www/html/cool-image.png "https://raw.githubusercontent.com/ItsMmmike/SYS-360_Tech-Journal/refs/heads/main/week2/cool-image.png"

# Enable and Start server
sudo systemctl enable nginx
sudo systemctl restart nginx
