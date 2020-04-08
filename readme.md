# NginX reverse proxy on Ubuntu 18.04

## Objectives

* Implement multi-layer protection for nearly static websites hosted on Windows IIS Server
* An Elastic IP to affix DNS entries with A-Record
* Nginx to reverse proxy between destinations based on the domain name
* ALB + WAF to provide load balancing and DDoS protection to IIS web-servers
* IIS web-servers to provide familiar administrative environment for hosting

## Setup

* Configure a security group to allow tcp:80 and tcp:443 traffic to associate with the ALB/NLB/EC2
* Obtain certificates for the websites requiring https traffic using Aws Certificate manager or an external provider
* Launch 2 Windows Servers, install IIS and configure desired websites using http binding with domain names on each server
* Launch a new ALB per web server to configure http and https traffic
* Take a note of ALB DNS and update `./tcp-proxy.conf` and `./tcp-proxy.conf` files to reference the DNS
* Allocate an Elastic IP
* Launch a new instance of Ubuntu 18.04 on a public subnet and assign the Elastic IP allocated to the instance
* Log-in into the newly launched instance using ssh
* Clone the repository: `git clone https://github.com/vkhazin/revize-ubuntu-nginx-reverse-proxy.git`
* Update `./tcp-proxy.conf` and `./tcp-proxy.conf`
* Run the setup: `cd ./revize-ubuntu-nginx-reverse-proxy && chmod +x ./setup.sh && ./setup.sh`
* Update DNS records for the hosted domains to point to the Elastic IP

## References

* https://serversforhackers.com/c/tcp-load-balancing-with-nginx-ssl-pass-thru