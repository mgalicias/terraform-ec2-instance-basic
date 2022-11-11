#!/bin/bash

sudo yum update -y 
sudo yum install -y httpd
sudo systemctl enable --now httpd

sudo cat << EOF > /var/www/html/index.html 
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome page</title>
    </head>
    <body>
        <h1>CEO Marco Aurelio Galicia Salgado</h1>
    </body>
    </html>
EOF

sudo mkdir /var/www/html/app1
sudo cat << EOF > /var/www/html/app1/index.html 
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome page</title>
    </head>
    <body>
        <h1>You are the best</h1>
    </body>
    </html>
EOF
