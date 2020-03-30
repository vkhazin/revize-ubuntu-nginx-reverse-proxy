set -e
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo unlink /etc/nginx/sites-enabled/default
sudo cp ./google.conf /etc/nginx/sites-available/revize.conf
sudo ln -s /etc/nginx/sites-available/revize.conf /etc/nginx/sites-enabled/revize.conf
sudo systemctl reload nginx
sduo cat /etc/nginx/sites-enabled/revize.conf
echo "Open your browser to http://$(curl -s http://ipinfo.io/ip)"
