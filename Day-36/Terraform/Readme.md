# 🌍 Terraform - Providers, Multiple Regions & Variables

This README documents today's learnings in Terraform, including how providers work, setting up multiple providers for multi-region deployments, and working with variables using `.tfvars` files.

---

## 🧩 1. What are Providers?

Providers are plugins in Terraform that allow interaction with various APIs (AWS, Azure, GCP, etc.). They define the cloud or platform Terraform will manage.

### Example:
```hcl
provider "aws" {
  region = "us-east-1"
}

