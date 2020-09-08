#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>Hello World! This is a basic web server at AWS EC2</h1></html>" > index.html
aws s3 mb s3://randombucket3631421356
aws s3 cp index.html s3://randombucket3631421356