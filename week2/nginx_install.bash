#!/bin/bash
# Script used to setup basic nginx web server

# Update Packages and install nginx
sudo yum update
sudo yum install nginx -y
sudo yum install vim -y

# Download Nginx Config Files
sudo wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/ItsMmmike/SEC-350/refs/heads/main/Week7/nginx01/nginx.conf"
sudo wget -O /var/www/html/index.html "https://raw.githubusercontent.com/ItsMmmike/SEC-350/refs/heads/main/Week7/nginx01/index.html"
sudo wget -O /var/www/html/cool-image.png "https://raw.githubusercontent.com/ItsMmmike/SEC-350/refs/heads/main/Week7/nginx01/cool-image.png"

# Enable and Start server
sudo systemctl enable nginx
sudo systemctl restart nginx
