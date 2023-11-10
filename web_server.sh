apt-get update && apt-get upgrade  
apt-get install -y apache2  
systemctl enable apache2 
rm -rf /var/www/html/* 
touch /var/www/html/index.html



# echo '<h1>Hello World</h1>' > /var/www/html/index.html

#
#<html> 
# <head> 
# </head>
# <body>
#
#   <h1>Hello world!</h1>
#
# </body>
# </html>
#