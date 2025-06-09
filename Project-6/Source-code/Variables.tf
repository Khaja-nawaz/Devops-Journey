variable "project_name" {
  type    = string
  default = "my-awesome-project"
}


variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_vpc" {
  description = "aws_vpc_cidr_block"
  type        = string
  default     = "10.0.0.0/23"

}

