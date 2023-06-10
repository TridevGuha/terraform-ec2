#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
echo "<html><h1>Hello, I am an apache2 server created with terraform</h1></html>" > /var/www/html/index.html
sudo systemctl restart apache2
