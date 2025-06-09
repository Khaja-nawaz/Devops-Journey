
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
#Creating VPC
resource "aws_vpc" "MY_VPC" {
  cidr_block           = var.aws_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "MyNormalVpc"
  }

}
#Creating Subnets
resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.MY_VPC.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-1"
  }

}

resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.MY_VPC.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-2"
  }

}

# #Creating Instance Type
# resource "aws_instance" "EC2" {
#   instance_type = "t2.micro"
#   ami           = "ami-02457590d33d576c3"
# }

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.MY_VPC.id

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "route" {
  vpc_id = aws_vpc.MY_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}

resource "aws_route_table_association" "public-1" {
  subnet_id      = aws_subnet.public-1.id
  route_table_id = aws_route_table.route.id
}

resource "aws_route_table_association" "public-2" {
  subnet_id      = aws_subnet.public-2.id
  route_table_id = aws_route_table.route.id
}


#aws_launch_template


resource "aws_launch_template" "web_server_template" {
  name_prefix            = "web-server"
  image_id               = "ami-02457590d33d576c3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web-server.id]

  user_data = base64encode(<<-EOF
  #!/bin/bash
  yum update -y
  yum install -y httpd
  systemctl start httpd
  systemctl enable httpd
  echo "<h1>Hello from $(hostname -f)</h1>" > /var/www/html/index.html
EOF
  )

  tags = {
    Name = "web-server-template"
  }
}
