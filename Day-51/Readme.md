# ☁️ Terraform AWS EC2 Provisioning with Remote Backend

This project uses **Terraform** to provision an EC2 instance on **AWS**, with **remote state management** configured using **Amazon S3** and **DynamoDB** for locking.

---

## 📄 Terraform Files

### `main.tf`

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "nig" {
  instance_type = "t2.micro"
  ami           = "ami-0953476d60561c955"
}
```

# backend.tf
```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-remote-tn-dev-001"
    key            = "Remote-Backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
```

# 🔐 Remote Backend Setup
Before running Terraform, ensure the following are set up in AWS:

1.S3 Bucket:
- my-terraform-remote-tn-dev-001

  - Used to store terraform.tfstate securely

2.DynamoDB Table:
- terraform_lock

 - Must have a primary key LockID of type String

 - Used to handle state locking and prevent concurrent runs

## 📁 File Structure
```
.
├── main.tf         # EC2 instance configuration
├── backend.tf      # Remote backend config (S3 + DynamoDB)
```

## ✅ Output
- Launches a t2.micro EC2 instance in the us-east-1 region

- Terraform state is stored securely in S3

- DynamoDB ensures state file locking during changes

