# NginX reverse proxy on Ubuntu 18.04

## Setup

* Launch new instance of Ubuntu 18.04
* Configure a security group to allow tcp:80 traffic
* Login to the new instance using ssh
* Clone the repository: `git clone https://github.com/vkhazin/revize-ubuntu-nginx-reverse-proxy.git`
* Run the setup: `cd ./revize-ubuntu-nginx-reverse-proxy && chmod +x ./setup.sh && ./setup.sh`
* Navigate to the public ip using a web browser, e.g.: http://1.1.1.1
