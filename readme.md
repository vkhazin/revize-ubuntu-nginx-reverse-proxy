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

* 18.190.62.196 origin web server: origin-revize.icssolutions.ca
* Origin Web Server Sites: revize.icssolutions.ca & default
* CloudFront: deqr9qb8zz3i7.cloudfront.net
* 3.14.17.219 nginx reverse proxy: revize.icssolutions.ca

## Static hosting

* Problem: domain name can be A host only for the root and for `www`