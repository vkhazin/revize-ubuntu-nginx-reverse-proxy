# NginX reverse proxy on Ubuntu 18.04

## Setup

* Launch new instance of Ubuntu 18.04
* Clone this repository: `git clone https://github.com/vkhazin/revize-ubuntu-nginx-reverse-proxy.git`
* Navigate to the repo directory: `cd ./revize-ubuntu-nginx-reverse-proxy`
* Install nginx: `sudo apt-get update && sudo apt-get install nginx -y`
* Enable nginx service: `sudo systemctl enable nginx`
* Disable the default virtual host: `sudo unlink /etc/nginx/sites-enabled/default`
* Create reverse proxy configuration: `sudo cat ./google.conf | sudo tee /etc/nginx/sites-available/google-reverse-proxy.conf`
* Link the created configuration: 
`sudo ln -s /etc/nginx/sites-available/google-reverse-proxy.conf /etc/nginx/sites-enabled/google-reverse-proxy.conf`
* Reload service: `sudo systemctl reload nginx`
