# 🌍 Terraform Basics - Getting Started Guide

This README captures the key Terraform concepts and commands I learned today, along with a sample project to provision an AWS EC2 instance using Terraform.

---

# For Windows:

### Download from Terraform Downloads

### Unzip and add it to system PATH.

## To Verify:

```bash
terraform -version
```

#Why Terraform is Best

##  API as Code via HCL

Terraform uses HCL (HashiCorp Configuration Language) to define infrastructure as code. It allows developers to declare cloud resources (like EC2, S3, VPC, etc.) in a readable and structured format.

- 🧠 Terraform translates HCL into actual API calls to the cloud provider to provision the specified resources.


# 🛠️ Terraform CLI Workflow
```bash
terraform init
```

- Initializes the Terraform configuration directory.
- Downloads provider plugins.

```bash
terraform plan
```
- Shows what Terraform intends to do without making changes.
- Good for review before applying.

```bash
  terraform apply
```
- Executes the actual provisioning of infrastructure.

```bash
terraform destroy
```
- Tears down the resources defined in your Terraform configuration.

Small Code Sample I Have Done
```h

provider "aws" {
  region = "us-east-1" # Region selection
}

resource "aws_instance" "web_server" {
  ami           = "ami-0953476d60561c955" # AMI ID for Amazon Linux
  instance_type = "t2.micro"              # Free-tier instance type
}
```
