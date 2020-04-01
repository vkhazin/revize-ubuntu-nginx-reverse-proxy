# NLB -> ALB -> EC2 Setup

## Here is how AWS solution works and it is a hack!

* NLB points to a list of ip's
* The list of ip's are non static ALB ip's
* CloudWatch monitors changes of ip's for the ALB
* Lambda function is triggered by the CloudWatch
* Lambda function updates the NLB settings to point to the modified ALB ip's

## When everything runs:

* NLB sends traffic to an ip address associated with ALB
* ALB sends traffic to EC2 instance(s)
* Lambda does nothing

## When there is a change in ALB ip's

* CloudWatch triggers Lambda function
* Lambda function updates the NLB configuration with list of ALB ip's

## More elegant solutions

### Global Accelerator

* Since we need to update client dns settings with a new ip anyway
* Create a new Accelerator with a static ip
* Modify dns settings to point to the newly created static ip
* Point Accelerator to ALB (basic shield, advanced shield, and WAF)
* Point ALB to EC2

### Pros

* No hacks and no external components

### Cons

* No CloudFront
* Web Server is a single point of failure

### NginX in-between

* NLB points to an availability group with Nginx reverse proxies
* Nginx points to CloudFront
* CloudFront points to EC2 instance with a single web site

### Pros

* CloudFront takes the hit
* EC2 instance for the Web Server can be reduced in size
* No single point of failure for a cached content

### Cons

* Nginx to maintain
* Additional EC2 instance to run
