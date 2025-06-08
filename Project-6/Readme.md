# ☁️ AWS Automated Web Server Deployment with Auto Scaling

A highly available **web server infrastructure** deployed on **AWS using Terraform**, featuring auto-scaling, load balancing, and secure networking across **multiple availability zones**.

---

## 🏗️ Architecture Overview

This project provisions a production-ready, resilient infrastructure with the following components:

- ✅ **VPC** with public subnets across multiple AZs  
- ✅ **Application Load Balancer (ALB)** to evenly distribute traffic  
- ✅ **Auto Scaling Group** (min 2, max 4 instances) for high availability  
- ✅ **Launch Template** for consistent EC2 instance configuration  
- ✅ **Security Groups** for secure and restricted access  
- ✅ **Health Checks** for self-healing architecture  

---

## 🚀 Features

| Feature           | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| ✅ High Availability | Multi-AZ setup ensures your app stays up even during AZ failures          |
| ✅ Auto Scaling      | Automatically scales EC2 instances (2–4) based on load                    |
| ✅ Load Balancing    | Uses ALB to distribute traffic across healthy instances                   |
| ✅ Health Monitoring | Replaces unhealthy instances automatically                                |
| ✅ Secure Networking | Follows AWS best practices using security groups and network isolation    |
| ✅ IaC with Terraform| Easily reproducible & manageable infrastructure using Terraform scripts    |

---

## 🛠️ Prerequisites

Before you begin, make sure you have:

- An **AWS Account** with appropriate IAM permissions
- **Terraform** installed (version `1.0+`)
- **AWS CLI** installed
- AWS credentials configured with:  
  ```bash
  aws configure
  ```
