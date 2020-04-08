set -e

# Install nginx
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx

# Configure http proxy
sudo rm /etc/nginx/sites-enabled/default | true
sudo cp ./http-proxy.conf /etc/nginx/sites-available/http-proxy.conf
sudo ln -s /etc/nginx/sites-available/http-proxy.conf /etc/nginx/sites-enabled/http-proxy.conf

# Configure tcp proxy
sudo mkdir -p /etc/nginx/tcpconf.d/
sudo cp ./tcp-proxy.conf /etc/nginx/tcpconf.d/tcp-proxy.conf
echo "# Tcp proxy for https support" | sudo tee -a /etc/nginx/nginx.conf
echo "include /etc/nginx/tcpconf.d/*;" | sudo tee -a /etc/nginx/nginx.conf

# Reload nginx configuration
sudo systemctl reload nginx
echo "Open your browser to https://$(curl -s http://ipinfo.io/ip)"
