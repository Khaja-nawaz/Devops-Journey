AWS Automated Web Server Deployment with Auto Scaling
A highly available web server infrastructure deployed on AWS using Terraform, featuring auto-scaling, load balancing, and secure networking across multiple availability zones.
🏗️ Architecture Overview
This project creates a robust, production-ready web server infrastructure with the following components:

VPC with public subnets across multiple AZs
Application Load Balancer for traffic distribution
Auto Scaling Group (2-4 instances) for high availability
Security Groups for network security
Launch Template for consistent EC2 configuration

🚀 Features

✅ High Availability: Multi-AZ deployment with automatic failover
✅ Auto Scaling: Automatically scales between 2-4 instances based on demand
✅ Load Balancing: Distributes traffic evenly across healthy instances
✅ Health Monitoring: Automatic health checks and instance replacement
✅ Secure Networking: Proper security groups and network isolation
✅ Infrastructure as Code: Fully automated deployment with Terraform

🛠️ Prerequisites
Before deploying this infrastructure, ensure you have:

AWS Account with appropriate permissions
Terraform installed (v1.0+)
AWS CLI installed and configured
AWS credentials configured (aws configure)

📁 Project Structure
aws-web-server-project/
├── main.tf              # Main Terraform configuration
├── variables.tf         # Variable definitions
├── outputs.tf           # Output definitions
├── terraform.tfvars     # Variable values
└── README.md           # This file
