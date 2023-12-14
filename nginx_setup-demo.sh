#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install git -y
apt-get install nginx -y
systemctl enable nginx
git clone https://github.com/Stake-And-Rope/vfs_website.git
cp vfs_website /var/www/project -R
touch /etc/nginx/sites-enabled/project
# echo 'server {
#        listen 81;
#        listen [::]:81;

#        server_name exercise1.example.com;

#        root /var/www/project;
#        index index.html;

#        location / {
#                try_files $uri $uri/ =404;
#        }
# }' > /etc/nginx/sites-enabled/project
cp /vagrant/nginx-config.conf /etc/nginx/sites-enabled/project
systemctl reload nginx
/etc/nginx/sites-enabled/project