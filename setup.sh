set -e
cd ./revize-ubuntu-nginx-reverse-proxy
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo unlink /etc/nginx/sites-enabled/default
sudo cat ./google.conf | sudo tee /etc/nginx/sites-available/google-reverse-proxy.conf
sudo ln -s /etc/nginx/sites-available/google-reverse-proxy.conf /etc/nginx/sites-enabled/google-reverse-proxy.conf
sudo systemctl reload nginx
