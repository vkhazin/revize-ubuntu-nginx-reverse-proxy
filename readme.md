# NginX reverse proxy on Ubuntu 18.04

## Setup

* Launch a new instance of Ubuntu 18.04 on a public subnet
* Configure a security group to allow tcp:80 and tcp:443 traffic
* Login to the newly launched instance using ssh
* Clone the repository: `git clone https://github.com/vkhazin/revize-ubuntu-nginx-reverse-proxy.git`
* Run the setup: `cd ./revize-ubuntu-nginx-reverse-proxy && chmod +x ./setup.sh && ./setup.sh`
* Navigate to the url listed at the end of the script using a web browser, e.g.: http://1.1.1.1

## References

* https://serversforhackers.com/c/tcp-load-balancing-with-nginx-ssl-pass-thru


## Cache & Protect Setup

* 18.190.62.196 origin web server
* revize.icssolutions.ca & default web sites
* CloudFront: revize.icssolutions.ca CName to CloudFront Dns
* CloudFront to origin-revize.icssolutions.ca