NLB with elastic ip
Lambda
ALB with standard shield and WAF
Server 

Total number of sites: ~200

Web Server ec2 -> $400/month for web pages traffic, images are elsewhere @ 	$0.09/gb

Last month: 2TB @ $200 for traffic

Option #1:
NLB->Lambda->ALB->EC2
ALB: $30
NLB: $30
Lambda Function with http end-point: $20
Outbound traffic: $200
EC2 (manages the certs) costs: $216
WAF: $10
Total cost: $506

Option #2:
Nginx (manages the certs): $8
Cloud Front: $175 traffic
EC2 costs: $37
Total cost: $220

Disaster recovery for option #1 & #2
Nginx fails or Cloud Front fails
assign elastic ip to the ec2 directly
increase size of the ec2 instance back to the original

Option #2:
Nginx pass-through we have tested
Nginx add support for Let's Encrypt
CloudFront configure distribution
IIS replace domain names with ports
How cloud front will tell IIS which site to serve?