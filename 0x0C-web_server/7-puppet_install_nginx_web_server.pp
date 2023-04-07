# configure my server with puppet
exect {"Configuring server":
  provider => shell,
  command  => 'sudo apt-get -y update; sudo apt-get -y install nginx; sudo sed -i s/listen\s*80;/listen 80 default_server;/g /etc/nginx/sites-available/default echo "Hello World!" > /var/www/html/index.html; sudo sed -i "/server_name _;/a location /redirect_me {\\n\\treturn 301 https://google.com; listen 80; \\n\\t}\\n" /etc/nginx/sites-available/default; sudo service nginx restart'
