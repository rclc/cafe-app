#!/bin/bash
sudo dnf update -y
sudo dnf install -y httpd php
sudo systemctl start httpd
sudo systemctl enable httpd
sudo service httpd status
php --version
sudo dnf install -y mariadb105-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mariadb --version
sudo service mariadb status
#install the PHP MySQL extension
sudo dnf install php-mysqlnd -y
sudo systemctl restart httpd
#create index.html for testing
sudo chown ec2-user:ec2-user /var/www/html
echo '<html>Hello from the cafe web server!</html>' > /var/www/html/index.html
