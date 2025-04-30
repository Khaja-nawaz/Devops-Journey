# Golden AMI Documentation: Apache Static Website

This repository contains documentation for creating a Golden AMI with Apache pre-configured to serve static websites.

## Base AMI

* **ID:** ami-ami-05c31bd0fb6c71cc9
* **Region:** us-east-1 

## Instance Configuration

* **Instance Type:** t2.micro
* **Operating System:** Amazon Linux 2
* **Installed Software:**
    * Apache HTTP Server 
* **Website Files Location:** `/var/www/html/`

## Steps to Create the AMI

1.  Launch an EC2 instance from the base AMI specified above.
2.  Connect to the instance via SSH.
3.  Install Apache: `sudo yum install -y httpd`
4.  Start Apache: `sudo systemctl start httpd`
5.  Enable Apache to start on boot: `sudo systemctl enable httpd`
6.  Copy your static website files (e.g., `index.html`, `css/`, `images/`) to `/var/www/html/`.
7.  Stop the EC2 instance.
8.  In the AWS Management Console, create an image (AMI) of the stopped instance.
    * Name: `static-website-apache-golden-ami`
    * Description: `Golden AMI with pre-configured Apache for static websites`
9. Wait for the AMI status to become "Available".

## How to Launch an Instance from this AMI

1.  In the EC2 Management Console, navigate to "AMIs".
2.  Select the AMI named `apache-static-website-golden-ami`.
3.  Click "Launch instance from AMI" and follow the wizard.

## Post-Launch Steps

* Update software packages: `sudo yum update -y`
* Verify that the Apache service is running: `sudo systemctl status httpd`
* Access your website using the instance's Public IP address or DNS name.
