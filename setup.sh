set -e
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo unlink /etc/nginx/sites-enabled/default | true
sudo mkdir -p /etc/nginx/tcpconf.d/
sudo cp ./revize-tcp.conf /etc/nginx/tcpconf.d/revize.conf
echo "# Passthrough tcp proxy" | sudo tee -a /etc/nginx/nginx.conf
echo "include /etc/nginx/tcpconf.d/*;" | sudo tee -a /etc/nginx/nginx.conf
sudo systemctl reload nginx
sudo cat /etc/nginx/sites-enabled/revize.conf
echo "Open your browser to https://$(curl -s http://ipinfo.io/ip)"
