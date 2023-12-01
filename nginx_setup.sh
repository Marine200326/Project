

apt-get update && apt-get upgrade 
apt-get install -y nginx  
systemctl enable nginx
tee /etc/nginx/sites-available/load_balancer <<EOF
upstream backend {
    server 192.168.56.105:8080;
    server 192.168.56.105:8081;
}

server {
    listen 80;
    server_name localhost;

    location / {
        proxy_pass http://backend;
    }
}
EOF


ln -s /etc/nginx/sites-available/load_balancer /etc/nginx/sites-enabled

systemctl restart nginx
