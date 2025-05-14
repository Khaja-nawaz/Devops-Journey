# Today's AWS Projects

This document outlines the two AWS projects I worked on today:

1.  **EC2 Web Server Deployment via AWS CLI**
2.  **S3 Backup Automation Script**

## 1. EC2 Web Server Deployment via AWS CLI

**Description:**

This project involved deploying a web server on an Amazon Elastic Compute Cloud (EC2) instance entirely through the AWS Command Line Interface (CLI). This approach emphasizes automation and infrastructure-as-code principles, allowing for repeatable and efficient server deployments.

**Key Actions Performed:**

* Launched a new EC2 instance using the `aws ec2 run-instances` command.
* Configured essential instance parameters such as the Amazon Machine Image (AMI), instance type, security group, and key pair.
* Used `aws ec2 associate-address` to assign an Elastic IP address to the instance.
* Potentially used `aws ec2 create-security-group` and `aws ec2 authorize-security-group-ingress` to define firewall rules allowing HTTP/HTTPS traffic.
* deployed  and configured the Apache web server 
* Hosted A static website on it 

**Outcome:**

A fully functional web server deployed on an EC2 instance, managed and provisioned via the AWS CLI.

## 2. S3 Backup Automation Script

**Description:**

This project focused on creating a script to automate the backup of data to Amazon Simple Storage Service (S3). Automation ensures regular backups, reduces manual effort, and improves data durability and availability.

**Key Actions Performed:**

* Developed a script (likely in Python using the `boto3` library or using the AWS CLI directly within a shell script).
* Configured the script to specify the source data location (e.g., local directories, databases).
* Defined the target S3 bucket and optional prefixes for organizing backups.
* Implemented logic to copy files to the S3 bucket using commands like `aws s3 cp` or `s3.upload_file()` in `boto3`.
* Potentially included features like:
    * Scheduling the script to run automatically using Task Schedule.
    * Implementing versioning to keep a history of backups.
    * Adding logging for monitoring backup operations.


**Outcome:**

An automated script that efficiently backs up specified data to an S3 bucket, enhancing data protection and simplifying the backup process.


