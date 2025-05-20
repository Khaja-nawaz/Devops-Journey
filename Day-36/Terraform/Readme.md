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
```
# 🌐 2. Multiple Providers (Multi-Region Infrastructure)

To deploy infrastructure in multiple regions, we can define multiple provider blocks using aliases.
```hcl 
provider "aws" {
  alias  = "us_east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_west"
  region = "us-west-1"
}

resource "aws_instance" "east_server" {
  provider      = aws.us_east
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

resource "aws_instance" "west_server" {
  provider      = aws.us_west
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```
