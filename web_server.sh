apt-get update && apt-get upgrade  # "apt-get update" updates the package index files, whereas "apt-get upgrade" upgrades the actual packages installed on your system
apt-get install -y apache2  
systemctl enable apache2 
rm -rf /var/www/html/*  # remove directories and their contents recursively
touch /var/www/html/index.html # updates the dates related to the directory or file



# echo '<h1>Hello World</h1>' > /var/www/html/index.html

#
#<html> 
# <head> 
#
# </head>
# <body>
#
#   <h1>Hello world!</h1>
#
# </body>
# </html>
#